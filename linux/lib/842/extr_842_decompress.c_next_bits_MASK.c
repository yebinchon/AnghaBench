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
typedef  int u8 ;
typedef  int u64 ;
struct sw842_param {int* in; int bit; int ilen; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int EOVERFLOW ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sw842_param*,int*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static int FUNC8(struct sw842_param *p, u64 *d, u8 n)
{
	u8 *in = p->in, b = p->bit, bits = b + n;

	if (n > 64) {
		FUNC7("next_bits invalid n %u\n", n);
		return -EINVAL;
	}

	/* split this up if reading > 8 bytes, or if we're at the end of
	 * the input buffer and would read past the end
	 */
	if (bits > 64)
		return FUNC2(p, d, n, 32);
	else if (p->ilen < 8 && bits > 32 && bits <= 56)
		return FUNC2(p, d, n, 16);
	else if (p->ilen < 4 && bits > 16 && bits <= 24)
		return FUNC2(p, d, n, 8);

	if (FUNC0(bits, 8) > p->ilen)
		return -EOVERFLOW;

	if (bits <= 8)
		*d = *in >> (8 - bits);
	else if (bits <= 16)
		*d = FUNC3(FUNC6((__be16 *)in)) >> (16 - bits);
	else if (bits <= 32)
		*d = FUNC4(FUNC6((__be32 *)in)) >> (32 - bits);
	else
		*d = FUNC5(FUNC6((__be64 *)in)) >> (64 - bits);

	*d &= FUNC1(n - 1, 0);

	p->bit += n;

	if (p->bit > 7) {
		p->in += p->bit / 8;
		p->ilen -= p->bit / 8;
		p->bit %= 8;
	}

	return 0;
}