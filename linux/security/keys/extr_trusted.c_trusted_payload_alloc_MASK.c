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
struct trusted_key_payload {int migratable; } ;
struct key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct key*,int) ; 
 struct trusted_key_payload* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct trusted_key_payload *FUNC2(struct key *key)
{
	struct trusted_key_payload *p = NULL;
	int ret;

	ret = FUNC0(key, sizeof *p);
	if (ret < 0)
		return p;
	p = FUNC1(sizeof *p, GFP_KERNEL);
	if (p)
		p->migratable = 1; /* migratable by default */
	return p;
}