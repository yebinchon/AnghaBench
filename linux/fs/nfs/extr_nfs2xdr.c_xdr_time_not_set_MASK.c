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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS2_SATTR_NOT_SET ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 *FUNC1(__be32 *p)
{
	*p++ = FUNC0(NFS2_SATTR_NOT_SET);
	*p++ = FUNC0(NFS2_SATTR_NOT_SET);
	return p;
}