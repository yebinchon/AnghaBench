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
struct request_key_auth {struct request_key_auth* callout_info; scalar_t__ cred; int /*<<< orphan*/  dest_keyring; int /*<<< orphan*/  target_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_key_auth*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct request_key_auth *rka)
{
	if (!rka)
		return;
	FUNC0(rka->target_key);
	FUNC0(rka->dest_keyring);
	if (rka->cred)
		FUNC2(rka->cred);
	FUNC1(rka->callout_info);
	FUNC1(rka);
}