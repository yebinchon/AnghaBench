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
typedef  int /*<<< orphan*/  u8 ;
struct tcp_info {int dummy; } ;
struct inet_diag_msg {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static size_t FUNC3(void)
{
	return FUNC0(sizeof(struct inet_diag_msg)
	       + FUNC1(sizeof(u8)) /* INET_DIAG_PROTOCOL */
	       + FUNC2(sizeof(struct tcp_info))); /* INET_DIAG_INFO */
}