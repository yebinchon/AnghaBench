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
struct nfs3_createargs {int createmode; int /*<<< orphan*/  verifier; int /*<<< orphan*/  sattr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  NFS3_CREATE_EXCLUSIVE 130 
#define  NFS3_CREATE_GUARDED 129 
#define  NFS3_CREATE_UNCHECKED 128 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ,struct user_namespace*) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int) ; 

__attribute__((used)) static void FUNC4(struct xdr_stream *xdr,
			      const struct nfs3_createargs *args,
			      struct user_namespace *userns)
{
	FUNC3(xdr, args->createmode);
	switch (args->createmode) {
	case NFS3_CREATE_UNCHECKED:
	case NFS3_CREATE_GUARDED:
		FUNC2(xdr, args->sattr, userns);
		break;
	case NFS3_CREATE_EXCLUSIVE:
		FUNC1(xdr, args->verifier);
		break;
	default:
		FUNC0();
	}
}