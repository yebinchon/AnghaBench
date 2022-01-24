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
struct TYPE_2__ {unsigned int* utf32nfdicf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*) ; 
 unsigned int* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 TYPE_1__* unicode_data ; 
 int verbose ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned int unichar;
	unsigned int mapping[19]; /* Magic - guaranteed not to be exceeded. */
	unsigned int *um;
	unsigned int *dc;
	int count;
	int i;
	int j;
	int ret;

	if (verbose > 0)
		FUNC4("Decomposing nfdicf\n");
	count = 0;
	for (unichar = 0; unichar != 0x110000; unichar++) {
		if (!unicode_data[unichar].utf32nfdicf)
			continue;
		for (;;) {
			ret = 1;
			i = 0;
			um = unicode_data[unichar].utf32nfdicf;
			while (*um) {
				dc = unicode_data[*um].utf32nfdicf;
				if (dc) {
					for (j = 0; dc[j]; j++)
						mapping[i++] = dc[j];
					ret = 0;
				} else {
					mapping[i++] = *um;
				}
				um++;
			}
			mapping[i++] = 0;
			if (ret)
				break;
			FUNC0(unicode_data[unichar].utf32nfdicf);
			um = FUNC1(i * sizeof(unsigned int));
			FUNC2(um, mapping, i * sizeof(unsigned int));
			unicode_data[unichar].utf32nfdicf = um;
		}
		if (verbose > 1)
			FUNC3(unichar);
		count++;
	}
	if (verbose > 0)
		FUNC4("Processed %d entries\n", count);
}