
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
typedef char sockaddr ;
struct nfs_server {int client; } ;
struct nfs4_string {scalar_t__ len; int data; } ;
struct nfs4_fs_location {unsigned int nservers; struct nfs4_string* servers; } ;
struct net {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IPV6_SCOPE_DELIMITER ;
 int NFS_PORT ;
 scalar_t__ PAGE_SIZE ;
 int kfree (char*) ;
 char* kmalloc (size_t const,int ) ;
 char* kstrndup (int ,scalar_t__,int ) ;
 int * memchr (int ,int ,scalar_t__) ;
 int nfs4_update_server (struct nfs_server*,char*,char*,size_t,struct net*) ;
 size_t nfs_parse_server_name (int ,scalar_t__,char*,size_t const,struct net*) ;
 struct net* rpc_net_ns (int ) ;
 int rpc_set_port (char*,int ) ;

__attribute__((used)) static int nfs4_try_replacing_one_location(struct nfs_server *server,
  char *page, char *page2,
  const struct nfs4_fs_location *location)
{
 const size_t addr_bufsize = sizeof(struct sockaddr_storage);
 struct net *net = rpc_net_ns(server->client);
 struct sockaddr *sap;
 unsigned int s;
 size_t salen;
 int error;

 sap = kmalloc(addr_bufsize, GFP_KERNEL);
 if (sap == ((void*)0))
  return -ENOMEM;

 error = -ENOENT;
 for (s = 0; s < location->nservers; s++) {
  const struct nfs4_string *buf = &location->servers[s];
  char *hostname;

  if (buf->len <= 0 || buf->len > PAGE_SIZE)
   continue;

  if (memchr(buf->data, IPV6_SCOPE_DELIMITER, buf->len) != ((void*)0))
   continue;

  salen = nfs_parse_server_name(buf->data, buf->len,
      sap, addr_bufsize, net);
  if (salen == 0)
   continue;
  rpc_set_port(sap, NFS_PORT);

  error = -ENOMEM;
  hostname = kstrndup(buf->data, buf->len, GFP_KERNEL);
  if (hostname == ((void*)0))
   break;

  error = nfs4_update_server(server, hostname, sap, salen, net);
  kfree(hostname);
  if (error == 0)
   break;
 }

 kfree(sap);
 return error;
}
