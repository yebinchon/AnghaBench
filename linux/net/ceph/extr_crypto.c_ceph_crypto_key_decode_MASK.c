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
typedef  int /*<<< orphan*/  u16 ;
struct ceph_crypto_key {int len; int /*<<< orphan*/  created; void* type; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  bad ; 
 void* FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (void**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct ceph_crypto_key*,void*) ; 

int FUNC5(struct ceph_crypto_key *key, void **p, void *end)
{
	int ret;

	FUNC2(p, end, 2*sizeof(u16) + sizeof(key->created), bad);
	key->type = FUNC0(p);
	FUNC1(p, &key->created, sizeof(key->created));
	key->len = FUNC0(p);
	FUNC2(p, end, key->len, bad);
	ret = FUNC4(key, *p);
	*p += key->len;
	return ret;

bad:
	FUNC3("failed to decode crypto key\n");
	return -EINVAL;
}