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
typedef  size_t u32 ;
struct hlist_head {int dummy; } ;
struct TYPE_2__ {struct batadv_hashtable* local_hash; } ;
struct batadv_priv {TYPE_1__ tt; } ;
struct batadv_hashtable {size_t size; int /*<<< orphan*/ * list_locks; struct hlist_head* table; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,struct hlist_head*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct batadv_priv *bat_priv,
				  int timeout)
{
	struct batadv_hashtable *hash = bat_priv->tt.local_hash;
	struct hlist_head *head;
	spinlock_t *list_lock; /* protects write access to the hash lists */
	u32 i;

	for (i = 0; i < hash->size; i++) {
		head = &hash->table[i];
		list_lock = &hash->list_locks[i];

		FUNC1(list_lock);
		FUNC0(bat_priv, head, timeout);
		FUNC2(list_lock);
	}
}