
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* xfs_da_hashname (unsigned char*,int) ;
 void* xfs_dir_hash_dot ;
 void* xfs_dir_hash_dotdot ;

void
xfs_dir_startup(void)
{
 xfs_dir_hash_dot = xfs_da_hashname((unsigned char *)".", 1);
 xfs_dir_hash_dotdot = xfs_da_hashname((unsigned char *)"..", 2);
}
