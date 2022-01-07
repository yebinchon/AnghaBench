
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {unsigned int* i_gc_failures; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 size_t GC_FAILURE_PIN ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;

__attribute__((used)) static inline void f2fs_i_gc_failures_write(struct inode *inode,
     unsigned int count)
{
 F2FS_I(inode)->i_gc_failures[GC_FAILURE_PIN] = count;
 f2fs_mark_inode_dirty_sync(inode, 1);
}
