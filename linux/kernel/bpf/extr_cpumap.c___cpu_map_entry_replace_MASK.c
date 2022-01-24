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
typedef  size_t u32 ;
struct bpf_cpu_map_entry {int /*<<< orphan*/  kthread_stop_wq; int /*<<< orphan*/  rcu; } ;
struct bpf_cpu_map {int /*<<< orphan*/ * cpu_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __cpu_map_entry_free ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_map_kthread_stop ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bpf_cpu_map_entry* FUNC3 (int /*<<< orphan*/ *,struct bpf_cpu_map_entry*) ; 

__attribute__((used)) static void FUNC4(struct bpf_cpu_map *cmap,
				    u32 key_cpu, struct bpf_cpu_map_entry *rcpu)
{
	struct bpf_cpu_map_entry *old_rcpu;

	old_rcpu = FUNC3(&cmap->cpu_map[key_cpu], rcpu);
	if (old_rcpu) {
		FUNC1(&old_rcpu->rcu, __cpu_map_entry_free);
		FUNC0(&old_rcpu->kthread_stop_wq, cpu_map_kthread_stop);
		FUNC2(&old_rcpu->kthread_stop_wq);
	}
}