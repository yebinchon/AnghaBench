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
struct request_key_auth {int /*<<< orphan*/  rcu; } ;
struct key {int /*<<< orphan*/  serial; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct request_key_auth* FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  request_key_auth_rcu_disposal ; 

__attribute__((used)) static void FUNC4(struct key *key)
{
	struct request_key_auth *rka = FUNC1(key);

	FUNC2("{%d}", key->serial);
	FUNC3(key, NULL);
	FUNC0(&rka->rcu, request_key_auth_rcu_disposal);
}