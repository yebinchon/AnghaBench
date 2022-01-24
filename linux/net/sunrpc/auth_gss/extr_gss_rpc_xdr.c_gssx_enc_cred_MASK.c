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
struct xdr_stream {int dummy; } ;
struct gssx_cred {int /*<<< orphan*/  needs_release; int /*<<< orphan*/  cred_handle_reference; int /*<<< orphan*/  elements; int /*<<< orphan*/  desired_name; } ;

/* Variables and functions */
 int FUNC0 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct xdr_stream*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct xdr_stream *xdr,
			 struct gssx_cred *cred)
{
	int err;

	/* cred->desired_name */
	err = FUNC3(xdr, &cred->desired_name);
	if (err)
		return err;

	/* cred->elements */
	err = FUNC0(xdr, &cred->elements);
	if (err)
		return err;

	/* cred->cred_handle_reference */
	err = FUNC2(xdr, &cred->cred_handle_reference);
	if (err)
		return err;

	/* cred->needs_release */
	err = FUNC1(xdr, cred->needs_release);

	return err;
}