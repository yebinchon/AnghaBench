
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int EINVAL ;
 int add_size ;
 int dbg_is_chk_index (struct ubifs_info*) ;
 int dbg_walk_index (struct ubifs_info*,int *,int ,long long*) ;
 int dump_stack () ;
 int ubifs_err (struct ubifs_info*,char*,long long,...) ;

int dbg_check_idx_size(struct ubifs_info *c, long long idx_size)
{
 int err;
 long long calc = 0;

 if (!dbg_is_chk_index(c))
  return 0;

 err = dbg_walk_index(c, ((void*)0), add_size, &calc);
 if (err) {
  ubifs_err(c, "error %d while walking the index", err);
  return err;
 }

 if (calc != idx_size) {
  ubifs_err(c, "index size check failed: calculated size is %lld, should be %lld",
     calc, idx_size);
  dump_stack();
  return -EINVAL;
 }

 return 0;
}
