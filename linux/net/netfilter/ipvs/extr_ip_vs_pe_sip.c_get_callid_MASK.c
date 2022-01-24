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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,unsigned int) ; 
 unsigned int IP_VS_PEDATA_MAXLEN ; 
 int /*<<< orphan*/  SIP_HDR_CALL_ID ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 

__attribute__((used)) static int FUNC3(const char *dptr, unsigned int dataoff,
		      unsigned int datalen,
		      unsigned int *matchoff, unsigned int *matchlen)
{
	/* Find callid */
	while (1) {
		int ret = FUNC2(NULL, dptr, dataoff, datalen,
					    SIP_HDR_CALL_ID, matchoff,
					    matchlen);
		if (ret > 0)
			break;
		if (!ret)
			return -EINVAL;
		dataoff += *matchoff;
	}

	/* Too large is useless */
	if (*matchlen > IP_VS_PEDATA_MAXLEN)
		return -EINVAL;

	/* SIP headers are always followed by a line terminator */
	if (*matchoff + *matchlen == datalen)
		return -EINVAL;

	/* RFC 2543 allows lines to be terminated with CR, LF or CRLF,
	 * RFC 3261 allows only CRLF, we support both. */
	if (*(dptr + *matchoff + *matchlen) != '\r' &&
	    *(dptr + *matchoff + *matchlen) != '\n')
		return -EINVAL;

	FUNC0(9, "SIP callid %s (%d bytes)\n",
		      FUNC1(dptr + *matchoff, *matchlen),
		      *matchlen);
	return 0;
}