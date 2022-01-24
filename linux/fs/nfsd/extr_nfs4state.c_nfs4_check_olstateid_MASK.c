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
struct nfs4_ol_stateid {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs4_ol_stateid*,int) ; 
 scalar_t__ FUNC1 (struct nfs4_ol_stateid*) ; 

__attribute__((used)) static __be32
FUNC2(struct nfs4_ol_stateid *ols, int flags)
{
	__be32 status;

	status = FUNC1(ols);
	if (status)
		return status;
	return FUNC0(ols, flags);
}