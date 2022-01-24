#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nft_set {scalar_t__ use; int /*<<< orphan*/  name; TYPE_2__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy ) (struct nft_set*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nft_set*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nft_set*) ; 
 TYPE_1__* FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(struct nft_set *set)
{
	if (FUNC0(set->use > 0))
		return;

	set->ops->destroy(set);
	FUNC3(FUNC5(set->ops)->owner);
	FUNC1(set->name);
	FUNC2(set);
}