
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int * mi_palloc_cache; } ;


 TYPE_1__* NILFS_MDT (struct inode*) ;
 int nilfs_palloc_clear_cache (struct inode*) ;

void nilfs_palloc_destroy_cache(struct inode *inode)
{
 nilfs_palloc_clear_cache(inode);
 NILFS_MDT(inode)->mi_palloc_cache = ((void*)0);
}
