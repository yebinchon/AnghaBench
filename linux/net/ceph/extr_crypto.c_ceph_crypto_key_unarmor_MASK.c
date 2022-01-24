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
struct ceph_crypto_key {int /*<<< orphan*/  len; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC0 (struct ceph_crypto_key*,void**,void*) ; 
 int FUNC1 (void*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 

int FUNC6(struct ceph_crypto_key *key, const char *inkey)
{
	int inlen = FUNC5(inkey);
	int blen = inlen * 3 / 4;
	void *buf, *p;
	int ret;

	FUNC2("crypto_key_unarmor %s\n", inkey);
	buf = FUNC4(blen, GFP_NOFS);
	if (!buf)
		return -ENOMEM;
	blen = FUNC1(buf, inkey, inkey+inlen);
	if (blen < 0) {
		FUNC3(buf);
		return blen;
	}

	p = buf;
	ret = FUNC0(key, &p, p + blen);
	FUNC3(buf);
	if (ret)
		return ret;
	FUNC2("crypto_key_unarmor key %p type %d len %d\n", key,
	     key->type, key->len);
	return 0;
}