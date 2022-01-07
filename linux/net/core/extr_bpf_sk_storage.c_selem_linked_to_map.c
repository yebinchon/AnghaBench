
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_sk_storage_elem {int map_node; } ;


 int hlist_unhashed (int *) ;

__attribute__((used)) static bool selem_linked_to_map(const struct bpf_sk_storage_elem *selem)
{
 return !hlist_unhashed(&selem->map_node);
}
