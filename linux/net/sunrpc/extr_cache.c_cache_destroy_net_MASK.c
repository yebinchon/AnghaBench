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
struct net {int dummy; } ;
struct cache_detail {struct cache_detail* hash_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache_detail*) ; 

void FUNC1(struct cache_detail *cd, struct net *net)
{
	FUNC0(cd->hash_table);
	FUNC0(cd);
}