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
typedef  int /*<<< orphan*/  u32 ;
struct fd {int dummy; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bpf_map*) ; 
 struct bpf_map* FUNC1 (struct fd) ; 
 struct bpf_map* FUNC2 (struct bpf_map*,int) ; 
 struct fd FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fd) ; 

struct bpf_map *FUNC5(u32 ufd)
{
	struct fd f = FUNC3(ufd);
	struct bpf_map *map;

	map = FUNC1(f);
	if (FUNC0(map))
		return map;

	map = FUNC2(map, true);
	FUNC4(f);

	return map;
}