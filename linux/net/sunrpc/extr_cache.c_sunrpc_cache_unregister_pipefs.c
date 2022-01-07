
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_detail {int * pipefs; } ;


 int rpc_remove_cache_dir (int *) ;

void sunrpc_cache_unregister_pipefs(struct cache_detail *cd)
{
 if (cd->pipefs) {
  rpc_remove_cache_dir(cd->pipefs);
  cd->pipefs = ((void*)0);
 }
}
