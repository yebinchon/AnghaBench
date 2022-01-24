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
struct nft_set {int dummy; } ;
struct nft_rhash {int /*<<< orphan*/  gc_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nft_set const*) ; 
 struct nft_rhash* FUNC1 (struct nft_set const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static void FUNC3(const struct nft_set *set)
{
	struct nft_rhash *priv = FUNC1(set);

	FUNC2(system_power_efficient_wq, &priv->gc_work,
			   FUNC0(set));
}