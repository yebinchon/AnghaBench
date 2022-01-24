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
struct svc_expkey {int ek_fsidtype; int /*<<< orphan*/  ek_client; scalar_t__ ek_fsid; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXPKEY_HASHBITS ; 
 int EXPKEY_HASHMASK ; 
 int FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct svc_expkey *item)
{
	int hash = item->ek_fsidtype;
	char * cp = (char*)item->ek_fsid;
	int len = FUNC2(item->ek_fsidtype);

	hash ^= FUNC0(cp, len, EXPKEY_HASHBITS);
	hash ^= FUNC1(item->ek_client, EXPKEY_HASHBITS);
	hash &= EXPKEY_HASHMASK;
	return hash;
}