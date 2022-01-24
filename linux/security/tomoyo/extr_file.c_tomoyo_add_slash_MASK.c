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
struct tomoyo_path_info {scalar_t__ name; scalar_t__ is_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tomoyo_path_info*) ; 

__attribute__((used)) static void FUNC2(struct tomoyo_path_info *buf)
{
	if (buf->is_dir)
		return;
	/*
	 * This is OK because tomoyo_encode() reserves space for appending "/".
	 */
	FUNC0((char *) buf->name, "/");
	FUNC1(buf);
}