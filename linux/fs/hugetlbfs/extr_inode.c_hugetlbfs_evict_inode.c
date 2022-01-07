
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resv_map {int refs; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;
struct inode {TYPE_1__ i_data; } ;


 int LLONG_MAX ;
 int clear_inode (struct inode*) ;
 int remove_inode_hugepages (struct inode*,int ,int ) ;
 int resv_map_release (int *) ;

__attribute__((used)) static void hugetlbfs_evict_inode(struct inode *inode)
{
 struct resv_map *resv_map;

 remove_inode_hugepages(inode, 0, LLONG_MAX);







 resv_map = (struct resv_map *)(&inode->i_data)->private_data;

 if (resv_map)
  resv_map_release(&resv_map->refs);
 clear_inode(inode);
}
