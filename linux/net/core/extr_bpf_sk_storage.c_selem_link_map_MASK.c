#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bucket {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct bpf_sk_storage_map {int dummy; } ;
struct bpf_sk_storage_elem {int /*<<< orphan*/  map_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  smap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bpf_sk_storage_map*) ; 
 TYPE_1__* FUNC1 (struct bpf_sk_storage_elem*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct bucket* FUNC5 (struct bpf_sk_storage_map*,struct bpf_sk_storage_elem*) ; 

__attribute__((used)) static void FUNC6(struct bpf_sk_storage_map *smap,
			   struct bpf_sk_storage_elem *selem)
{
	struct bucket *b = FUNC5(smap, selem);

	FUNC3(&b->lock);
	FUNC0(FUNC1(selem)->smap, smap);
	FUNC2(&selem->map_node, &b->list);
	FUNC4(&b->lock);
}