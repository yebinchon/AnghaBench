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
struct TYPE_2__ {int /*<<< orphan*/  (* flush ) () ;int /*<<< orphan*/  (* write_char ) (unsigned char) ;} ;

/* Variables and functions */
 TYPE_1__* dbg_io_ops ; 
 scalar_t__ dbg_kdb_mode ; 
 unsigned char FUNC0 (unsigned char) ; 
 unsigned char FUNC1 (unsigned char) ; 
 scalar_t__ kgdb_connected ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(int status)
{
	unsigned char checksum, ch, buffer[3];
	int loop;

	if (!kgdb_connected)
		return;
	kgdb_connected = 0;

	if (!dbg_io_ops || dbg_kdb_mode)
		return;

	buffer[0] = 'W';
	buffer[1] = FUNC0(status);
	buffer[2] = FUNC1(status);

	dbg_io_ops->write_char('$');
	checksum = 0;

	for (loop = 0; loop < 3; loop++) {
		ch = buffer[loop];
		checksum += ch;
		dbg_io_ops->write_char(ch);
	}

	dbg_io_ops->write_char('#');
	dbg_io_ops->write_char(FUNC0(checksum));
	dbg_io_ops->write_char(FUNC1(checksum));

	/* make sure the output is flushed, lest the bootloader clobber it */
	if (dbg_io_ops->flush)
		dbg_io_ops->flush();
}