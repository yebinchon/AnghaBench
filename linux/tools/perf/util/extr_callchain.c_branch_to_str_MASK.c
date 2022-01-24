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
typedef  double u64 ;
struct branch_type_stat {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct branch_type_stat*,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,double,char*,int,double) ; 
 scalar_t__ FUNC2 (char*,int,char*) ; 

__attribute__((used)) static int FUNC3(char *bf, int bfsize,
			 u64 branch_count, u64 predicted_count,
			 u64 abort_count,
			 struct branch_type_stat *brtype_stat)
{
	int printed, i = 0;

	printed = FUNC0(brtype_stat, bf, bfsize);
	if (printed)
		i++;

	if (predicted_count < branch_count) {
		printed += FUNC1(i++, "predicted",
				predicted_count * 100.0 / branch_count,
				bf + printed, bfsize - printed, 0.0);
	}

	if (abort_count) {
		printed += FUNC1(i++, "abort",
				abort_count * 100.0 / branch_count,
				bf + printed, bfsize - printed, 0.1);
	}

	if (i)
		printed += FUNC2(bf + printed, bfsize - printed, ")");

	return printed;
}