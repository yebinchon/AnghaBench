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
struct hist_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  COMPUTE_DELTA 131 
#define  COMPUTE_DELTA_ABS 130 
#define  COMPUTE_RATIO 129 
#define  COMPUTE_WEIGHTED_DIFF 128 
 int compute ; 
 int FUNC1 (struct hist_entry*,struct hist_entry*,char*,size_t) ; 
 int FUNC2 (struct hist_entry*,struct hist_entry*,char*,size_t) ; 
 int FUNC3 (struct hist_entry*,struct hist_entry*,char*,size_t) ; 

__attribute__((used)) static int FUNC4(struct hist_entry *he, struct hist_entry *pair,
			   char *buf, size_t size)
{
	switch (compute) {
	case COMPUTE_DELTA:
	case COMPUTE_DELTA_ABS:
		return FUNC1(he, pair, buf, size);
	case COMPUTE_RATIO:
		return FUNC2(he, pair, buf, size);
	case COMPUTE_WEIGHTED_DIFF:
		return FUNC3(he, pair, buf, size);
	default:
		FUNC0(1);
	}

	return -1;
}