
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap {int * idmap_upcall_data; } ;


 int nfs_idmap_complete_pipe_upcall_locked (struct idmap*,int) ;

__attribute__((used)) static void
nfs_idmap_abort_pipe_upcall(struct idmap *idmap, int ret)
{
 if (idmap->idmap_upcall_data != ((void*)0))
  nfs_idmap_complete_pipe_upcall_locked(idmap, ret);
}
