
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct socket {int sk; } ;
struct bpf_sk_storage_data {int dummy; } ;
struct bpf_map {int dummy; } ;


 int PTR_ERR_OR_ZERO (struct bpf_sk_storage_data*) ;
 struct bpf_sk_storage_data* sk_storage_update (int ,struct bpf_map*,void*,int ) ;
 struct socket* sockfd_lookup (int,int*) ;
 int sockfd_put (struct socket*) ;

__attribute__((used)) static int bpf_fd_sk_storage_update_elem(struct bpf_map *map, void *key,
      void *value, u64 map_flags)
{
 struct bpf_sk_storage_data *sdata;
 struct socket *sock;
 int fd, err;

 fd = *(int *)key;
 sock = sockfd_lookup(fd, &err);
 if (sock) {
  sdata = sk_storage_update(sock->sk, map, value, map_flags);
  sockfd_put(sock);
  return PTR_ERR_OR_ZERO(sdata);
 }

 return err;
}
