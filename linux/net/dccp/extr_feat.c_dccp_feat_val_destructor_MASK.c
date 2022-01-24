#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int /*<<< orphan*/  vec; } ;
struct TYPE_6__ {TYPE_1__ sp; } ;
typedef  TYPE_2__ dccp_feat_val ;

/* Variables and functions */
 scalar_t__ FEAT_SP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(u8 feat_num, dccp_feat_val *val)
{
	if (FUNC3(val == NULL))
		return;
	if (FUNC0(feat_num) == FEAT_SP)
		FUNC1(val->sp.vec);
	FUNC2(val, 0, sizeof(*val));
}