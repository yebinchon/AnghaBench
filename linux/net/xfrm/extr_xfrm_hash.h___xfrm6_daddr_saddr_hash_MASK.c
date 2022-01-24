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
typedef  int /*<<< orphan*/  xfrm_address_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline unsigned int FUNC1(const xfrm_address_t *daddr,
						    const xfrm_address_t *saddr)
{
	return FUNC0(daddr) ^ FUNC0(saddr);
}