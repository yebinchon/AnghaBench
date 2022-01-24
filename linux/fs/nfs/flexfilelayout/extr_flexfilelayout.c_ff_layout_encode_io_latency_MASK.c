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
struct nfs4_ff_io_stat {int /*<<< orphan*/  aggregate_completion_time; int /*<<< orphan*/  total_busy_time; int /*<<< orphan*/  bytes_not_delivered; int /*<<< orphan*/  bytes_completed; int /*<<< orphan*/  ops_completed; int /*<<< orphan*/  bytes_requested; int /*<<< orphan*/  ops_requested; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int) ; 

__attribute__((used)) static void
FUNC3(struct xdr_stream *xdr,
			    struct nfs4_ff_io_stat *stat)
{
	__be32 *p;

	p = FUNC2(xdr, 5 * 8);
	p = FUNC1(p, stat->ops_requested);
	p = FUNC1(p, stat->bytes_requested);
	p = FUNC1(p, stat->ops_completed);
	p = FUNC1(p, stat->bytes_completed);
	p = FUNC1(p, stat->bytes_not_delivered);
	FUNC0(xdr, stat->total_busy_time);
	FUNC0(xdr, stat->aggregate_completion_time);
}