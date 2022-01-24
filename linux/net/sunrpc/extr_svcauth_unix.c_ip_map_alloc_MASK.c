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
struct cache_head {int dummy; } ;
struct ip_map {struct cache_head h; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ip_map* FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cache_head *FUNC1(void)
{
	struct ip_map *i = FUNC0(sizeof(*i), GFP_KERNEL);
	if (i)
		return &i->h;
	else
		return NULL;
}