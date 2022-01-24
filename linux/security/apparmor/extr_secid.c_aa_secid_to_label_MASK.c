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
typedef  int /*<<< orphan*/  u32 ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  aa_secids ; 
 struct aa_label* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

struct aa_label *FUNC3(u32 secid)
{
	struct aa_label *label;

	FUNC1();
	label = FUNC0(&aa_secids, secid);
	FUNC2();

	return label;
}