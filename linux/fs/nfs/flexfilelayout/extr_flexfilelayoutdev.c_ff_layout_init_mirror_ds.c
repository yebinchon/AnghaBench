
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_hdr {int plh_lc_cred; int plh_inode; } ;
struct nfs4_ff_layout_mirror {int * mirror_ds; int devid; } ;
struct nfs4_ff_layout_ds {int dummy; } ;
struct nfs4_deviceid_node {int dummy; } ;


 int ENODEV ;
 struct nfs4_ff_layout_ds* ERR_PTR (int ) ;
 struct nfs4_ff_layout_ds* FF_LAYOUT_MIRROR_DS (struct nfs4_deviceid_node*) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int NFS_SERVER (int ) ;
 scalar_t__ cmpxchg (int **,int *,struct nfs4_ff_layout_ds*) ;
 struct nfs4_deviceid_node* nfs4_find_get_deviceid (int ,int *,int ,int ) ;
 int nfs4_put_deviceid_node (struct nfs4_deviceid_node*) ;

__attribute__((used)) static bool
ff_layout_init_mirror_ds(struct pnfs_layout_hdr *lo,
    struct nfs4_ff_layout_mirror *mirror)
{
 if (mirror == ((void*)0))
  goto outerr;
 if (mirror->mirror_ds == ((void*)0)) {
  struct nfs4_deviceid_node *node;
  struct nfs4_ff_layout_ds *mirror_ds = ERR_PTR(-ENODEV);

  node = nfs4_find_get_deviceid(NFS_SERVER(lo->plh_inode),
    &mirror->devid, lo->plh_lc_cred,
    GFP_KERNEL);
  if (node)
   mirror_ds = FF_LAYOUT_MIRROR_DS(node);


  if (cmpxchg(&mirror->mirror_ds, ((void*)0), mirror_ds) &&
      mirror_ds != ERR_PTR(-ENODEV))
   nfs4_put_deviceid_node(node);
 }

 if (IS_ERR(mirror->mirror_ds))
  goto outerr;

 return 1;
outerr:
 return 0;
}
