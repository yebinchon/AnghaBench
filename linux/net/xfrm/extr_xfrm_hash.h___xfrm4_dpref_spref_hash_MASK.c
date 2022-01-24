#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  a4; } ;
typedef  TYPE_1__ xfrm_address_t ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int FUNC3(const xfrm_address_t *daddr,
						    const xfrm_address_t *saddr,
						    __u8 dbits,
						    __u8 sbits)
{
	return FUNC1(FUNC2(daddr->a4) & FUNC0(dbits),
			    FUNC2(saddr->a4) & FUNC0(sbits),
			    0);
}