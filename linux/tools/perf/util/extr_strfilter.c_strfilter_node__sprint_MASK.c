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
struct strfilter_node {int* p; int /*<<< orphan*/  r; int /*<<< orphan*/  l; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  __fallthrough ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct strfilter_node *node, char *buf)
{
	int len = 0, rlen;

	if (!node || !node->p)
		return -EINVAL;

	switch (*node->p) {
	case '|':
	case '&':
		len = FUNC1(node->l, buf);
		if (len < 0)
			return len;
		__fallthrough;
	case '!':
		if (buf) {
			*(buf + len++) = *node->p;
			buf += len;
		} else
			len++;
		rlen = FUNC1(node->r, buf);
		if (rlen < 0)
			return rlen;
		len += rlen;
		break;
	default:
		len = FUNC2(node->p);
		if (buf)
			FUNC0(buf, node->p);
	}

	return len;
}