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
struct nft_rule {int dummy; } ;
struct nft_chain {struct nft_rule** rules_next; int /*<<< orphan*/  rules_gen_0; int /*<<< orphan*/  rules_gen_1; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*) ; 
 int /*<<< orphan*/  FUNC1 (struct nft_rule**) ; 
 int FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nft_rule**) ; 
 struct nft_rule** FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net *net, struct nft_chain *chain)
{
	struct nft_rule **g0, **g1;
	bool next_genbit;

	next_genbit = FUNC2(net);

	g0 = FUNC4(chain->rules_gen_0,
				       FUNC0(net));
	g1 = FUNC4(chain->rules_gen_1,
				       FUNC0(net));

	/* No changes to this chain? */
	if (chain->rules_next == NULL) {
		/* chain had no change in last or next generation */
		if (g0 == g1)
			return;
		/*
		 * chain had no change in this generation; make sure next
		 * one uses same rules as current generation.
		 */
		if (next_genbit) {
			FUNC3(chain->rules_gen_1, g0);
			FUNC1(g1);
		} else {
			FUNC3(chain->rules_gen_0, g1);
			FUNC1(g0);
		}

		return;
	}

	if (next_genbit)
		FUNC3(chain->rules_gen_1, chain->rules_next);
	else
		FUNC3(chain->rules_gen_0, chain->rules_next);

	chain->rules_next = NULL;

	if (g0 == g1)
		return;

	if (next_genbit)
		FUNC1(g1);
	else
		FUNC1(g0);
}