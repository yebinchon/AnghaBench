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
struct ceph_crypto_key {int len; int type; int /*<<< orphan*/ * key; int /*<<< orphan*/  created; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (void**,int) ; 
 int /*<<< orphan*/  FUNC1 (void**,int /*<<< orphan*/ *,int) ; 

int FUNC2(struct ceph_crypto_key *key, void **p, void *end)
{
	if (*p + sizeof(u16) + sizeof(key->created) +
	    sizeof(u16) + key->len > end)
		return -ERANGE;
	FUNC0(p, key->type);
	FUNC1(p, &key->created, sizeof(key->created));
	FUNC0(p, key->len);
	FUNC1(p, key->key, key->len);
	return 0;
}