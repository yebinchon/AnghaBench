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
typedef  int u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int NLA_HDRLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int) ; 

int FUNC4(void *skbdata, u16 attrtype, u16 dlen, const void *dval)
{
	__be32 *tlv = (__be32 *) (skbdata);
	u16 totlen = FUNC3(dlen);	/*alignment + hdr */
	char *dptr = (char *) tlv + NLA_HDRLEN;
	u32 htlv = attrtype << 16 | (dlen + NLA_HDRLEN);

	*tlv = FUNC0(htlv);
	FUNC2(dptr, 0, totlen - NLA_HDRLEN);
	FUNC1(dptr, dval, dlen);

	return totlen;
}