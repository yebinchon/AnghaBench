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
union bpf_attr {int map_fd; void* next_key; void* key; } ;
typedef  int /*<<< orphan*/  attr ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_MAP_GET_NEXT_KEY ; 
 int /*<<< orphan*/  FUNC0 (union bpf_attr*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,union bpf_attr*,int) ; 

int FUNC3(int fd, const void *key, void *next_key)
{
	union bpf_attr attr;

	FUNC0(&attr, 0, sizeof(attr));
	attr.map_fd = fd;
	attr.key = FUNC1(key);
	attr.next_key = FUNC1(next_key);

	return FUNC2(BPF_MAP_GET_NEXT_KEY, &attr, sizeof(attr));
}