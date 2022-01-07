
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bpf_object {char* name; struct bpf_map* maps; } ;
struct bpf_map_def {int key_size; int max_entries; int map_flags; int value_size; int type; } ;
struct bpf_map {int libbpf_type; int sec_idx; int name; struct bpf_map_def def; scalar_t__ sec_offset; } ;
typedef int map_name ;
typedef enum libbpf_map_type { ____Placeholder_libbpf_map_type } libbpf_map_type ;
struct TYPE_3__ {int d_size; int d_buf; } ;
typedef TYPE_1__ Elf_Data ;


 int BPF_F_RDONLY_PROG ;
 int BPF_MAP_TYPE_ARRAY ;
 int BPF_OBJ_NAME_LEN ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct bpf_map*) ;
 int LIBBPF_MAP_RODATA ;
 int PTR_ERR (struct bpf_map*) ;
 struct bpf_map* bpf_object__add_map (struct bpf_object*) ;
 int * libbpf_type_to_btf_name ;
 void* malloc (int ) ;
 int memcpy (void*,int ,int ) ;
 int pr_debug (char*,...) ;
 int pr_warning (char*) ;
 int snprintf (char*,int,char*,char*,int ) ;
 int strdup (char*) ;
 int zfree (int *) ;

__attribute__((used)) static int
bpf_object__init_internal_map(struct bpf_object *obj, enum libbpf_map_type type,
         int sec_idx, Elf_Data *data, void **data_buff)
{
 char map_name[BPF_OBJ_NAME_LEN];
 struct bpf_map_def *def;
 struct bpf_map *map;

 map = bpf_object__add_map(obj);
 if (IS_ERR(map))
  return PTR_ERR(map);

 map->libbpf_type = type;
 map->sec_idx = sec_idx;
 map->sec_offset = 0;
 snprintf(map_name, sizeof(map_name), "%.8s%.7s", obj->name,
   libbpf_type_to_btf_name[type]);
 map->name = strdup(map_name);
 if (!map->name) {
  pr_warning("failed to alloc map name\n");
  return -ENOMEM;
 }
 pr_debug("map '%s' (global data): at sec_idx %d, offset %zu.\n",
   map_name, map->sec_idx, map->sec_offset);

 def = &map->def;
 def->type = BPF_MAP_TYPE_ARRAY;
 def->key_size = sizeof(int);
 def->value_size = data->d_size;
 def->max_entries = 1;
 def->map_flags = type == LIBBPF_MAP_RODATA ? BPF_F_RDONLY_PROG : 0;
 if (data_buff) {
  *data_buff = malloc(data->d_size);
  if (!*data_buff) {
   zfree(&map->name);
   pr_warning("failed to alloc map content buffer\n");
   return -ENOMEM;
  }
  memcpy(*data_buff, data->d_buf, data->d_size);
 }

 pr_debug("map %td is \"%s\"\n", map - obj->maps, map->name);
 return 0;
}
