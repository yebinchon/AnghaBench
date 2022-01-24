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
struct bpf_lru_node {int dummy; } ;
struct bpf_lru {scalar_t__ percpu; } ;

/* Variables and functions */
 struct bpf_lru_node* FUNC0 (struct bpf_lru*,int /*<<< orphan*/ ) ; 
 struct bpf_lru_node* FUNC1 (struct bpf_lru*,int /*<<< orphan*/ ) ; 

struct bpf_lru_node *FUNC2(struct bpf_lru *lru, u32 hash)
{
	if (lru->percpu)
		return FUNC1(lru, hash);
	else
		return FUNC0(lru, hash);
}