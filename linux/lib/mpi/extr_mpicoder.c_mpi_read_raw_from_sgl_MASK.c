#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sg_mapping_iter {unsigned int length; int consumed; scalar_t__* addr; } ;
struct scatterlist {int dummy; } ;
typedef  int mpi_limb_t ;
struct TYPE_4__ {unsigned int nbits; unsigned int nlimbs; int* d; scalar_t__ sign; } ;
typedef  TYPE_1__* MPI ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 unsigned int BYTES_PER_MPI_LIMB ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int MAX_EXTERN_MPI_BITS ; 
 int SG_MITER_ATOMIC ; 
 int SG_MITER_FROM_SG ; 
 int FUNC1 (scalar_t__ const) ; 
 TYPE_1__* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 scalar_t__ FUNC4 (struct sg_mapping_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct sg_mapping_iter*,struct scatterlist*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sg_mapping_iter*) ; 
 int FUNC7 (struct scatterlist*,unsigned int) ; 

MPI FUNC8(struct scatterlist *sgl, unsigned int nbytes)
{
	struct sg_mapping_iter miter;
	unsigned int nbits, nlimbs;
	int x, j, z, lzeros, ents;
	unsigned int len;
	const u8 *buff;
	mpi_limb_t a;
	MPI val = NULL;

	ents = FUNC7(sgl, nbytes);
	if (ents < 0)
		return NULL;

	FUNC5(&miter, sgl, ents, SG_MITER_ATOMIC | SG_MITER_FROM_SG);

	lzeros = 0;
	len = 0;
	while (nbytes > 0) {
		while (len && !*buff) {
			lzeros++;
			len--;
			buff++;
		}

		if (len && *buff)
			break;

		FUNC4(&miter);
		buff = miter.addr;
		len = miter.length;

		nbytes -= lzeros;
		lzeros = 0;
	}

	miter.consumed = lzeros;

	nbytes -= lzeros;
	nbits = nbytes * 8;
	if (nbits > MAX_EXTERN_MPI_BITS) {
		FUNC6(&miter);
		FUNC3("MPI: mpi too large (%u bits)\n", nbits);
		return NULL;
	}

	if (nbytes > 0)
		nbits -= FUNC1(*buff) - (BITS_PER_LONG - 8);

	FUNC6(&miter);

	nlimbs = FUNC0(nbytes, BYTES_PER_MPI_LIMB);
	val = FUNC2(nlimbs);
	if (!val)
		return NULL;

	val->nbits = nbits;
	val->sign = 0;
	val->nlimbs = nlimbs;

	if (nbytes == 0)
		return val;

	j = nlimbs - 1;
	a = 0;
	z = BYTES_PER_MPI_LIMB - nbytes % BYTES_PER_MPI_LIMB;
	z %= BYTES_PER_MPI_LIMB;

	while (FUNC4(&miter)) {
		buff = miter.addr;
		len = miter.length;

		for (x = 0; x < len; x++) {
			a <<= 8;
			a |= *buff++;
			if (((z + x + 1) % BYTES_PER_MPI_LIMB) == 0) {
				val->d[j--] = a;
				a = 0;
			}
		}
		z += x;
	}

	return val;
}