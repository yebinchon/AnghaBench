#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bpf_redirect_info {struct bpf_map* map_to_flush; } ;
struct bpf_map {int map_type; } ;

/* Variables and functions */
#define  BPF_MAP_TYPE_CPUMAP 131 
#define  BPF_MAP_TYPE_DEVMAP 130 
#define  BPF_MAP_TYPE_DEVMAP_HASH 129 
#define  BPF_MAP_TYPE_XSKMAP 128 
 int /*<<< orphan*/  FUNC0 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_map*) ; 
 int /*<<< orphan*/  bpf_redirect_info ; 
 struct bpf_redirect_info* FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	struct bpf_redirect_info *ri = FUNC3(&bpf_redirect_info);
	struct bpf_map *map = ri->map_to_flush;

	ri->map_to_flush = NULL;
	if (map) {
		switch (map->map_type) {
		case BPF_MAP_TYPE_DEVMAP:
		case BPF_MAP_TYPE_DEVMAP_HASH:
			FUNC1(map);
			break;
		case BPF_MAP_TYPE_CPUMAP:
			FUNC0(map);
			break;
		case BPF_MAP_TYPE_XSKMAP:
			FUNC2(map);
			break;
		default:
			break;
		}
	}
}