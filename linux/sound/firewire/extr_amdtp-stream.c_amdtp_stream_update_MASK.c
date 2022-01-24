#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct amdtp_stream {int /*<<< orphan*/  unit; int /*<<< orphan*/  source_node_id_field; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int node_id; } ;

/* Variables and functions */
 int CIP_SID_MASK ; 
 int CIP_SID_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct amdtp_stream *s)
{
	/* Precomputing. */
	FUNC0(s->source_node_id_field,
                   (FUNC1(s->unit)->card->node_id << CIP_SID_SHIFT) & CIP_SID_MASK);
}