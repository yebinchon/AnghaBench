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
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned int u16 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 unsigned int AFSTOKEN_K5_TIX_MAX ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int FUNC5(u8 **_ticket, u16 *_tktlen,
				    const __be32 **_xdr, unsigned int *_toklen)
{
	const __be32 *xdr = *_xdr;
	unsigned int toklen = *_toklen, len, paddedlen;

	/* there must be at least one length word */
	if (toklen <= 4)
		return -EINVAL;

	FUNC1(",{%x},%u", FUNC4(xdr[0]), toklen);

	len = FUNC4(*xdr++);
	toklen -= 4;
	if (len > AFSTOKEN_K5_TIX_MAX)
		return -EINVAL;
	paddedlen = (len + 3) & ~3;
	if (paddedlen > toklen)
		return -EINVAL;
	*_tktlen = len;

	FUNC0("ticket len %u", len);

	if (len > 0) {
		*_ticket = FUNC3(xdr, len, GFP_KERNEL);
		if (!*_ticket)
			return -ENOMEM;
		toklen -= paddedlen;
		xdr += paddedlen >> 2;
	}

	*_xdr = xdr;
	*_toklen = toklen;
	FUNC2(" = 0 [toklen=%u]", toklen);
	return 0;
}