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
struct nfs_client {int cl_state; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS4CLNT_CHECK_LEASE ; 
 int /*<<< orphan*/  NFS4CLNT_LEASE_EXPIRED ; 
 int /*<<< orphan*/  NFS4CLNT_SESSION_RESET ; 

__attribute__((used)) static inline bool FUNC1(const struct nfs_client *clp)
{
	return (clp->cl_state & (FUNC0(NFS4CLNT_CHECK_LEASE) |
				FUNC0(NFS4CLNT_LEASE_EXPIRED) |
				FUNC0(NFS4CLNT_SESSION_RESET))) != 0;
}