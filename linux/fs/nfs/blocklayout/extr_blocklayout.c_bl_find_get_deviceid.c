
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;
struct nfs4_deviceid_node {int nfs_client; int ld; int timestamp_unavailable; int flags; } ;
struct nfs4_deviceid {int dummy; } ;
struct cred {int dummy; } ;
typedef int gfp_t ;


 int ENODEV ;
 struct nfs4_deviceid_node* ERR_PTR (int ) ;
 int NFS_DEVICEID_UNAVAILABLE ;
 unsigned long PNFS_DEVICE_RETRY_TIMEOUT ;
 unsigned long jiffies ;
 int nfs4_delete_deviceid (int ,int ,struct nfs4_deviceid const*) ;
 struct nfs4_deviceid_node* nfs4_find_get_deviceid (struct nfs_server*,struct nfs4_deviceid const*,struct cred const*,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int time_in_range (int ,unsigned long,unsigned long) ;

__attribute__((used)) static struct nfs4_deviceid_node *
bl_find_get_deviceid(struct nfs_server *server,
  const struct nfs4_deviceid *id, const struct cred *cred,
  gfp_t gfp_mask)
{
 struct nfs4_deviceid_node *node;
 unsigned long start, end;

retry:
 node = nfs4_find_get_deviceid(server, id, cred, gfp_mask);
 if (!node)
  return ERR_PTR(-ENODEV);

 if (test_bit(NFS_DEVICEID_UNAVAILABLE, &node->flags) == 0)
  return node;

 end = jiffies;
 start = end - PNFS_DEVICE_RETRY_TIMEOUT;
 if (!time_in_range(node->timestamp_unavailable, start, end)) {
  nfs4_delete_deviceid(node->ld, node->nfs_client, id);
  goto retry;
 }
 return ERR_PTR(-ENODEV);
}
