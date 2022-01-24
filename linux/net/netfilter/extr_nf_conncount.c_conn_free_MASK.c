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
struct nf_conncount_tuple {int /*<<< orphan*/  node; } ;
struct nf_conncount_list {int /*<<< orphan*/  count; int /*<<< orphan*/  list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  conncount_conn_cachep ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nf_conncount_tuple*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nf_conncount_list *list,
		      struct nf_conncount_tuple *conn)
{
	FUNC2(&list->list_lock);

	list->count--;
	FUNC1(&conn->node);

	FUNC0(conncount_conn_cachep, conn);
}