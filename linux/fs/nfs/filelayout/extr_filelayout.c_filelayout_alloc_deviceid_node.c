
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_device {int dummy; } ;
struct nfs_server {int dummy; } ;
struct nfs4_deviceid_node {int dummy; } ;
struct nfs4_file_layout_dsaddr {struct nfs4_deviceid_node id_node; } ;
typedef int gfp_t ;


 struct nfs4_file_layout_dsaddr* nfs4_fl_alloc_deviceid_node (struct nfs_server*,struct pnfs_device*,int ) ;

__attribute__((used)) static struct nfs4_deviceid_node *
filelayout_alloc_deviceid_node(struct nfs_server *server,
  struct pnfs_device *pdev, gfp_t gfp_flags)
{
 struct nfs4_file_layout_dsaddr *dsaddr;

 dsaddr = nfs4_fl_alloc_deviceid_node(server, pdev, gfp_flags);
 if (!dsaddr)
  return ((void*)0);
 return &dsaddr->id_node;
}
