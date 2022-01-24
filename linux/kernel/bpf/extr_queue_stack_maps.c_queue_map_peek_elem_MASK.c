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
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bpf_map*,void*,int) ; 

__attribute__((used)) static int FUNC1(struct bpf_map *map, void *value)
{
	return FUNC0(map, value, false);
}