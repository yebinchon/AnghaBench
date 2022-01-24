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
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct TYPE_2__ {scalar_t__ fl_type; } ;
struct nlm_lock {TYPE_1__ fl; } ;
struct nlm_args {int block; int /*<<< orphan*/  cookie; struct nlm_lock lock; } ;

/* Variables and functions */
 scalar_t__ F_WRLCK ; 
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xdr_stream*,struct nlm_lock const*) ; 

__attribute__((used)) static void FUNC3(struct rpc_rqst *req,
				  struct xdr_stream *xdr,
				  const void *data)
{
	const struct nlm_args *args = data;
	const struct nlm_lock *lock = &args->lock;

	FUNC1(xdr, &args->cookie);
	FUNC0(xdr, args->block);
	FUNC0(xdr, lock->fl.fl_type == F_WRLCK);
	FUNC2(xdr, lock);
}