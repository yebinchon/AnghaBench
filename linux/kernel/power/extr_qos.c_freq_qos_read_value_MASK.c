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
struct freq_constraints {int /*<<< orphan*/  max_freq; int /*<<< orphan*/  min_freq; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  enum freq_qos_req_type { ____Placeholder_freq_qos_req_type } freq_qos_req_type ;

/* Variables and functions */
#define  FREQ_QOS_MAX 129 
 int /*<<< orphan*/  FREQ_QOS_MAX_DEFAULT_VALUE ; 
#define  FREQ_QOS_MIN 128 
 int /*<<< orphan*/  FREQ_QOS_MIN_DEFAULT_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct freq_constraints*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

s32 FUNC3(struct freq_constraints *qos,
			enum freq_qos_req_type type)
{
	s32 ret;

	switch (type) {
	case FREQ_QOS_MIN:
		ret = FUNC0(qos) ?
			FREQ_QOS_MIN_DEFAULT_VALUE :
			FUNC2(&qos->min_freq);
		break;
	case FREQ_QOS_MAX:
		ret = FUNC0(qos) ?
			FREQ_QOS_MAX_DEFAULT_VALUE :
			FUNC2(&qos->max_freq);
		break;
	default:
		FUNC1(1);
		ret = 0;
	}

	return ret;
}