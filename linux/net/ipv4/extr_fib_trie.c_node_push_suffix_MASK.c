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
struct key_vector {unsigned char slen; } ;

/* Variables and functions */
 struct key_vector* FUNC0 (struct key_vector*) ; 

__attribute__((used)) static void FUNC1(struct key_vector *tn, unsigned char slen)
{
	while (tn->slen < slen) {
		tn->slen = slen;
		tn = FUNC0(tn);
	}
}