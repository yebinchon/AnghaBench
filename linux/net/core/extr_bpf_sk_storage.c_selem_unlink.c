
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_sk_storage_elem {int dummy; } ;


 int selem_unlink_map (struct bpf_sk_storage_elem*) ;
 int selem_unlink_sk (struct bpf_sk_storage_elem*) ;

__attribute__((used)) static void selem_unlink(struct bpf_sk_storage_elem *selem)
{




 selem_unlink_map(selem);
 selem_unlink_sk(selem);
}
