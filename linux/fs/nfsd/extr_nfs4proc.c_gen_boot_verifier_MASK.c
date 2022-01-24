#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net {int dummy; } ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef  TYPE_1__ nfs4_verifier ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 

__attribute__((used)) static void FUNC3(nfs4_verifier *verifier, struct net *net)
{
	__be32 *verf = (__be32 *)verifier->data;

	FUNC0(2*sizeof(*verf) != sizeof(verifier->data));

	FUNC2(verf, FUNC1(net, nfsd_net_id));
}