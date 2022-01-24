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
struct dst_entry {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* confirm_neigh ) (struct dst_entry const*,void const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dst_entry const*,void const*) ; 
 struct dst_entry* FUNC1 (struct dst_entry const*) ; 
 void* FUNC2 (struct dst_entry const*,void const*) ; 

__attribute__((used)) static void FUNC3(const struct dst_entry *dst, const void *daddr)
{
	const struct dst_entry *path = FUNC1(dst);

	daddr = FUNC2(dst, daddr);
	path->ops->confirm_neigh(path, daddr);
}