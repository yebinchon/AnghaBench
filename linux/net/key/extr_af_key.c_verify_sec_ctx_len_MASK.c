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
struct sadb_x_sec_ctx {int sadb_x_ctx_len; int sadb_x_sec_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_SIZE ; 
 int FUNC0 (struct sadb_x_sec_ctx const*) ; 

__attribute__((used)) static inline int FUNC1(const void *p)
{
	const struct sadb_x_sec_ctx *sec_ctx = p;
	int len = sec_ctx->sadb_x_ctx_len;

	if (len > PAGE_SIZE)
		return -EINVAL;

	len = FUNC0(sec_ctx);

	if (sec_ctx->sadb_x_sec_len != len)
		return -EINVAL;

	return 0;
}