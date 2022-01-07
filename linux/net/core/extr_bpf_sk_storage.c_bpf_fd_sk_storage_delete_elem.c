
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;
struct bpf_map {int dummy; } ;


 int sk_storage_delete (int ,struct bpf_map*) ;
 struct socket* sockfd_lookup (int,int*) ;
 int sockfd_put (struct socket*) ;

__attribute__((used)) static int bpf_fd_sk_storage_delete_elem(struct bpf_map *map, void *key)
{
 struct socket *sock;
 int fd, err;

 fd = *(int *)key;
 sock = sockfd_lookup(fd, &err);
 if (sock) {
  err = sk_storage_delete(sock->sk, map);
  sockfd_put(sock);
  return err;
 }

 return err;
}
