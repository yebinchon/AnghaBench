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
typedef  void u8 ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (void*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct crypto_aead*) ; 
 scalar_t__ FUNC2 (struct crypto_aead*) ; 

__attribute__((used)) static inline u8 *FUNC3(struct crypto_aead *aead, void *tmp, int extralen)
{
	return FUNC2(aead) ?
	       FUNC0((u8 *)tmp + extralen,
			 FUNC1(aead) + 1) : tmp + extralen;
}