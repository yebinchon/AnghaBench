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
struct resource {unsigned long start; } ;
struct dev_pagemap {struct resource res; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 unsigned long FUNC0 (struct resource const*) ; 

__attribute__((used)) static unsigned long FUNC1(struct dev_pagemap *pgmap)
{
	const struct resource *res = &pgmap->res;

	return (res->start + FUNC0(res)) >> PAGE_SHIFT;
}