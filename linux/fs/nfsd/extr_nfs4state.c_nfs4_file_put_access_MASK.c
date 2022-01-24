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
struct nfs4_file {int dummy; } ;

/* Variables and functions */
 int NFS4_SHARE_ACCESS_BOTH ; 
 int NFS4_SHARE_ACCESS_READ ; 
 int NFS4_SHARE_ACCESS_WRITE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct nfs4_file *fp, u32 access)
{
	FUNC0(access & ~NFS4_SHARE_ACCESS_BOTH);

	if (access & NFS4_SHARE_ACCESS_WRITE)
		FUNC1(fp, O_WRONLY);
	if (access & NFS4_SHARE_ACCESS_READ)
		FUNC1(fp, O_RDONLY);
}