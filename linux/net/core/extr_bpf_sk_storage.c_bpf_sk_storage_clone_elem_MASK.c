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
struct sock {int dummy; } ;
struct bpf_sk_storage_map {int /*<<< orphan*/  map; } ;
struct bpf_sk_storage_elem {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct bpf_sk_storage_elem*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct bpf_sk_storage_elem* FUNC4 (struct bpf_sk_storage_map*,struct sock*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct bpf_sk_storage_elem *
FUNC5(struct sock *newsk,
			  struct bpf_sk_storage_map *smap,
			  struct bpf_sk_storage_elem *selem)
{
	struct bpf_sk_storage_elem *copy_selem;

	copy_selem = FUNC4(smap, newsk, NULL, true);
	if (!copy_selem)
		return NULL;

	if (FUNC3(&smap->map))
		FUNC2(&smap->map, FUNC0(copy_selem)->data,
				      FUNC0(selem)->data, true);
	else
		FUNC1(&smap->map, FUNC0(copy_selem)->data,
			       FUNC0(selem)->data);

	return copy_selem;
}