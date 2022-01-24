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
struct key_vector {unsigned char slen; unsigned char pos; } ;

/* Variables and functions */
 struct key_vector* FUNC0 (struct key_vector*) ; 
 unsigned char FUNC1 (struct key_vector*) ; 

__attribute__((used)) static void FUNC2(struct key_vector *tn, unsigned char slen)
{
	unsigned char node_slen = tn->slen;

	while ((node_slen > tn->pos) && (node_slen > slen)) {
		slen = FUNC1(tn);
		if (node_slen == slen)
			break;

		tn = FUNC0(tn);
		node_slen = tn->slen;
	}
}