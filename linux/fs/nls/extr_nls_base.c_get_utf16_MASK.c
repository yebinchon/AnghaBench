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
typedef  enum utf16_endian { ____Placeholder_utf16_endian } utf16_endian ;

/* Variables and functions */
#define  UTF16_BIG_ENDIAN 129 
#define  UTF16_LITTLE_ENDIAN 128 
 unsigned long FUNC0 (unsigned int) ; 
 unsigned long FUNC1 (unsigned int) ; 

__attribute__((used)) static inline unsigned long FUNC2(unsigned c, enum utf16_endian endian)
{
	switch (endian) {
	default:
		return c;
	case UTF16_LITTLE_ENDIAN:
		return FUNC1(c);
	case UTF16_BIG_ENDIAN:
		return FUNC0(c);
	}
}