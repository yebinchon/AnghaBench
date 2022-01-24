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
struct pollfd {int dummy; } ;
struct fdarray {int nr_alloc; struct pollfd* priv; struct pollfd* entries; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct pollfd*) ; 
 void* FUNC1 (struct pollfd*,size_t) ; 

int FUNC2(struct fdarray *fda, int nr)
{
	void *priv;
	int nr_alloc = fda->nr_alloc + nr;
	size_t psize = sizeof(fda->priv[0]) * nr_alloc;
	size_t size  = sizeof(struct pollfd) * nr_alloc;
	struct pollfd *entries = FUNC1(fda->entries, size);

	if (entries == NULL)
		return -ENOMEM;

	priv = FUNC1(fda->priv, psize);
	if (priv == NULL) {
		FUNC0(entries);
		return -ENOMEM;
	}

	fda->nr_alloc = nr_alloc;
	fda->entries  = entries;
	fda->priv     = priv;
	return 0;
}