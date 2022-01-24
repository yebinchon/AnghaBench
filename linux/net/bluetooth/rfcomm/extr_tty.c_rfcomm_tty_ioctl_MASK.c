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
struct tty_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOIOCTLCMD ; 
#define  TCGETS 132 
#define  TCSETS 131 
#define  TIOCMIWAIT 130 
#define  TIOCSERCONFIG 129 
#define  TIOCSERGETLSR 128 

__attribute__((used)) static int FUNC2(struct tty_struct *tty, unsigned int cmd, unsigned long arg)
{
	FUNC0("tty %p cmd 0x%02x", tty, cmd);

	switch (cmd) {
	case TCGETS:
		FUNC0("TCGETS is not supported");
		return -ENOIOCTLCMD;

	case TCSETS:
		FUNC0("TCSETS is not supported");
		return -ENOIOCTLCMD;

	case TIOCMIWAIT:
		FUNC0("TIOCMIWAIT");
		break;

	case TIOCSERGETLSR:
		FUNC1("TIOCSERGETLSR is not supported");
		return -ENOIOCTLCMD;

	case TIOCSERCONFIG:
		FUNC1("TIOCSERCONFIG is not supported");
		return -ENOIOCTLCMD;

	default:
		return -ENOIOCTLCMD;	/* ioctls which we must ignore */

	}

	return -ENOIOCTLCMD;
}