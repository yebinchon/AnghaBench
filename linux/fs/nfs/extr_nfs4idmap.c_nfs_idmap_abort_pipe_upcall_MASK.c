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
struct idmap {int /*<<< orphan*/ * idmap_upcall_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct idmap*,int) ; 

__attribute__((used)) static void
FUNC1(struct idmap *idmap, int ret)
{
	if (idmap->idmap_upcall_data != NULL)
		FUNC0(idmap, ret);
}