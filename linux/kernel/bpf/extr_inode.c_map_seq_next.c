
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct bpf_map {TYPE_1__* ops; } ;
typedef int loff_t ;
struct TYPE_4__ {int done; void* key; } ;
struct TYPE_3__ {scalar_t__ (* map_get_next_key ) (struct bpf_map*,void*,void*) ;} ;


 void* SEQ_START_TOKEN ;
 TYPE_2__* map_iter (struct seq_file*) ;
 struct bpf_map* seq_file_to_map (struct seq_file*) ;
 scalar_t__ stub1 (struct bpf_map*,void*,void*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void *map_seq_next(struct seq_file *m, void *v, loff_t *pos)
{
 struct bpf_map *map = seq_file_to_map(m);
 void *key = map_iter(m)->key;
 void *prev_key;

 if (map_iter(m)->done)
  return ((void*)0);

 if (unlikely(v == SEQ_START_TOKEN))
  prev_key = ((void*)0);
 else
  prev_key = key;

 if (map->ops->map_get_next_key(map, prev_key, key)) {
  map_iter(m)->done = 1;
  return ((void*)0);
 }

 ++(*pos);
 return key;
}
