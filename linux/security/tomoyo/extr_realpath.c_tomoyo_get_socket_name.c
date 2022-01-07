
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_family; int sk_type; int sk_protocol; } ;
struct path {int dentry; } ;
struct inode {int dummy; } ;


 struct socket* SOCKET_I (struct inode*) ;
 struct inode* d_backing_inode (int ) ;
 int snprintf (char* const,int const,char*,...) ;

__attribute__((used)) static char *tomoyo_get_socket_name(const struct path *path, char * const buffer,
        const int buflen)
{
 struct inode *inode = d_backing_inode(path->dentry);
 struct socket *sock = inode ? SOCKET_I(inode) : ((void*)0);
 struct sock *sk = sock ? sock->sk : ((void*)0);

 if (sk) {
  snprintf(buffer, buflen, "socket:[family=%u:type=%u:protocol=%u]",
    sk->sk_family, sk->sk_type, sk->sk_protocol);
 } else {
  snprintf(buffer, buflen, "socket:[unknown]");
 }
 return buffer;
}
