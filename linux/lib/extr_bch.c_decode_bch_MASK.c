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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct bch_control {int n; unsigned int ecc_bits; unsigned int* syn; int /*<<< orphan*/  elp; int /*<<< orphan*/ * ecc_buf; int /*<<< orphan*/ * ecc_buf2; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct bch_control*) ; 
 int EBADMSG ; 
 int EINVAL ; 
 int FUNC1 (struct bch_control*,unsigned int const*) ; 
 int /*<<< orphan*/  FUNC2 (struct bch_control*,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct bch_control*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct bch_control*,int,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct bch_control*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC6(struct bch_control *bch, const uint8_t *data, unsigned int len,
	       const uint8_t *recv_ecc, const uint8_t *calc_ecc,
	       const unsigned int *syn, unsigned int *errloc)
{
	const unsigned int ecc_words = FUNC0(bch);
	unsigned int nbits;
	int i, err, nroots;
	uint32_t sum;

	/* sanity check: make sure data length can be handled */
	if (8*len > (bch->n-bch->ecc_bits))
		return -EINVAL;

	/* if caller does not provide syndromes, compute them */
	if (!syn) {
		if (!calc_ecc) {
			/* compute received data ecc into an internal buffer */
			if (!data || !recv_ecc)
				return -EINVAL;
			FUNC3(bch, data, len, NULL);
		} else {
			/* load provided calculated ecc */
			FUNC5(bch, bch->ecc_buf, calc_ecc);
		}
		/* load received ecc or assume it was XORed in calc_ecc */
		if (recv_ecc) {
			FUNC5(bch, bch->ecc_buf2, recv_ecc);
			/* XOR received and calculated ecc */
			for (i = 0, sum = 0; i < (int)ecc_words; i++) {
				bch->ecc_buf[i] ^= bch->ecc_buf2[i];
				sum |= bch->ecc_buf[i];
			}
			if (!sum)
				/* no error found */
				return 0;
		}
		FUNC2(bch, bch->ecc_buf, bch->syn);
		syn = bch->syn;
	}

	err = FUNC1(bch, syn);
	if (err > 0) {
		nroots = FUNC4(bch, 1, bch->elp, errloc);
		if (err != nroots)
			err = -1;
	}
	if (err > 0) {
		/* post-process raw error locations for easier correction */
		nbits = (len*8)+bch->ecc_bits;
		for (i = 0; i < err; i++) {
			if (errloc[i] >= nbits) {
				err = -1;
				break;
			}
			errloc[i] = nbits-1-errloc[i];
			errloc[i] = (errloc[i] & ~7)|(7-(errloc[i] & 7));
		}
	}
	return (err >= 0) ? err : -EBADMSG;
}