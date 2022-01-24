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
struct user_key_payload {int /*<<< orphan*/  rcu; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** data; } ;
struct key_preparsed_payload {TYPE_1__ payload; int /*<<< orphan*/  expiry; int /*<<< orphan*/  datalen; } ;
struct key {int /*<<< orphan*/  expiry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct user_key_payload* FUNC1 (struct key*) ; 
 scalar_t__ FUNC2 (struct key*) ; 
 int FUNC3 (struct key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  user_free_payload_rcu ; 

int FUNC5(struct key *key, struct key_preparsed_payload *prep)
{
	struct user_key_payload *zap = NULL;
	int ret;

	/* check the quota and attach the new data */
	ret = FUNC3(key, prep->datalen);
	if (ret < 0)
		return ret;

	/* attach the new data, displacing the old */
	key->expiry = prep->expiry;
	if (FUNC2(key))
		zap = FUNC1(key);
	FUNC4(key, prep->payload.data[0]);
	prep->payload.data[0] = NULL;

	if (zap)
		FUNC0(&zap->rcu, user_free_payload_rcu);
	return ret;
}