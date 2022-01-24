#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* flush ) () ;int /*<<< orphan*/  (* write_char ) (char) ;} ;

/* Variables and functions */
 TYPE_1__* dbg_io_ops ; 
 char FUNC0 () ; 
 char FUNC1 (unsigned char) ; 
 char FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(char *buffer)
{
	unsigned char checksum;
	int count;
	char ch;

	/*
	 * $<packet info>#<checksum>.
	 */
	while (1) {
		dbg_io_ops->write_char('$');
		checksum = 0;
		count = 0;

		while ((ch = buffer[count])) {
			dbg_io_ops->write_char(ch);
			checksum += ch;
			count++;
		}

		dbg_io_ops->write_char('#');
		dbg_io_ops->write_char(FUNC1(checksum));
		dbg_io_ops->write_char(FUNC2(checksum));
		if (dbg_io_ops->flush)
			dbg_io_ops->flush();

		/* Now see what we get in reply. */
		ch = FUNC0();

		if (ch == 3)
			ch = FUNC0();

		/* If we get an ACK, we are done. */
		if (ch == '+')
			return;

		/*
		 * If we get the start of another packet, this means
		 * that GDB is attempting to reconnect.  We will NAK
		 * the packet being sent, and stop trying to send this
		 * packet.
		 */
		if (ch == '$') {
			dbg_io_ops->write_char('-');
			if (dbg_io_ops->flush)
				dbg_io_ops->flush();
			return;
		}
	}
}