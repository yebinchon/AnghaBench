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
struct section {int dummy; } ;
struct rela {int dummy; } ;

/* Variables and functions */
 struct rela* FUNC0 (struct section*,unsigned long,int) ; 

struct rela *FUNC1(struct section *sec, unsigned long offset)
{
	return FUNC0(sec, offset, 1);
}