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
struct nfs_client {int /*<<< orphan*/  cl_ipaddr; } ;

/* Variables and functions */
 unsigned int FUNC0 (char*,size_t,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static unsigned int
FUNC2(const struct nfs_client *clp, char *buf, size_t len)
{
	if (FUNC1(clp->cl_ipaddr, ':') != NULL)
		return FUNC0(buf, len, "tcp6");
	else
		return FUNC0(buf, len, "tcp");
}