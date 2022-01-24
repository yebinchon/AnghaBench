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
struct ip_vs_seq {void* previous_delta; void* delta; void* init_seq; } ;

/* Variables and functions */
 void* FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_seq*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ip_vs_seq *no, struct ip_vs_seq *ho)
{
	FUNC1(ho, 0, sizeof(*ho));
	ho->init_seq       = FUNC0(&no->init_seq);
	ho->delta          = FUNC0(&no->delta);
	ho->previous_delta = FUNC0(&no->previous_delta);
}