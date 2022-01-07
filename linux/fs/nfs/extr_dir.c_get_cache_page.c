
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_6__ {int page_index; TYPE_1__* file; } ;
typedef TYPE_2__ nfs_readdir_descriptor_t ;
struct TYPE_5__ {int f_mapping; } ;


 int nfs_readdir_filler ;
 struct page* read_cache_page (int ,int ,int ,TYPE_2__*) ;

__attribute__((used)) static
struct page *get_cache_page(nfs_readdir_descriptor_t *desc)
{
 return read_cache_page(desc->file->f_mapping, desc->page_index,
   nfs_readdir_filler, desc);
}
