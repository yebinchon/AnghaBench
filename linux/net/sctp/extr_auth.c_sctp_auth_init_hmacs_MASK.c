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
struct sctp_endpoint {struct crypto_shash** auth_hmacs; } ;
struct crypto_shash {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  size_t __u16 ;
struct TYPE_2__ {int /*<<< orphan*/  hmac_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 size_t SCTP_AUTH_NUM_HMACS ; 
 struct crypto_shash* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_shash** FUNC2 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_shash**) ; 
 TYPE_1__* sctp_hmac_list ; 

int FUNC4(struct sctp_endpoint *ep, gfp_t gfp)
{
	struct crypto_shash *tfm = NULL;
	__u16   id;

	/* If the transforms are already allocated, we are done */
	if (ep->auth_hmacs)
		return 0;

	/* Allocated the array of pointers to transorms */
	ep->auth_hmacs = FUNC2(SCTP_AUTH_NUM_HMACS,
				 sizeof(struct crypto_shash *),
				 gfp);
	if (!ep->auth_hmacs)
		return -ENOMEM;

	for (id = 0; id < SCTP_AUTH_NUM_HMACS; id++) {

		/* See is we support the id.  Supported IDs have name and
		 * length fields set, so that we can allocated and use
		 * them.  We can safely just check for name, for without the
		 * name, we can't allocate the TFM.
		 */
		if (!sctp_hmac_list[id].hmac_name)
			continue;

		/* If this TFM has been allocated, we are all set */
		if (ep->auth_hmacs[id])
			continue;

		/* Allocate the ID */
		tfm = FUNC1(sctp_hmac_list[id].hmac_name, 0, 0);
		if (FUNC0(tfm))
			goto out_err;

		ep->auth_hmacs[id] = tfm;
	}

	return 0;

out_err:
	/* Clean up any successful allocations */
	FUNC3(ep->auth_hmacs);
	return -ENOMEM;
}