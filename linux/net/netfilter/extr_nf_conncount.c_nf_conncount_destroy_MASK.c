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
struct nf_conncount_data {int /*<<< orphan*/ * root; int /*<<< orphan*/  gc_work; } ;
struct net {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conncount_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,unsigned int) ; 

void FUNC5(struct net *net, unsigned int family,
			  struct nf_conncount_data *data)
{
	unsigned int i;

	FUNC1(&data->gc_work);
	FUNC4(net, family);

	for (i = 0; i < FUNC0(data->root); ++i)
		FUNC2(&data->root[i]);

	FUNC3(data);
}