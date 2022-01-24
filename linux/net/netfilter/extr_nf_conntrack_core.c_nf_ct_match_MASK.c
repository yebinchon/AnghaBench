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
struct TYPE_2__ {int /*<<< orphan*/  tuple; } ;

/* Variables and functions */
 size_t IP_CT_DIR_ORIGINAL ; 
 size_t IP_CT_DIR_REPLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn const*) ; 
 scalar_t__ FUNC4 (struct nf_conn const*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static inline bool
FUNC5(const struct nf_conn *ct1, const struct nf_conn *ct2)
{
	return FUNC2(&ct1->tuplehash[IP_CT_DIR_ORIGINAL].tuple,
				 &ct2->tuplehash[IP_CT_DIR_ORIGINAL].tuple) &&
	       FUNC2(&ct1->tuplehash[IP_CT_DIR_REPLY].tuple,
				 &ct2->tuplehash[IP_CT_DIR_REPLY].tuple) &&
	       FUNC4(ct1, FUNC3(ct2), IP_CT_DIR_ORIGINAL) &&
	       FUNC4(ct1, FUNC3(ct2), IP_CT_DIR_REPLY) &&
	       FUNC0(FUNC1(ct1), FUNC1(ct2));
}