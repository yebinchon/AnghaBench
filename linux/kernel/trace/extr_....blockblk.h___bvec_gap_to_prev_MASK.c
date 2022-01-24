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
struct request_queue {int dummy; } ;
struct bio_vec {unsigned int bv_offset; unsigned int bv_len; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct request_queue*) ; 

__attribute__((used)) static inline bool FUNC1(struct request_queue *q,
		struct bio_vec *bprv, unsigned int offset)
{
	return (offset & FUNC0(q)) ||
		((bprv->bv_offset + bprv->bv_len) & FUNC0(q));
}