#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct hybla {int rho_3ls; int rho; int rho2_7ls; int rho2; } ;
struct TYPE_2__ {int srtt_us; } ;

/* Variables and functions */
 int USEC_PER_MSEC ; 
 struct hybla* FUNC0 (struct sock*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int rtt0 ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static inline void FUNC3 (struct sock *sk)
{
	struct hybla *ca = FUNC0(sk);

	ca->rho_3ls = FUNC1(u32,
			    FUNC2(sk)->srtt_us / (rtt0 * USEC_PER_MSEC),
			    8U);
	ca->rho = ca->rho_3ls >> 3;
	ca->rho2_7ls = (ca->rho_3ls * ca->rho_3ls) << 1;
	ca->rho2 = ca->rho2_7ls >> 7;
}