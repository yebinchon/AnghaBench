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
struct bpf_lru_list {int dummy; } ;
struct bpf_lru {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_lru*,struct bpf_lru_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_lru*,struct bpf_lru_list*) ; 
 scalar_t__ FUNC2 (struct bpf_lru_list*) ; 

__attribute__((used)) static void FUNC3(struct bpf_lru *lru, struct bpf_lru_list *l)
{
	if (FUNC2(l))
		FUNC0(lru, l);

	FUNC1(lru, l);
}