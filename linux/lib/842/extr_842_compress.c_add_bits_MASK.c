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
struct sw842_param {int bit; int* out; int olen; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int ENOSPC ; 
 int FUNC1 (struct sw842_param*,int,int,int) ; 
 int* bmask ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned char,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct sw842_param *p, u64 d, u8 n)
{
	int b = p->bit, bits = b + n, s = FUNC7(bits, 8) - bits;
	u64 o;
	u8 *out = p->out;

	FUNC5("add %u bits %lx\n", (unsigned char)n, (unsigned long)d);

	if (n > 64)
		return -EINVAL;

	/* split this up if writing to > 8 bytes (i.e. n == 64 && p->bit > 0),
	 * or if we're at the end of the output buffer and would write past end
	 */
	if (bits > 64)
		return FUNC1(p, d, n, 32);
	else if (p->olen < 8 && bits > 32 && bits <= 56)
		return FUNC1(p, d, n, 16);
	else if (p->olen < 4 && bits > 16 && bits <= 24)
		return FUNC1(p, d, n, 8);

	if (FUNC0(bits, 8) > p->olen)
		return -ENOSPC;

	o = *out & bmask[b];
	d <<= s;

	if (bits <= 8)
		*out = o | d;
	else if (bits <= 16)
		FUNC6(FUNC2(o << 8 | d), (__be16 *)out);
	else if (bits <= 24)
		FUNC6(FUNC3(o << 24 | d << 8), (__be32 *)out);
	else if (bits <= 32)
		FUNC6(FUNC3(o << 24 | d), (__be32 *)out);
	else if (bits <= 40)
		FUNC6(FUNC4(o << 56 | d << 24), (__be64 *)out);
	else if (bits <= 48)
		FUNC6(FUNC4(o << 56 | d << 16), (__be64 *)out);
	else if (bits <= 56)
		FUNC6(FUNC4(o << 56 | d << 8), (__be64 *)out);
	else
		FUNC6(FUNC4(o << 56 | d), (__be64 *)out);

	p->bit += n;

	if (p->bit > 7) {
		p->out += p->bit / 8;
		p->olen -= p->bit / 8;
		p->bit %= 8;
	}

	return 0;
}