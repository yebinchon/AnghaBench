
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int EAGAIN ;
 int ENOSPC ;
 int MAX_MKSPC_RETRIES ;
 int NR_TO_WRITE ;
 int dbg_budg (char*,...) ;
 long long get_liability (struct ubifs_info*) ;
 int run_gc (struct ubifs_info*) ;
 int shrink_liability (struct ubifs_info*,int ) ;
 int ubifs_run_commit (struct ubifs_info*) ;

__attribute__((used)) static int make_free_space(struct ubifs_info *c)
{
 int err, retries = 0;
 long long liab1, liab2;

 do {
  liab1 = get_liability(c);




  dbg_budg("liability %lld, run write-back", liab1);
  shrink_liability(c, NR_TO_WRITE);

  liab2 = get_liability(c);
  if (liab2 < liab1)
   return -EAGAIN;

  dbg_budg("new liability %lld (not shrunk)", liab2);


  dbg_budg("Run GC");
  err = run_gc(c);
  if (!err)
   return -EAGAIN;

  if (err != -EAGAIN && err != -ENOSPC)

   return err;

  dbg_budg("Run commit (retries %d)", retries);
  err = ubifs_run_commit(c);
  if (err)
   return err;
 } while (retries++ < MAX_MKSPC_RETRIES);

 return -ENOSPC;
}
