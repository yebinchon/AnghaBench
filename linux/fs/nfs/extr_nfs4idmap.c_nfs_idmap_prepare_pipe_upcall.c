
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_legacy_upcalldata {int dummy; } ;
struct idmap {struct idmap_legacy_upcalldata* idmap_upcall_data; } ;


 int WARN_ON_ONCE (int) ;

__attribute__((used)) static bool
nfs_idmap_prepare_pipe_upcall(struct idmap *idmap,
  struct idmap_legacy_upcalldata *data)
{
 if (idmap->idmap_upcall_data != ((void*)0)) {
  WARN_ON_ONCE(1);
  return 0;
 }
 idmap->idmap_upcall_data = data;
 return 1;
}
