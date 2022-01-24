#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ name; } ;
struct bpf_object {unsigned int nr_maps; struct bpf_map* maps; scalar_t__ btf; TYPE_1__ caps; } ;
struct bpf_map_def {scalar_t__ type; int max_entries; int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; int /*<<< orphan*/  map_flags; } ;
struct bpf_map {int fd; scalar_t__ inner_map_fd; int /*<<< orphan*/  name; scalar_t__ btf_value_type_id; scalar_t__ btf_key_type_id; int /*<<< orphan*/  map_ifindex; struct bpf_map_def def; } ;
struct bpf_create_map_attr {scalar_t__ map_type; int max_entries; scalar_t__ inner_map_fd; scalar_t__ btf_value_type_id; scalar_t__ btf_key_type_id; scalar_t__ btf_fd; int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; int /*<<< orphan*/  map_flags; int /*<<< orphan*/  map_ifindex; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  errmsg ;

/* Variables and functions */
 scalar_t__ BPF_MAP_TYPE_PERF_EVENT_ARRAY ; 
 int STRERR_BUFSIZE ; 
 int FUNC0 (struct bpf_create_map_attr*) ; 
 scalar_t__ FUNC1 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_object*,struct bpf_map*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (struct bpf_object*,struct bpf_map*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int errno ; 
 int FUNC6 () ; 
 char* FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(struct bpf_object *obj)
{
	struct bpf_create_map_attr create_attr = {};
	int nr_cpus = 0;
	unsigned int i;
	int err;

	for (i = 0; i < obj->nr_maps; i++) {
		struct bpf_map *map = &obj->maps[i];
		struct bpf_map_def *def = &map->def;
		char *cp, errmsg[STRERR_BUFSIZE];
		int *pfd = &map->fd;

		if (map->fd >= 0) {
			FUNC8("skip map create (preset) %s: fd=%d\n",
				 map->name, map->fd);
			continue;
		}

		if (obj->caps.name)
			create_attr.name = map->name;
		create_attr.map_ifindex = map->map_ifindex;
		create_attr.map_type = def->type;
		create_attr.map_flags = def->map_flags;
		create_attr.key_size = def->key_size;
		create_attr.value_size = def->value_size;
		if (def->type == BPF_MAP_TYPE_PERF_EVENT_ARRAY &&
		    !def->max_entries) {
			if (!nr_cpus)
				nr_cpus = FUNC6();
			if (nr_cpus < 0) {
				FUNC9("failed to determine number of system CPUs: %d\n",
					   nr_cpus);
				err = nr_cpus;
				goto err_out;
			}
			FUNC8("map '%s': setting size to %d\n",
				 map->name, nr_cpus);
			create_attr.max_entries = nr_cpus;
		} else {
			create_attr.max_entries = def->max_entries;
		}
		create_attr.btf_fd = 0;
		create_attr.btf_key_type_id = 0;
		create_attr.btf_value_type_id = 0;
		if (FUNC3(def->type) &&
		    map->inner_map_fd >= 0)
			create_attr.inner_map_fd = map->inner_map_fd;

		if (obj->btf && !FUNC2(obj, map)) {
			create_attr.btf_fd = FUNC5(obj->btf);
			create_attr.btf_key_type_id = map->btf_key_type_id;
			create_attr.btf_value_type_id = map->btf_value_type_id;
		}

		*pfd = FUNC0(&create_attr);
		if (*pfd < 0 && (create_attr.btf_key_type_id ||
				 create_attr.btf_value_type_id)) {
			err = -errno;
			cp = FUNC7(err, errmsg, sizeof(errmsg));
			FUNC9("Error in bpf_create_map_xattr(%s):%s(%d). Retrying without BTF.\n",
				   map->name, cp, err);
			create_attr.btf_fd = 0;
			create_attr.btf_key_type_id = 0;
			create_attr.btf_value_type_id = 0;
			map->btf_key_type_id = 0;
			map->btf_value_type_id = 0;
			*pfd = FUNC0(&create_attr);
		}

		if (*pfd < 0) {
			size_t j;

			err = -errno;
err_out:
			cp = FUNC7(err, errmsg, sizeof(errmsg));
			FUNC9("failed to create map (name: '%s'): %s(%d)\n",
				   map->name, cp, err);
			for (j = 0; j < i; j++)
				FUNC10(obj->maps[j].fd);
			return err;
		}

		if (FUNC1(map)) {
			err = FUNC4(obj, map);
			if (err < 0) {
				FUNC10(*pfd);
				goto err_out;
			}
		}

		FUNC8("created map %s: fd=%d\n", map->name, *pfd);
	}

	return 0;
}