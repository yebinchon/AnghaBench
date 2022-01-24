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
struct bpf_sk_storage_elem {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_sk_storage_elem*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_sk_storage_elem*) ; 

__attribute__((used)) static void FUNC2(struct bpf_sk_storage_elem *selem)
{
	/* Always unlink from map before unlinking from sk_storage
	 * because selem will be freed after successfully unlinked from
	 * the sk_storage.
	 */
	FUNC0(selem);
	FUNC1(selem);
}