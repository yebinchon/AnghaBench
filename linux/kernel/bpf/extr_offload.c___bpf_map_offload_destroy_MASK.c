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
struct bpf_offloaded_map {int /*<<< orphan*/ * netdev; int /*<<< orphan*/  offloads; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_OFFLOAD_MAP_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_offloaded_map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct bpf_offloaded_map *offmap)
{
	FUNC0(FUNC2(offmap, BPF_OFFLOAD_MAP_FREE));
	/* Make sure BPF_MAP_GET_NEXT_ID can't find this dead map */
	FUNC1(&offmap->map, true);
	FUNC3(&offmap->offloads);
	offmap->netdev = NULL;
}