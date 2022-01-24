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
struct modsig {int dummy; } ;
struct key {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct key*) ; 
 int FUNC1 (struct key*) ; 
 int FUNC2 (struct key*,struct modsig const*) ; 
 struct key* FUNC3 (unsigned int const) ; 

int FUNC4(const unsigned int id, const struct modsig *modsig)
{
	struct key *keyring;

	keyring = FUNC3(id);
	if (FUNC0(keyring))
		return FUNC1(keyring);

	return FUNC2(keyring, modsig);
}