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
struct stat {int /*<<< orphan*/  st_size; } ;

/* Variables and functions */
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct stat*) ; 
 int FUNC2 (char const*,int,int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const char *src, const char *dest)
{
	int in_fd = FUNC3(src, O_RDONLY);
	int out_fd = FUNC2(dest, O_RDWR|O_CREAT|O_TRUNC, 0755);
	struct stat info;

	FUNC1(in_fd, &info);
	FUNC4(out_fd, in_fd, NULL, info.st_size);
	FUNC0(in_fd);
	FUNC0(out_fd);
}