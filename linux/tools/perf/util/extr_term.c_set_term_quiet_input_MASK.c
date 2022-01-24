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
struct termios {int c_lflag; scalar_t__* c_cc; } ;

/* Variables and functions */
 int ECHO ; 
 int ICANON ; 
 int /*<<< orphan*/  TCSANOW ; 
 size_t VMIN ; 
 size_t VTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 

void FUNC2(struct termios *old)
{
	struct termios tc;

	FUNC0(0, old);
	tc = *old;
	tc.c_lflag &= ~(ICANON | ECHO);
	tc.c_cc[VMIN] = 0;
	tc.c_cc[VTIME] = 0;
	FUNC1(0, TCSANOW, &tc);
}