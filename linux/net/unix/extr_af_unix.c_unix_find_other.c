
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_un {scalar_t__* sun_path; } ;
struct sock {int sk_type; } ;
struct path {struct dentry* dentry; } ;
struct net {int dummy; } ;
struct inode {int i_mode; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct path path; } ;


 int ECONNREFUSED ;
 int EPROTOTYPE ;
 int LOOKUP_FOLLOW ;
 int MAY_WRITE ;
 int S_ISSOCK (int ) ;
 struct inode* d_backing_inode (struct dentry*) ;
 int inode_permission (struct inode*,int ) ;
 int kern_path (scalar_t__*,int ,struct path*) ;
 int path_put (struct path*) ;
 int sock_put (struct sock*) ;
 int touch_atime (struct path*) ;
 struct sock* unix_find_socket_byinode (struct inode*) ;
 struct sock* unix_find_socket_byname (struct net*,struct sockaddr_un*,int,int,unsigned int) ;
 TYPE_1__* unix_sk (struct sock*) ;

__attribute__((used)) static struct sock *unix_find_other(struct net *net,
        struct sockaddr_un *sunname, int len,
        int type, unsigned int hash, int *error)
{
 struct sock *u;
 struct path path;
 int err = 0;

 if (sunname->sun_path[0]) {
  struct inode *inode;
  err = kern_path(sunname->sun_path, LOOKUP_FOLLOW, &path);
  if (err)
   goto fail;
  inode = d_backing_inode(path.dentry);
  err = inode_permission(inode, MAY_WRITE);
  if (err)
   goto put_fail;

  err = -ECONNREFUSED;
  if (!S_ISSOCK(inode->i_mode))
   goto put_fail;
  u = unix_find_socket_byinode(inode);
  if (!u)
   goto put_fail;

  if (u->sk_type == type)
   touch_atime(&path);

  path_put(&path);

  err = -EPROTOTYPE;
  if (u->sk_type != type) {
   sock_put(u);
   goto fail;
  }
 } else {
  err = -ECONNREFUSED;
  u = unix_find_socket_byname(net, sunname, len, type, hash);
  if (u) {
   struct dentry *dentry;
   dentry = unix_sk(u)->path.dentry;
   if (dentry)
    touch_atime(&unix_sk(u)->path);
  } else
   goto fail;
 }
 return u;

put_fail:
 path_put(&path);
fail:
 *error = err;
 return ((void*)0);
}
