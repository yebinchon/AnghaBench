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
struct request_key_auth {int /*<<< orphan*/  rcu; } ;
struct TYPE_2__ {int /*<<< orphan*/  rcu_data0; } ;
struct key {int /*<<< orphan*/  serial; TYPE_1__ payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct request_key_auth* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  request_key_auth_rcu_disposal ; 

__attribute__((used)) static void FUNC4(struct key *key)
{
	struct request_key_auth *rka = FUNC2(key->payload.rcu_data0);

	FUNC1("{%d}", key->serial);
	if (rka) {
		FUNC3(key, NULL);
		FUNC0(&rka->rcu, request_key_auth_rcu_disposal);
	}
}