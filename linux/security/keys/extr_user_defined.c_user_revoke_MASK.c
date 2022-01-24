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
struct user_key_payload {int /*<<< orphan*/  rcu; } ;
struct key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  user_free_payload_rcu ; 
 struct user_key_payload* FUNC3 (struct key*) ; 

void FUNC4(struct key *key)
{
	struct user_key_payload *upayload = FUNC3(key);

	/* clear the quota */
	FUNC1(key, 0);

	if (upayload) {
		FUNC2(key, NULL);
		FUNC0(&upayload->rcu, user_free_payload_rcu);
	}
}