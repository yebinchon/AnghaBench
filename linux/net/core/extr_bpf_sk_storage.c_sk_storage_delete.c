
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct bpf_sk_storage_data {int dummy; } ;
struct bpf_map {int dummy; } ;


 int ENOENT ;
 int SELEM (struct bpf_sk_storage_data*) ;
 int selem_unlink (int ) ;
 struct bpf_sk_storage_data* sk_storage_lookup (struct sock*,struct bpf_map*,int) ;

__attribute__((used)) static int sk_storage_delete(struct sock *sk, struct bpf_map *map)
{
 struct bpf_sk_storage_data *sdata;

 sdata = sk_storage_lookup(sk, map, 0);
 if (!sdata)
  return -ENOENT;

 selem_unlink(SELEM(sdata));

 return 0;
}
