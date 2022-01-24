#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nf_conn {TYPE_1__* tuplehash; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tuple; } ;

/* Variables and functions */
 size_t IP_CT_DIR_ORIGINAL ; 
 size_t IP_CT_DIR_REPLY ; 
 int /*<<< orphan*/  FUNC0 (struct nf_conn*) ; 
 unsigned int FUNC1 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct net*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  nf_conntrack_generation ; 
 int /*<<< orphan*/  FUNC6 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct nf_conn*) ; 
 struct net* FUNC8 (struct nf_conn*) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct nf_conn *ct)
{
	struct net *net = FUNC8(ct);
	unsigned int hash, reply_hash;
	unsigned int sequence;

	FUNC7(ct);

	FUNC2();
	do {
		sequence = FUNC9(&nf_conntrack_generation);
		hash = FUNC1(net,
				      &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple);
		reply_hash = FUNC1(net,
					   &ct->tuplehash[IP_CT_DIR_REPLY].tuple);
	} while (FUNC4(net, hash, reply_hash, sequence));

	FUNC0(ct);
	FUNC5(hash, reply_hash);

	FUNC6(ct);

	FUNC3();
}