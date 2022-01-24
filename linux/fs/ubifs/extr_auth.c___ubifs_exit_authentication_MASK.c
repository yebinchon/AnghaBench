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
struct ubifs_info {int /*<<< orphan*/  log_hash; int /*<<< orphan*/  hash_tfm; int /*<<< orphan*/  hmac_tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*) ; 

void FUNC3(struct ubifs_info *c)
{
	if (!FUNC2(c))
		return;

	FUNC0(c->hmac_tfm);
	FUNC0(c->hash_tfm);
	FUNC1(c->log_hash);
}