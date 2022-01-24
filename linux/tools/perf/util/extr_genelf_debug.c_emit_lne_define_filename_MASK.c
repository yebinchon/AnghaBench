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
struct buffer_ext {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_LNE_define_file ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_ext*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_ext*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_ext*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_ext*,scalar_t__) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(struct buffer_ext *be,
				     const char *filename)
{
	FUNC0(be, (void *)"", 1);

	/* LNE field, strlen(filename) + zero termination, 3 bytes for: the dir entry, timestamp, filesize */
	FUNC3(be, FUNC4(filename) + 5);
	FUNC1(be, DW_LNE_define_file);
	FUNC2(be, filename);
	/* directory index 0=do not know */
        FUNC3(be, 0);
	/* last modification date on file 0=do not know */
        FUNC3(be, 0);
	/* filesize 0=do not know */
        FUNC3(be, 0);
}