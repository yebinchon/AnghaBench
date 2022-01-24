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
struct x25_neigh {int dummy; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct sock* FUNC2 (unsigned int,struct x25_neigh*) ; 

__attribute__((used)) static unsigned int FUNC3(struct x25_neigh *nb)
{
	unsigned int lci = 1;
	struct sock *sk;

	while ((sk = FUNC2(lci, nb)) != NULL) {
		FUNC1(sk);
		if (++lci == 4096) {
			lci = 0;
			break;
		}
		FUNC0();
	}

	return lci;
}