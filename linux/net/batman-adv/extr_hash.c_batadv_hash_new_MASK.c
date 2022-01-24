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
typedef  int /*<<< orphan*/  u32 ;
struct batadv_hashtable {struct batadv_hashtable* table; int /*<<< orphan*/  size; void* list_locks; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_hashtable*) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_hashtable*) ; 
 struct batadv_hashtable* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

struct batadv_hashtable *FUNC4(u32 size)
{
	struct batadv_hashtable *hash;

	hash = FUNC2(sizeof(*hash), GFP_ATOMIC);
	if (!hash)
		return NULL;

	hash->table = FUNC3(size, sizeof(*hash->table), GFP_ATOMIC);
	if (!hash->table)
		goto free_hash;

	hash->list_locks = FUNC3(size, sizeof(*hash->list_locks),
					 GFP_ATOMIC);
	if (!hash->list_locks)
		goto free_table;

	hash->size = size;
	FUNC0(hash);
	return hash;

free_table:
	FUNC1(hash->table);
free_hash:
	FUNC1(hash);
	return NULL;
}