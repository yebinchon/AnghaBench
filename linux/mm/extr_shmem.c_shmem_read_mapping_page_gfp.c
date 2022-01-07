
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct address_space {int * a_ops; struct inode* host; } ;
typedef int pgoff_t ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 struct page* ERR_PTR (int) ;
 int SGP_CACHE ;
 struct page* read_cache_page_gfp (struct address_space*,int ,int ) ;
 int shmem_aops ;
 int shmem_getpage_gfp (struct inode*,int ,struct page**,int ,int ,int *,int *,int *) ;
 int unlock_page (struct page*) ;

struct page *shmem_read_mapping_page_gfp(struct address_space *mapping,
      pgoff_t index, gfp_t gfp)
{
 return read_cache_page_gfp(mapping, index, gfp);

}
