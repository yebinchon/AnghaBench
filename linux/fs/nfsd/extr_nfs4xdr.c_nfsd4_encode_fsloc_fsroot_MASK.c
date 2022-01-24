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
struct svc_rqst {int dummy; } ;
struct svc_export {int /*<<< orphan*/  ex_path; } ;
struct path {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_export*) ; 
 int /*<<< orphan*/  FUNC3 (struct xdr_stream*,int /*<<< orphan*/ *,struct path const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct svc_export* FUNC5 (struct svc_rqst*) ; 

__attribute__((used)) static __be32 FUNC6(struct xdr_stream *xdr,
			struct svc_rqst *rqstp, const struct path *path)
{
	struct svc_export *exp_ps;
	__be32 res;

	exp_ps = FUNC5(rqstp);
	if (FUNC0(exp_ps))
		return FUNC4(FUNC1(exp_ps));
	res = FUNC3(xdr, &exp_ps->ex_path, path);
	FUNC2(exp_ps);
	return res;
}