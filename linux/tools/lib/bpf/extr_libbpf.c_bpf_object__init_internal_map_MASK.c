#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bpf_object {char* name; struct bpf_map* maps; } ;
struct bpf_map_def {int key_size; int max_entries; int /*<<< orphan*/  map_flags; int /*<<< orphan*/  value_size; int /*<<< orphan*/  type; } ;
struct bpf_map {int libbpf_type; int sec_idx; int /*<<< orphan*/  name; struct bpf_map_def def; scalar_t__ sec_offset; } ;
typedef  int /*<<< orphan*/  map_name ;
typedef  enum libbpf_map_type { ____Placeholder_libbpf_map_type } libbpf_map_type ;
struct TYPE_3__ {int /*<<< orphan*/  d_size; int /*<<< orphan*/  d_buf; } ;
typedef  TYPE_1__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_F_RDONLY_PROG ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_ARRAY ; 
 int BPF_OBJ_NAME_LEN ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct bpf_map*) ; 
 int LIBBPF_MAP_RODATA ; 
 int FUNC1 (struct bpf_map*) ; 
 struct bpf_map* FUNC2 (struct bpf_object*) ; 
 int /*<<< orphan*/ * libbpf_type_to_btf_name ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct bpf_object *obj, enum libbpf_map_type type,
			      int sec_idx, Elf_Data *data, void **data_buff)
{
	char map_name[BPF_OBJ_NAME_LEN];
	struct bpf_map_def *def;
	struct bpf_map *map;

	map = FUNC2(obj);
	if (FUNC0(map))
		return FUNC1(map);

	map->libbpf_type = type;
	map->sec_idx = sec_idx;
	map->sec_offset = 0;
	FUNC7(map_name, sizeof(map_name), "%.8s%.7s", obj->name,
		 libbpf_type_to_btf_name[type]);
	map->name = FUNC8(map_name);
	if (!map->name) {
		FUNC6("failed to alloc map name\n");
		return -ENOMEM;
	}
	FUNC5("map '%s' (global data): at sec_idx %d, offset %zu.\n",
		 map_name, map->sec_idx, map->sec_offset);

	def = &map->def;
	def->type = BPF_MAP_TYPE_ARRAY;
	def->key_size = sizeof(int);
	def->value_size = data->d_size;
	def->max_entries = 1;
	def->map_flags = type == LIBBPF_MAP_RODATA ? BPF_F_RDONLY_PROG : 0;
	if (data_buff) {
		*data_buff = FUNC3(data->d_size);
		if (!*data_buff) {
			FUNC9(&map->name);
			FUNC6("failed to alloc map content buffer\n");
			return -ENOMEM;
		}
		FUNC4(*data_buff, data->d_buf, data->d_size);
	}

	FUNC5("map %td is \"%s\"\n", map - obj->maps, map->name);
	return 0;
}