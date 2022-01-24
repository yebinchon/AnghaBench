#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct ceph_crypto_key** data; } ;
struct key_preparsed_payload {size_t datalen; size_t quotalen; TYPE_1__ payload; scalar_t__ data; } ;
struct ceph_crypto_key {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct ceph_crypto_key*,void**,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_crypto_key*) ; 
 struct ceph_crypto_key* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct key_preparsed_payload *prep)
{
	struct ceph_crypto_key *ckey;
	size_t datalen = prep->datalen;
	int ret;
	void *p;

	ret = -EINVAL;
	if (datalen <= 0 || datalen > 32767 || !prep->data)
		goto err;

	ret = -ENOMEM;
	ckey = FUNC2(sizeof(*ckey), GFP_KERNEL);
	if (!ckey)
		goto err;

	/* TODO ceph_crypto_key_decode should really take const input */
	p = (void *)prep->data;
	ret = FUNC0(ckey, &p, (char*)prep->data+datalen);
	if (ret < 0)
		goto err_ckey;

	prep->payload.data[0] = ckey;
	prep->quotalen = datalen;
	return 0;

err_ckey:
	FUNC1(ckey);
err:
	return ret;
}