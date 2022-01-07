
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;
struct bpf_sk_storage_data {void* data; } ;
struct bpf_map {int dummy; } ;


 void* ERR_PTR (int) ;
 struct bpf_sk_storage_data* sk_storage_lookup (int ,struct bpf_map*,int) ;
 struct socket* sockfd_lookup (int,int*) ;
 int sockfd_put (struct socket*) ;

__attribute__((used)) static void *bpf_fd_sk_storage_lookup_elem(struct bpf_map *map, void *key)
{
 struct bpf_sk_storage_data *sdata;
 struct socket *sock;
 int fd, err;

 fd = *(int *)key;
 sock = sockfd_lookup(fd, &err);
 if (sock) {
  sdata = sk_storage_lookup(sock->sk, map, 1);
  sockfd_put(sock);
  return sdata ? sdata->data : ((void*)0);
 }

 return ERR_PTR(err);
}
