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
struct dso {char* long_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dso*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(struct dso *dso, const char *filename)
{
	const char *dup_filename;

	if (!filename || !dso || !dso->long_name)
		return;
	if (dso->long_name[0] != '[')
		return;
	if (!FUNC1(filename, '/'))
		return;

	dup_filename = FUNC2(filename);
	if (!dup_filename)
		return;

	FUNC0(dso, dup_filename, true);
}