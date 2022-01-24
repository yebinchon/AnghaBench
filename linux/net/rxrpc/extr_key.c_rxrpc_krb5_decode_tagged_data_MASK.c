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
struct krb5_tagged_data {unsigned int data_len; void* tag; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,void*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int FUNC5(struct krb5_tagged_data *td,
					 size_t max_data_size,
					 const __be32 **_xdr,
					 unsigned int *_toklen)
{
	const __be32 *xdr = *_xdr;
	unsigned int toklen = *_toklen, len, paddedlen;

	/* there must be at least one tag and one length word */
	if (toklen <= 8)
		return -EINVAL;

	FUNC1(",%zu,{%x,%x},%u",
	       max_data_size, FUNC4(xdr[0]), FUNC4(xdr[1]), toklen);

	td->tag = FUNC4(*xdr++);
	len = FUNC4(*xdr++);
	toklen -= 8;
	if (len > max_data_size)
		return -EINVAL;
	paddedlen = (len + 3) & ~3;
	if (paddedlen > toklen)
		return -EINVAL;
	td->data_len = len;

	if (len > 0) {
		td->data = FUNC3(xdr, len, GFP_KERNEL);
		if (!td->data)
			return -ENOMEM;
		toklen -= paddedlen;
		xdr += paddedlen >> 2;
	}

	FUNC0("tag %x len %x", td->tag, td->data_len);

	*_xdr = xdr;
	*_toklen = toklen;
	FUNC2(" = 0 [toklen=%u]", toklen);
	return 0;
}