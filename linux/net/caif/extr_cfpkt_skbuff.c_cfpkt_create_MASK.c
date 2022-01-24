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
typedef  scalar_t__ u16 ;
struct cfpkt {int dummy; } ;

/* Variables and functions */
 scalar_t__ PKT_POSTFIX ; 
 int /*<<< orphan*/  PKT_PREFIX ; 
 struct cfpkt* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 

inline struct cfpkt *FUNC1(u16 len)
{
	return FUNC0(len + PKT_POSTFIX, PKT_PREFIX);
}