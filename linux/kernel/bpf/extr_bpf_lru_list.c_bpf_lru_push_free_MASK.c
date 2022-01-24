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
struct bpf_lru_node {int dummy; } ;
struct bpf_lru {scalar_t__ percpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_lru*,struct bpf_lru_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_lru*,struct bpf_lru_node*) ; 

void FUNC2(struct bpf_lru *lru, struct bpf_lru_node *node)
{
	if (lru->percpu)
		FUNC1(lru, node);
	else
		FUNC0(lru, node);
}