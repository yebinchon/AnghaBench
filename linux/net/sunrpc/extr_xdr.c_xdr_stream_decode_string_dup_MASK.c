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
struct xdr_stream {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 char* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,int) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (struct xdr_stream*,void**,size_t) ; 

ssize_t FUNC4(struct xdr_stream *xdr, char **str,
		size_t maxlen, gfp_t gfp_flags)
{
	void *p;
	ssize_t ret;

	ret = FUNC3(xdr, &p, maxlen);
	if (ret > 0) {
		char *s = FUNC0(ret + 1, gfp_flags);
		if (s != NULL) {
			FUNC1(s, p, ret);
			s[ret] = '\0';
			*str = s;
			return FUNC2(s);
		}
		ret = -ENOMEM;
	}
	*str = NULL;
	return ret;
}