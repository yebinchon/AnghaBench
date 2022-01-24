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
struct fs {char const* path; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fs*) ; 
 scalar_t__ FUNC1 (struct fs*) ; 
 scalar_t__ FUNC2 (struct fs*) ; 

__attribute__((used)) static const char *FUNC3(struct fs *fs)
{
	if (FUNC1(fs))
		return fs->path;

	if (FUNC0(fs))
		return fs->path;

	if (FUNC2(fs))
		return fs->path;

	return NULL;
}