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
struct bpf_insn_aux_data {unsigned long map_state; } ;

/* Variables and functions */
 scalar_t__ BPF_MAP_PTR_POISON ; 
 unsigned long BPF_MAP_PTR_UNPRIV ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 (struct bpf_insn_aux_data*) ; 

__attribute__((used)) static void FUNC2(struct bpf_insn_aux_data *aux,
			      const struct bpf_map *map, bool unpriv)
{
	FUNC0((unsigned long)BPF_MAP_PTR_POISON & BPF_MAP_PTR_UNPRIV);
	unpriv |= FUNC1(aux);
	aux->map_state = (unsigned long)map |
			 (unpriv ? BPF_MAP_PTR_UNPRIV : 0UL);
}