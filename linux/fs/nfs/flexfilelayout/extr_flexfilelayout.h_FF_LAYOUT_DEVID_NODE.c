
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pnfs_layout_segment {int dummy; } ;
struct nfs4_ff_layout_mirror {struct nfs4_ff_layout_ds* mirror_ds; } ;
struct nfs4_deviceid_node {int dummy; } ;
struct nfs4_ff_layout_ds {struct nfs4_deviceid_node id_node; } ;


 struct nfs4_ff_layout_mirror* FF_LAYOUT_COMP (struct pnfs_layout_segment*,int ) ;
 int IS_ERR_OR_NULL (struct nfs4_ff_layout_ds*) ;

__attribute__((used)) static inline struct nfs4_deviceid_node *
FF_LAYOUT_DEVID_NODE(struct pnfs_layout_segment *lseg, u32 idx)
{
 struct nfs4_ff_layout_mirror *mirror = FF_LAYOUT_COMP(lseg, idx);

 if (mirror != ((void*)0)) {
  struct nfs4_ff_layout_ds *mirror_ds = mirror->mirror_ds;

  if (!IS_ERR_OR_NULL(mirror_ds))
   return &mirror_ds->id_node;
 }
 return ((void*)0);
}
