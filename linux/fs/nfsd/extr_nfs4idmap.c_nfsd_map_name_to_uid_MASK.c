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
typedef  int u32 ;
struct svc_rqst {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  IDMAP_TYPE_USER ; 
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*,int /*<<< orphan*/ ,char const*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_rqst*) ; 
 int /*<<< orphan*/  nfserr_badowner ; 
 int /*<<< orphan*/  nfserr_inval ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__be32
FUNC4(struct svc_rqst *rqstp, const char *name, size_t namelen,
		kuid_t *uid)
{
	__be32 status;
	u32 id = -1;

	if (name == NULL || namelen == 0)
		return nfserr_inval;

	status = FUNC0(rqstp, IDMAP_TYPE_USER, name, namelen, &id);
	*uid = FUNC1(FUNC2(rqstp), id);
	if (!FUNC3(*uid))
		status = nfserr_badowner;
	return status;
}