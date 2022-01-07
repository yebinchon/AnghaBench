
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_size; TYPE_1__* i_sb; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ s_maxbytes; } ;


 int EFBIG ;
 int ETXTBSY ;
 scalar_t__ IS_SWAPFILE (struct inode const*) ;
 int RLIMIT_FSIZE ;
 unsigned long RLIM_INFINITY ;
 int SIGXFSZ ;
 int current ;
 unsigned long rlimit (int ) ;
 int send_sig (int ,int ,int ) ;

int inode_newsize_ok(const struct inode *inode, loff_t offset)
{
 if (inode->i_size < offset) {
  unsigned long limit;

  limit = rlimit(RLIMIT_FSIZE);
  if (limit != RLIM_INFINITY && offset > limit)
   goto out_sig;
  if (offset > inode->i_sb->s_maxbytes)
   goto out_big;
 } else {





  if (IS_SWAPFILE(inode))
   return -ETXTBSY;
 }

 return 0;
out_sig:
 send_sig(SIGXFSZ, current, 0);
out_big:
 return -EFBIG;
}
