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
struct augmented_args_payload {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  augmented_args_tmp ; 
 struct augmented_args_payload* FUNC0 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static inline struct augmented_args_payload *FUNC1(void)
{
	int key = 0;
	return FUNC0(&augmented_args_tmp, &key);
}