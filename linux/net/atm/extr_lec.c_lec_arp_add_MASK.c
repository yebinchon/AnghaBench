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
struct lec_priv {struct hlist_head* lec_arp_tables; } ;
struct lec_arp_table {int /*<<< orphan*/ * mac_addr; int /*<<< orphan*/  next; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(struct lec_priv *priv, struct lec_arp_table *entry)
{
	struct hlist_head *tmp;

	tmp = &priv->lec_arp_tables[FUNC0(entry->mac_addr[ETH_ALEN - 1])];
	FUNC1(&entry->next, tmp);

	FUNC2("Added entry:%pM\n", entry->mac_addr);
}