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
struct user_namespace {int dummy; } ;
struct nfs3_readdirres {int /*<<< orphan*/  verf; int /*<<< orphan*/  dir_attr; } ;

/* Variables and functions */
 int FUNC0 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xdr_stream*) ; 
 int FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,struct user_namespace*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct xdr_stream *xdr,
				struct nfs3_readdirres *result,
				struct user_namespace *userns)
{
	int error;

	error = FUNC2(xdr, result->dir_attr, userns);
	if (FUNC3(error))
		goto out;
	/* XXX: do we need to check if result->verf != NULL ? */
	error = FUNC0(xdr, result->verf);
	if (FUNC3(error))
		goto out;
	error = FUNC1(xdr);
out:
	return error;
}