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
struct trace_probe {int dummy; } ;

/* Variables and functions */
 int TP_FLAG_PROFILE ; 
 int TP_FLAG_TRACE ; 
 int FUNC0 (struct trace_probe*,int) ; 

__attribute__((used)) static inline bool FUNC1(struct trace_probe *tp)
{
	return FUNC0(tp, TP_FLAG_TRACE | TP_FLAG_PROFILE);
}