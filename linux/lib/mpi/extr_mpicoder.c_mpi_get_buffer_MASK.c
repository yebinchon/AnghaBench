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
typedef  void uint8_t ;
typedef  int /*<<< orphan*/  MPI ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,unsigned int,unsigned int*,int*) ; 

void *FUNC4(MPI a, unsigned *nbytes, int *sign)
{
	uint8_t *buf;
	unsigned int n;
	int ret;

	if (!nbytes)
		return NULL;

	n = FUNC2(a);

	if (!n)
		n++;

	buf = FUNC1(n, GFP_KERNEL);

	if (!buf)
		return NULL;

	ret = FUNC3(a, buf, n, nbytes, sign);

	if (ret) {
		FUNC0(buf);
		return NULL;
	}
	return buf;
}