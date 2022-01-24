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
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,size_t) ; 
 size_t FUNC1 (char*) ; 
 size_t FUNC2 (struct xdr_stream*,void**,size_t) ; 

ssize_t FUNC3(struct xdr_stream *xdr, char *str, size_t size)
{
	ssize_t ret;
	void *p;

	ret = FUNC2(xdr, &p, size);
	if (ret > 0) {
		FUNC0(str, p, ret);
		str[ret] = '\0';
		return FUNC1(str);
	}
	*str = '\0';
	return ret;
}