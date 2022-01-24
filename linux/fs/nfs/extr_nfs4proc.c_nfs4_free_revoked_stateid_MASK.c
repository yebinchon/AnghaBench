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
struct nfs_server {int dummy; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_server*,int /*<<< orphan*/ *,struct cred const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC2(struct nfs_server *server,
		const nfs4_stateid *stateid,
		const struct cred *cred)
{
	nfs4_stateid tmp;

	FUNC1(&tmp, stateid);
	FUNC0(server, &tmp, cred);
}