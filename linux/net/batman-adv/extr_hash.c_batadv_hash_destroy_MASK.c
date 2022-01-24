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
struct batadv_hashtable {struct batadv_hashtable* table; struct batadv_hashtable* list_locks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct batadv_hashtable*) ; 

void FUNC1(struct batadv_hashtable *hash)
{
	FUNC0(hash->list_locks);
	FUNC0(hash->table);
	FUNC0(hash);
}