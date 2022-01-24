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
struct nfsd4_copy {int dummy; } ;
struct nfs4_client {int dummy; } ;

/* Variables and functions */
 struct nfsd4_copy* FUNC0 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsd4_copy*) ; 

void FUNC2(struct nfs4_client *clp)
{
	struct nfsd4_copy *copy;

	while ((copy = FUNC0(clp)) != NULL)
		FUNC1(copy);
}