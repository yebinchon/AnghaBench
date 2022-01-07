
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_state; int i_lru; TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_inode_lru; } ;


 int I_REFERENCED ;
 scalar_t__ list_lru_add (int *,int *) ;
 int nr_unused ;
 int this_cpu_inc (int ) ;

__attribute__((used)) static void inode_lru_list_add(struct inode *inode)
{
 if (list_lru_add(&inode->i_sb->s_inode_lru, &inode->i_lru))
  this_cpu_inc(nr_unused);
 else
  inode->i_state |= I_REFERENCED;
}
