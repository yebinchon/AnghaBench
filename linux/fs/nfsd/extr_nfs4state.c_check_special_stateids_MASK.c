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
typedef  int /*<<< orphan*/  svc_fh ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  stateid_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_SHARE_DENY_READ ; 
 int /*<<< orphan*/  NFS4_SHARE_DENY_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int RD_STATE ; 
 int WR_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_ok ; 
 int /*<<< orphan*/  nfserr_grace ; 
 scalar_t__ FUNC2 (struct net*) ; 

__attribute__((used)) static inline __be32
FUNC3(struct net *net, svc_fh *current_fh, stateid_t *stateid, int flags)
{
	if (FUNC0(stateid) && (flags & RD_STATE))
		return nfs_ok;
	else if (FUNC2(net)) {
		/* Answer in remaining cases depends on existence of
		 * conflicting state; so we must wait out the grace period. */
		return nfserr_grace;
	} else if (flags & WR_STATE)
		return FUNC1(current_fh,
				NFS4_SHARE_DENY_WRITE);
	else /* (flags & RD_STATE) && ZERO_STATEID(stateid) */
		return FUNC1(current_fh,
				NFS4_SHARE_DENY_READ);
}