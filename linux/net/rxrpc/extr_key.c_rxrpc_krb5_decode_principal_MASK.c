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
struct krb5_principal {unsigned int n_name_parts; scalar_t__* realm; scalar_t__** name_parts; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 unsigned int AFSTOKEN_K5_COMPONENTS_MAX ; 
 unsigned int AFSTOKEN_K5_REALM_MAX ; 
 unsigned int AFSTOKEN_STRING_MAX ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 scalar_t__** FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int FUNC7(struct krb5_principal *princ,
				       const __be32 **_xdr,
				       unsigned int *_toklen)
{
	const __be32 *xdr = *_xdr;
	unsigned int toklen = *_toklen, n_parts, loop, tmp, paddedlen;

	/* there must be at least one name, and at least #names+1 length
	 * words */
	if (toklen <= 12)
		return -EINVAL;

	FUNC1(",{%x,%x,%x},%u",
	       FUNC6(xdr[0]), FUNC6(xdr[1]), FUNC6(xdr[2]), toklen);

	n_parts = FUNC6(*xdr++);
	toklen -= 4;
	if (n_parts <= 0 || n_parts > AFSTOKEN_K5_COMPONENTS_MAX)
		return -EINVAL;
	princ->n_name_parts = n_parts;

	if (toklen <= (n_parts + 1) * 4)
		return -EINVAL;

	princ->name_parts = FUNC3(n_parts, sizeof(char *), GFP_KERNEL);
	if (!princ->name_parts)
		return -ENOMEM;

	for (loop = 0; loop < n_parts; loop++) {
		if (toklen < 4)
			return -EINVAL;
		tmp = FUNC6(*xdr++);
		toklen -= 4;
		if (tmp <= 0 || tmp > AFSTOKEN_STRING_MAX)
			return -EINVAL;
		paddedlen = (tmp + 3) & ~3;
		if (paddedlen > toklen)
			return -EINVAL;
		princ->name_parts[loop] = FUNC4(tmp + 1, GFP_KERNEL);
		if (!princ->name_parts[loop])
			return -ENOMEM;
		FUNC5(princ->name_parts[loop], xdr, tmp);
		princ->name_parts[loop][tmp] = 0;
		toklen -= paddedlen;
		xdr += paddedlen >> 2;
	}

	if (toklen < 4)
		return -EINVAL;
	tmp = FUNC6(*xdr++);
	toklen -= 4;
	if (tmp <= 0 || tmp > AFSTOKEN_K5_REALM_MAX)
		return -EINVAL;
	paddedlen = (tmp + 3) & ~3;
	if (paddedlen > toklen)
		return -EINVAL;
	princ->realm = FUNC4(tmp + 1, GFP_KERNEL);
	if (!princ->realm)
		return -ENOMEM;
	FUNC5(princ->realm, xdr, tmp);
	princ->realm[tmp] = 0;
	toklen -= paddedlen;
	xdr += paddedlen >> 2;

	FUNC0("%s/...@%s", princ->name_parts[0], princ->realm);

	*_xdr = xdr;
	*_toklen = toklen;
	FUNC2(" = 0 [toklen=%u]", toklen);
	return 0;
}