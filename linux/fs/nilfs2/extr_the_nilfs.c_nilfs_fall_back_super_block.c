
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ** ns_sbp; int ** ns_sbh; } ;


 int brelse (int *) ;

void nilfs_fall_back_super_block(struct the_nilfs *nilfs)
{
 brelse(nilfs->ns_sbh[0]);
 nilfs->ns_sbh[0] = nilfs->ns_sbh[1];
 nilfs->ns_sbp[0] = nilfs->ns_sbp[1];
 nilfs->ns_sbh[1] = ((void*)0);
 nilfs->ns_sbp[1] = ((void*)0);
}
