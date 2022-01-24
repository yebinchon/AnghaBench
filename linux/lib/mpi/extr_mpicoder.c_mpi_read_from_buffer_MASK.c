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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  MPI ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int MAX_EXTERN_MPI_BITS ; 
 int /*<<< orphan*/  FUNC2 (int const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,...) ; 

MPI FUNC4(const void *xbuffer, unsigned *ret_nread)
{
	const uint8_t *buffer = xbuffer;
	unsigned int nbits, nbytes;
	MPI val;

	if (*ret_nread < 2)
		return FUNC1(-EINVAL);
	nbits = buffer[0] << 8 | buffer[1];

	if (nbits > MAX_EXTERN_MPI_BITS) {
		FUNC3("MPI: mpi too large (%u bits)\n", nbits);
		return FUNC1(-EINVAL);
	}

	nbytes = FUNC0(nbits, 8);
	if (nbytes + 2 > *ret_nread) {
		FUNC3("MPI: mpi larger than buffer nbytes=%u ret_nread=%u\n",
				nbytes, *ret_nread);
		return FUNC1(-EINVAL);
	}

	val = FUNC2(buffer + 2, nbytes);
	if (!val)
		return FUNC1(-ENOMEM);

	*ret_nread = nbytes + 2;
	return val;
}