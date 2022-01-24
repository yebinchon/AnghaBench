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
typedef  int uint32_t ;
struct bpf_map_info {int id; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int*,int*) ; 
 int FUNC2 (int,struct bpf_map_info*,int*) ; 

__attribute__((used)) static void FUNC3(int inner_map_fd, int map_in_map_fd, uint32_t key)
{
	struct bpf_map_info info = {};
	uint32_t info_len = sizeof(info);
	int ret, id;

	ret = FUNC2(inner_map_fd, &info, &info_len);
	FUNC0(!ret);

	ret = FUNC1(map_in_map_fd, &key, &id);
	FUNC0(!ret);
	FUNC0(id == info.id);
}