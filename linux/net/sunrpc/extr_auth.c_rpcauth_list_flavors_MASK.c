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
struct rpc_authops {int (* list_pseudoflavors ) (size_t*,int /*<<< orphan*/ ) ;size_t au_flavor; } ;
typedef  size_t rpc_authflavor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t*) ; 
 int ENOMEM ; 
 size_t RPC_AUTH_MAXFLAVOR ; 
 int /*<<< orphan*/ * auth_flavors ; 
 struct rpc_authops* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (size_t*,int /*<<< orphan*/ ) ; 

int
FUNC5(rpc_authflavor_t *array, int size)
{
	const struct rpc_authops *ops;
	rpc_authflavor_t flavor, pseudos[4];
	int i, len, result = 0;

	FUNC2();
	for (flavor = 0; flavor < RPC_AUTH_MAXFLAVOR; flavor++) {
		ops = FUNC1(auth_flavors[flavor]);
		if (result >= size) {
			result = -ENOMEM;
			break;
		}

		if (ops == NULL)
			continue;
		if (ops->list_pseudoflavors == NULL) {
			array[result++] = ops->au_flavor;
			continue;
		}
		len = ops->list_pseudoflavors(pseudos, FUNC0(pseudos));
		if (len < 0) {
			result = len;
			break;
		}
		for (i = 0; i < len; i++) {
			if (result >= size) {
				result = -ENOMEM;
				break;
			}
			array[result++] = pseudos[i];
		}
	}
	FUNC3();
	return result;
}