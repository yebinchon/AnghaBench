
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stack_map_bucket {int dummy; } ;
struct TYPE_2__ {int value_size; int max_entries; int numa_node; } ;
struct bpf_stack_map {int elems; TYPE_1__ map; int freelist; } ;


 int ENOMEM ;
 int bpf_map_area_alloc (int,int ) ;
 int bpf_map_area_free (int ) ;
 int pcpu_freelist_init (int *) ;
 int pcpu_freelist_populate (int *,int ,int,int) ;

__attribute__((used)) static int prealloc_elems_and_freelist(struct bpf_stack_map *smap)
{
 u32 elem_size = sizeof(struct stack_map_bucket) + smap->map.value_size;
 int err;

 smap->elems = bpf_map_area_alloc(elem_size * smap->map.max_entries,
      smap->map.numa_node);
 if (!smap->elems)
  return -ENOMEM;

 err = pcpu_freelist_init(&smap->freelist);
 if (err)
  goto free_elems;

 pcpu_freelist_populate(&smap->freelist, smap->elems, elem_size,
          smap->map.max_entries);
 return 0;

free_elems:
 bpf_map_area_free(smap->elems);
 return err;
}
