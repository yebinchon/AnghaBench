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
struct bpf_map_info {int /*<<< orphan*/  btf_value_type_id; int /*<<< orphan*/  btf_key_type_id; int /*<<< orphan*/  map_flags; int /*<<< orphan*/  max_entries; int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  map_flags; int /*<<< orphan*/  max_entries; int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; int /*<<< orphan*/  type; } ;
struct bpf_map {int fd; char* name; int /*<<< orphan*/  btf_value_type_id; int /*<<< orphan*/  btf_key_type_id; TYPE_1__ def; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int __u32 ;

/* Variables and functions */
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int FUNC0 (int,struct bpf_map_info*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 

int FUNC7(struct bpf_map *map, int fd)
{
	struct bpf_map_info info = {};
	__u32 len = sizeof(info);
	int new_fd, err;
	char *new_name;

	err = FUNC0(fd, &info, &len);
	if (err)
		return err;

	new_name = FUNC5(info.name);
	if (!new_name)
		return -errno;

	new_fd = FUNC4("/", O_RDONLY | O_CLOEXEC);
	if (new_fd < 0)
		goto err_free_new_name;

	new_fd = FUNC2(fd, new_fd, O_CLOEXEC);
	if (new_fd < 0)
		goto err_close_new_fd;

	err = FUNC6(map->fd);
	if (err)
		goto err_close_new_fd;
	FUNC3(map->name);

	map->fd = new_fd;
	map->name = new_name;
	map->def.type = info.type;
	map->def.key_size = info.key_size;
	map->def.value_size = info.value_size;
	map->def.max_entries = info.max_entries;
	map->def.map_flags = info.map_flags;
	map->btf_key_type_id = info.btf_key_type_id;
	map->btf_value_type_id = info.btf_value_type_id;

	return 0;

err_close_new_fd:
	FUNC1(new_fd);
err_free_new_name:
	FUNC3(new_name);
	return -errno;
}