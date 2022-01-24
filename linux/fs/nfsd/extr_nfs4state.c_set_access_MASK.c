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
struct nfs4_ol_stateid {unsigned char st_access_bmap; } ;

/* Variables and functions */
 int NFS4_SHARE_ACCESS_BOTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline void
FUNC1(u32 access, struct nfs4_ol_stateid *stp)
{
	unsigned char mask = 1 << access;

	FUNC0(access > NFS4_SHARE_ACCESS_BOTH);
	stp->st_access_bmap |= mask;
}