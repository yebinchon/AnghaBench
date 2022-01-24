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
typedef  int /*<<< orphan*/  u32 ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct nf_conn* FUNC1 (int (*) (struct nf_conn*,void*),void*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  nf_conntrack_generation ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conn*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC7(int (*iter)(struct nf_conn *i, void *data),
				  void *data, u32 portid, int report)
{
	unsigned int bucket = 0, sequence;
	struct nf_conn *ct;

	FUNC2();

	for (;;) {
		sequence = FUNC5(&nf_conntrack_generation);

		while ((ct = FUNC1(iter, data, &bucket)) != NULL) {
			/* Time to push up daises... */

			FUNC3(ct, portid, report);
			FUNC4(ct);
			FUNC0();
		}

		if (!FUNC6(&nf_conntrack_generation, sequence))
			break;
		bucket = 0;
	}
}