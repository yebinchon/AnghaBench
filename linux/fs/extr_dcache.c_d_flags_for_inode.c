
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_opflags; int i_mode; TYPE_1__* i_op; } ;
struct TYPE_2__ {int get_link; int lookup; } ;


 unsigned int DCACHE_AUTODIR_TYPE ;
 unsigned int DCACHE_DIRECTORY_TYPE ;
 int DCACHE_MISS_TYPE ;
 unsigned int DCACHE_NEED_AUTOMOUNT ;
 unsigned int DCACHE_REGULAR_TYPE ;
 unsigned int DCACHE_SPECIAL_TYPE ;
 unsigned int DCACHE_SYMLINK_TYPE ;
 int IOP_LOOKUP ;
 int IOP_NOFOLLOW ;
 int IS_AUTOMOUNT (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned d_flags_for_inode(struct inode *inode)
{
 unsigned add_flags = DCACHE_REGULAR_TYPE;

 if (!inode)
  return DCACHE_MISS_TYPE;

 if (S_ISDIR(inode->i_mode)) {
  add_flags = DCACHE_DIRECTORY_TYPE;
  if (unlikely(!(inode->i_opflags & IOP_LOOKUP))) {
   if (unlikely(!inode->i_op->lookup))
    add_flags = DCACHE_AUTODIR_TYPE;
   else
    inode->i_opflags |= IOP_LOOKUP;
  }
  goto type_determined;
 }

 if (unlikely(!(inode->i_opflags & IOP_NOFOLLOW))) {
  if (unlikely(inode->i_op->get_link)) {
   add_flags = DCACHE_SYMLINK_TYPE;
   goto type_determined;
  }
  inode->i_opflags |= IOP_NOFOLLOW;
 }

 if (unlikely(!S_ISREG(inode->i_mode)))
  add_flags = DCACHE_SPECIAL_TYPE;

type_determined:
 if (unlikely(IS_AUTOMOUNT(inode)))
  add_flags |= DCACHE_NEED_AUTOMOUNT;
 return add_flags;
}
