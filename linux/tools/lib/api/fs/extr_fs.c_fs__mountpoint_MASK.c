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
struct fs {scalar_t__ path; scalar_t__ found; } ;

/* Variables and functions */
 struct fs* fs__entries ; 
 char const* FUNC0 (struct fs*) ; 

__attribute__((used)) static const char *FUNC1(int idx)
{
	struct fs *fs = &fs__entries[idx];

	if (fs->found)
		return (const char *)fs->path;

	return FUNC0(fs);
}