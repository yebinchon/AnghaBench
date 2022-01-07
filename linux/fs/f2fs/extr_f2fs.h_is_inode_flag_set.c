
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 int test_bit (int,int *) ;

__attribute__((used)) static inline int is_inode_flag_set(struct inode *inode, int flag)
{
 return test_bit(flag, &F2FS_I(inode)->flags);
}
