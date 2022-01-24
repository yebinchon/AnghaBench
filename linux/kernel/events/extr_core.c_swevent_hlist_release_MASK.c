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
struct swevent_htable {int /*<<< orphan*/  swevent_hlist; } ;
struct swevent_hlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct swevent_hlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 
 struct swevent_hlist* FUNC2 (struct swevent_htable*) ; 

__attribute__((used)) static void FUNC3(struct swevent_htable *swhash)
{
	struct swevent_hlist *hlist = FUNC2(swhash);

	if (!hlist)
		return;

	FUNC0(swhash->swevent_hlist, NULL);
	FUNC1(hlist, rcu_head);
}