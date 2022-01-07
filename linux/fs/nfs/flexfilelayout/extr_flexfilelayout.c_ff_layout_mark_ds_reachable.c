
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_segment {int dummy; } ;
struct nfs4_deviceid_node {int dummy; } ;


 struct nfs4_deviceid_node* FF_LAYOUT_DEVID_NODE (struct pnfs_layout_segment*,int) ;
 int nfs4_mark_deviceid_available (struct nfs4_deviceid_node*) ;

__attribute__((used)) static void
ff_layout_mark_ds_reachable(struct pnfs_layout_segment *lseg, int idx)
{
 struct nfs4_deviceid_node *devid = FF_LAYOUT_DEVID_NODE(lseg, idx);

 if (devid)
  nfs4_mark_deviceid_available(devid);
}
