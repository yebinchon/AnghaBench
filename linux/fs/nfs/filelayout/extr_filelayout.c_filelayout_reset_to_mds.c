
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_segment {int dummy; } ;
struct nfs4_deviceid_node {int dummy; } ;


 struct nfs4_deviceid_node* FILELAYOUT_DEVID_NODE (struct pnfs_layout_segment*) ;
 int filelayout_test_devid_unavailable (struct nfs4_deviceid_node*) ;

__attribute__((used)) static bool
filelayout_reset_to_mds(struct pnfs_layout_segment *lseg)
{
 struct nfs4_deviceid_node *node = FILELAYOUT_DEVID_NODE(lseg);

 return filelayout_test_devid_unavailable(node);
}
