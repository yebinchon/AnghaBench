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
typedef  int u16 ;
struct meta_tlvhdr {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

void *FUNC2(void *skbdata)
{
	struct meta_tlvhdr *tlv = (struct meta_tlvhdr *) skbdata;
	u16 tlvlen = FUNC1(tlv->len);

	tlvlen = FUNC0(tlvlen);

	return skbdata + tlvlen;
}