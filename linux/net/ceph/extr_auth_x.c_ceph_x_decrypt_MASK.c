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
struct ceph_crypto_key {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct ceph_crypto_key*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e_inval ; 

__attribute__((used)) static int FUNC3(struct ceph_crypto_key *secret, void **p, void *end)
{
	int ciphertext_len;
	int ret;

	FUNC1(p, end, ciphertext_len, e_inval);
	FUNC2(p, end, ciphertext_len, e_inval);

	ret = FUNC0(secret, *p, ciphertext_len);
	if (ret < 0)
		return ret;

	*p += ciphertext_len;
	return ret;

e_inval:
	return -EINVAL;
}