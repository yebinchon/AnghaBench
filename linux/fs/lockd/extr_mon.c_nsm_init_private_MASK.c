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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct nsm_handle {TYPE_1__ sm_priv; } ;
typedef  unsigned long s64 ;

/* Variables and functions */
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct nsm_handle *nsm)
{
	u64 *p = (u64 *)&nsm->sm_priv.data;
	s64 ns;

	ns = FUNC0();
	FUNC1(ns, p);
	FUNC1((unsigned long)nsm, p + 1);
}