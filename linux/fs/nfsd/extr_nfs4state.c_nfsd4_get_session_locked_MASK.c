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
struct nfsd4_session {int /*<<< orphan*/  se_ref; int /*<<< orphan*/  se_client; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nfsd4_session*) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ nfserr_badsession ; 

__attribute__((used)) static __be32 FUNC3(struct nfsd4_session *ses)
{
	__be32 status;

	if (FUNC2(ses))
		return nfserr_badsession;
	status = FUNC1(ses->se_client);
	if (status)
		return status;
	FUNC0(&ses->se_ref);
	return nfs_ok;
}