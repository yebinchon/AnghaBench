
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char vfsmount ;
struct sockaddr_storage {int dummy; } ;
struct nfs_clone_mount {char* mnt_path; char* hostname; int * addr; int dentry; int addrlen; int sb; } ;
struct nfs4_string {unsigned int len; int data; } ;
struct nfs4_fs_location {unsigned int nservers; struct nfs4_string* servers; int rootpath; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int client; } ;


 int ENOENT ;
 int ENOMEM ;
 char* ERR_CAST (char*) ;
 char* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IPV6_SCOPE_DELIMITER ;
 scalar_t__ IS_ERR (char*) ;
 TYPE_1__* NFS_SB (int ) ;
 int PAGE_SIZE ;
 int kfree (int *) ;
 int * kmalloc (size_t const,int ) ;
 scalar_t__ memchr (int ,int ,unsigned int) ;
 int memcpy (char*,int ,unsigned int) ;
 char* nfs4_pathname_string (int *,char*,int ) ;
 int nfs4_referral_fs_type ;
 int nfs_parse_server_name (int ,unsigned int,int *,size_t const,struct net*) ;
 struct net* rpc_net_ns (int ) ;
 int snprintf (char*,int ,char*,char*,char*) ;
 char* vfs_submount (int ,int *,char*,struct nfs_clone_mount*) ;

__attribute__((used)) static struct vfsmount *try_location(struct nfs_clone_mount *mountdata,
         char *page, char *page2,
         const struct nfs4_fs_location *location)
{
 const size_t addr_bufsize = sizeof(struct sockaddr_storage);
 struct net *net = rpc_net_ns(NFS_SB(mountdata->sb)->client);
 struct vfsmount *mnt = ERR_PTR(-ENOENT);
 char *mnt_path;
 unsigned int maxbuflen;
 unsigned int s;

 mnt_path = nfs4_pathname_string(&location->rootpath, page2, PAGE_SIZE);
 if (IS_ERR(mnt_path))
  return ERR_CAST(mnt_path);
 mountdata->mnt_path = mnt_path;
 maxbuflen = mnt_path - 1 - page2;

 mountdata->addr = kmalloc(addr_bufsize, GFP_KERNEL);
 if (mountdata->addr == ((void*)0))
  return ERR_PTR(-ENOMEM);

 for (s = 0; s < location->nservers; s++) {
  const struct nfs4_string *buf = &location->servers[s];

  if (buf->len <= 0 || buf->len >= maxbuflen)
   continue;

  if (memchr(buf->data, IPV6_SCOPE_DELIMITER, buf->len))
   continue;

  mountdata->addrlen = nfs_parse_server_name(buf->data, buf->len,
    mountdata->addr, addr_bufsize, net);
  if (mountdata->addrlen == 0)
   continue;

  memcpy(page2, buf->data, buf->len);
  page2[buf->len] = '\0';
  mountdata->hostname = page2;

  snprintf(page, PAGE_SIZE, "%s:%s",
    mountdata->hostname,
    mountdata->mnt_path);

  mnt = vfs_submount(mountdata->dentry, &nfs4_referral_fs_type, page, mountdata);
  if (!IS_ERR(mnt))
   break;
 }
 kfree(mountdata->addr);
 return mnt;
}
