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
struct strbuf {size_t alloc; size_t len; char* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct strbuf *sb, size_t len) {
	if (!sb->alloc) {
		int ret = FUNC1(sb, 0);
		if (ret)
			return ret;
	}
	FUNC0(len < sb->alloc);
	sb->len = len;
	sb->buf[len] = '\0';
	return 0;
}