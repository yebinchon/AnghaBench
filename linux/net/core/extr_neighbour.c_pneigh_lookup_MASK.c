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
typedef  size_t u32 ;
struct pneigh_entry {struct pneigh_entry* next; struct net_device* dev; int /*<<< orphan*/  key; int /*<<< orphan*/  net; scalar_t__ protocol; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct neigh_table {unsigned int key_len; int /*<<< orphan*/  lock; struct pneigh_entry** phash_buckets; scalar_t__ (* pconstructor ) (struct pneigh_entry*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pneigh_entry* FUNC1 (struct pneigh_entry*,struct net*,void const*,unsigned int,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pneigh_entry*) ; 
 struct pneigh_entry* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void const*,unsigned int) ; 
 size_t FUNC7 (void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct pneigh_entry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct net*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

struct pneigh_entry * FUNC14(struct neigh_table *tbl,
				    struct net *net, const void *pkey,
				    struct net_device *dev, int creat)
{
	struct pneigh_entry *n;
	unsigned int key_len = tbl->key_len;
	u32 hash_val = FUNC7(pkey, key_len);

	FUNC8(&tbl->lock);
	n = FUNC1(tbl->phash_buckets[hash_val],
			      net, pkey, key_len, dev);
	FUNC9(&tbl->lock);

	if (n || !creat)
		goto out;

	FUNC0();

	n = FUNC5(sizeof(*n) + key_len, GFP_KERNEL);
	if (!n)
		goto out;

	n->protocol = 0;
	FUNC12(&n->net, net);
	FUNC6(n->key, pkey, key_len);
	n->dev = dev;
	if (dev)
		FUNC2(dev);

	if (tbl->pconstructor && tbl->pconstructor(n)) {
		if (dev)
			FUNC3(dev);
		FUNC4(n);
		n = NULL;
		goto out;
	}

	FUNC11(&tbl->lock);
	n->next = tbl->phash_buckets[hash_val];
	tbl->phash_buckets[hash_val] = n;
	FUNC13(&tbl->lock);
out:
	return n;
}