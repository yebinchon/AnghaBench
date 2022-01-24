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
typedef  int u32 ;
struct bpf_prog_info {int nr_map_ids; int /*<<< orphan*/  map_ids; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int __u32 ;

/* Variables and functions */
 int FUNC0 (int,struct bpf_prog_info*,int*) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 

__attribute__((used)) static void FUNC7(int fd, u32 num_maps)
{
	struct bpf_prog_info info = {};
	__u32 len = sizeof(info);
	__u32 map_ids[num_maps];
	unsigned int i;
	int err;

	info.nr_map_ids = num_maps;
	info.map_ids = FUNC6(map_ids);

	err = FUNC0(fd, &info, &len);
	if (err || !info.nr_map_ids)
		return;

	if (json_output) {
		FUNC2(json_wtr, "map_ids");
		FUNC3(json_wtr);
		for (i = 0; i < info.nr_map_ids; i++)
			FUNC4(json_wtr, map_ids[i]);
		FUNC1(json_wtr);
	} else {
		FUNC5("  map_ids ");
		for (i = 0; i < info.nr_map_ids; i++)
			FUNC5("%u%s", map_ids[i],
			       i == info.nr_map_ids - 1 ? "" : ",");
	}
}