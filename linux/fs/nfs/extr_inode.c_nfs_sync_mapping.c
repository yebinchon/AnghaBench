
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {scalar_t__ nrpages; int host; } ;


 int nfs_wb_all (int ) ;
 int unmap_mapping_range (struct address_space*,int ,int ,int ) ;

int nfs_sync_mapping(struct address_space *mapping)
{
 int ret = 0;

 if (mapping->nrpages != 0) {
  unmap_mapping_range(mapping, 0, 0, 0);
  ret = nfs_wb_all(mapping->host);
 }
 return ret;
}
