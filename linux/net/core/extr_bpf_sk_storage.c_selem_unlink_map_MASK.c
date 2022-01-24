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
struct bucket {int /*<<< orphan*/  lock; } ;
struct bpf_sk_storage_map {int dummy; } ;
struct bpf_sk_storage_elem {int /*<<< orphan*/  map_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  smap; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct bpf_sk_storage_elem*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct bpf_sk_storage_map* FUNC5 (int /*<<< orphan*/ ) ; 
 struct bucket* FUNC6 (struct bpf_sk_storage_map*,struct bpf_sk_storage_elem*) ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_sk_storage_elem*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct bpf_sk_storage_elem *selem)
{
	struct bpf_sk_storage_map *smap;
	struct bucket *b;

	if (FUNC8(!FUNC7(selem)))
		/* selem has already be unlinked from smap */
		return;

	smap = FUNC5(FUNC0(selem)->smap);
	b = FUNC6(smap, selem);
	FUNC3(&b->lock);
	if (FUNC2(FUNC7(selem)))
		FUNC1(&selem->map_node);
	FUNC4(&b->lock);
}