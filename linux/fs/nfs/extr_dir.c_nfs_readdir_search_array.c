
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct nfs_cache_array {scalar_t__ size; int last_cookie; } ;
struct TYPE_5__ {scalar_t__* dir_cookie; int page; int page_index; int current_index; int last_cookie; } ;
typedef TYPE_1__ nfs_readdir_descriptor_t ;


 int EAGAIN ;
 struct nfs_cache_array* kmap (int ) ;
 int kunmap (int ) ;
 int nfs_readdir_search_for_cookie (struct nfs_cache_array*,TYPE_1__*) ;
 int nfs_readdir_search_for_pos (struct nfs_cache_array*,TYPE_1__*) ;

__attribute__((used)) static
int nfs_readdir_search_array(nfs_readdir_descriptor_t *desc)
{
 struct nfs_cache_array *array;
 int status;

 array = kmap(desc->page);

 if (*desc->dir_cookie == 0)
  status = nfs_readdir_search_for_pos(array, desc);
 else
  status = nfs_readdir_search_for_cookie(array, desc);

 if (status == -EAGAIN) {
  desc->last_cookie = array->last_cookie;
  desc->current_index += array->size;
  desc->page_index++;
 }
 kunmap(desc->page);
 return status;
}
