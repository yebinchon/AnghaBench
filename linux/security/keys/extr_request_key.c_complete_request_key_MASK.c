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
struct request_key_auth {struct key* target_key; } ;
struct key {int /*<<< orphan*/  serial; } ;

/* Variables and functions */
 struct request_key_auth* FUNC0 (struct key*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct key*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct key*) ; 
 int /*<<< orphan*/  key_negative_timeout ; 
 int /*<<< orphan*/  FUNC3 (struct key*) ; 

void FUNC4(struct key *authkey, int error)
{
	struct request_key_auth *rka = FUNC0(authkey);
	struct key *key = rka->target_key;

	FUNC1("%d{%d},%d", authkey->serial, key->serial, error);

	if (error < 0)
		FUNC2(key, key_negative_timeout, NULL, authkey);
	else
		FUNC3(authkey);
}