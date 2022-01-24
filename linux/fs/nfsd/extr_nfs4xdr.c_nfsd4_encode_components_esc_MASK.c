#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {TYPE_1__* buf; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  nfserr_resource ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static __be32 FUNC5(struct xdr_stream *xdr, char sep,
					  char *components, char esc_enter,
					  char esc_exit)
{
	__be32 *p;
	__be32 pathlen;
	int pathlen_offset;
	int strlen, count=0;
	char *str, *end, *next;

	FUNC0("nfsd4_encode_components(%s)\n", components);

	pathlen_offset = xdr->buf->len;
	p = FUNC4(xdr, 4);
	if (!p)
		return nfserr_resource;
	p++; /* We will fill this in with @count later */

	end = str = components;
	while (*end) {
		bool found_esc = false;

		/* try to parse as esc_start, ..., esc_end, sep */
		if (*str == esc_enter) {
			for (; *end && (*end != esc_exit); end++)
				/* find esc_exit or end of string */;
			next = end + 1;
			if (*end && (!*next || *next == sep)) {
				str++;
				found_esc = true;
			}
		}

		if (!found_esc)
			for (; *end && (*end != sep); end++)
				/* find sep or end of string */;

		strlen = end - str;
		if (strlen) {
			p = FUNC4(xdr, strlen + 4);
			if (!p)
				return nfserr_resource;
			p = FUNC3(p, str, strlen);
			count++;
		}
		else
			end++;
		if (found_esc)
			end = next;

		str = end;
	}
	pathlen = FUNC1(count);
	FUNC2(xdr->buf, pathlen_offset, &pathlen, 4);
	return 0;
}