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
struct sum {int dummy; } ;
struct rsc {int dummy; } ;
struct amixer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amixer*) ; 
 int /*<<< orphan*/  FUNC1 (struct amixer*,struct rsc*) ; 
 int /*<<< orphan*/  FUNC2 (struct amixer*,struct sum*) ; 
 int /*<<< orphan*/  FUNC3 (struct amixer*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct amixer *amixer, struct rsc *input,
			unsigned int scale, struct sum *sum)
{
	FUNC1(amixer, input);
	FUNC3(amixer, scale);
	FUNC2(amixer, sum);
	FUNC0(amixer);
	return 0;
}