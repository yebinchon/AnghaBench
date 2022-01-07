
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* HFSPLUS_I (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int set_bit (unsigned int,int *) ;

__attribute__((used)) static inline void hfsplus_mark_inode_dirty(struct inode *inode,
  unsigned int flag)
{
 set_bit(flag, &HFSPLUS_I(inode)->flags);
 mark_inode_dirty(inode);
}
