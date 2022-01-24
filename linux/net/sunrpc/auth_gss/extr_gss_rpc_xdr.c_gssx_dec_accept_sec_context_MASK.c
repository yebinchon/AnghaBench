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
typedef  scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct page {int dummy; } ;
struct gssx_res_accept_sec_context {int /*<<< orphan*/  options; int /*<<< orphan*/ * output_token; int /*<<< orphan*/ * context_handle; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xdr_stream*,scalar_t__*) ; 
 int FUNC3 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct rpc_rqst *rqstp,
				struct xdr_stream *xdr,
				void *data)
{
	struct gssx_res_accept_sec_context *res = data;
	u32 value_follows;
	int err;
	struct page *scratch;

	scratch = FUNC1(GFP_KERNEL);
	if (!scratch)
		return -ENOMEM;
	FUNC8(xdr, FUNC7(scratch), PAGE_SIZE);

	/* res->status */
	err = FUNC6(xdr, &res->status);
	if (err)
		goto out_free;

	/* res->context_handle */
	err = FUNC2(xdr, &value_follows);
	if (err)
		goto out_free;
	if (value_follows) {
		err = FUNC4(xdr, res->context_handle);
		if (err)
			goto out_free;
	} else {
		res->context_handle = NULL;
	}

	/* res->output_token */
	err = FUNC2(xdr, &value_follows);
	if (err)
		goto out_free;
	if (value_follows) {
		err = FUNC3(xdr, res->output_token);
		if (err)
			goto out_free;
	} else {
		res->output_token = NULL;
	}

	/* res->delegated_cred_handle */
	err = FUNC2(xdr, &value_follows);
	if (err)
		goto out_free;
	if (value_follows) {
		/* we do not support upcall servers sending this data. */
		err = -EINVAL;
		goto out_free;
	}

	/* res->options */
	err = FUNC5(xdr, &res->options);

out_free:
	FUNC0(scratch);
	return err;
}