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
struct hlist_head {int dummy; } ;
struct cache_detail {int hash_size; struct net* net; int /*<<< orphan*/ * hash_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct cache_detail* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_detail*) ; 
 struct cache_detail* FUNC4 (struct cache_detail const*,int,int /*<<< orphan*/ ) ; 

struct cache_detail *FUNC5(const struct cache_detail *tmpl, struct net *net)
{
	struct cache_detail *cd;
	int i;

	cd = FUNC4(tmpl, sizeof(struct cache_detail), GFP_KERNEL);
	if (cd == NULL)
		return FUNC0(-ENOMEM);

	cd->hash_table = FUNC2(cd->hash_size, sizeof(struct hlist_head),
				 GFP_KERNEL);
	if (cd->hash_table == NULL) {
		FUNC3(cd);
		return FUNC0(-ENOMEM);
	}

	for (i = 0; i < cd->hash_size; i++)
		FUNC1(&cd->hash_table[i]);
	cd->net = net;
	return cd;
}