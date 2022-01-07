
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int i_state; } ;


 TYPE_1__* NILFS_I (struct inode*) ;
 int NILFS_I_DIRTY ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline void nilfs_mdt_mark_dirty(struct inode *inode)
{
 if (!test_bit(NILFS_I_DIRTY, &NILFS_I(inode)->i_state))
  set_bit(NILFS_I_DIRTY, &NILFS_I(inode)->i_state);
}
