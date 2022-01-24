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
struct TYPE_2__ {int /*<<< orphan*/ * rodata; int /*<<< orphan*/ * data; } ;
struct bpf_object {TYPE_1__ sections; } ;
struct bpf_map {scalar_t__ libbpf_type; int /*<<< orphan*/  name; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  errmsg ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 scalar_t__ LIBBPF_MAP_BSS ; 
 scalar_t__ LIBBPF_MAP_DATA ; 
 scalar_t__ LIBBPF_MAP_RODATA ; 
 int STRERR_BUFSIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct bpf_object *obj, struct bpf_map *map)
{
	char *cp, errmsg[STRERR_BUFSIZE];
	int err, zero = 0;
	__u8 *data;

	/* Nothing to do here since kernel already zero-initializes .bss map. */
	if (map->libbpf_type == LIBBPF_MAP_BSS)
		return 0;

	data = map->libbpf_type == LIBBPF_MAP_DATA ?
	       obj->sections.data : obj->sections.rodata;

	err = FUNC1(map->fd, &zero, data, 0);
	/* Freeze .rodata map as read-only from syscall side. */
	if (!err && map->libbpf_type == LIBBPF_MAP_RODATA) {
		err = FUNC0(map->fd);
		if (err) {
			cp = FUNC2(errno, errmsg, sizeof(errmsg));
			FUNC3("Error freezing map(%s) as read-only: %s\n",
				   map->name, cp);
			err = 0;
		}
	}
	return err;
}