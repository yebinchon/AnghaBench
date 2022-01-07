
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_da_state_t ;


 int kmem_zone_free (int ,int *) ;
 int memset (char*,int ,int) ;
 int xfs_da_state_kill_altpath (int *) ;
 int xfs_da_state_zone ;

void
xfs_da_state_free(xfs_da_state_t *state)
{
 xfs_da_state_kill_altpath(state);



 kmem_zone_free(xfs_da_state_zone, state);
}
