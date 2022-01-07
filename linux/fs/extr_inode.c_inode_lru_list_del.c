
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_lru; TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_inode_lru; } ;


 scalar_t__ list_lru_del (int *,int *) ;
 int nr_unused ;
 int this_cpu_dec (int ) ;

__attribute__((used)) static void inode_lru_list_del(struct inode *inode)
{

 if (list_lru_del(&inode->i_sb->s_inode_lru, &inode->i_lru))
  this_cpu_dec(nr_unused);
}
