
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* page; } ;
typedef TYPE_1__ nfs_readdir_descriptor_t ;
struct TYPE_6__ {int mapping; } ;


 int nfs_readdir_clear_array (TYPE_2__*) ;
 int put_page (TYPE_2__*) ;

__attribute__((used)) static
void cache_page_release(nfs_readdir_descriptor_t *desc)
{
 if (!desc->page->mapping)
  nfs_readdir_clear_array(desc->page);
 put_page(desc->page);
 desc->page = ((void*)0);
}
