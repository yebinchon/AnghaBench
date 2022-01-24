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
struct nf_conn {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (char const*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const struct nf_conn *ct, const char *dptr,
			      unsigned int dataoff, unsigned int datalen,
			      const char *name,
			      unsigned int *matchoff, unsigned int *matchlen)
{
	const char *limit = dptr + datalen;
	const char *start;
	const char *end;

	limit = FUNC0(dptr + dataoff, limit, ",", FUNC1(","));
	if (!limit)
		limit = dptr + datalen;

	start = FUNC0(dptr + dataoff, limit, name, FUNC1(name));
	if (!start)
		return 0;
	start += FUNC1(name);

	end = FUNC0(start, limit, ";", FUNC1(";"));
	if (!end)
		end = limit;

	*matchoff = start - dptr;
	*matchlen = end - start;
	return 1;
}