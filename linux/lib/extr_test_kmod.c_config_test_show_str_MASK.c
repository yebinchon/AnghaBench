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
struct mutex {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC1 (struct mutex*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct mutex *config_mutex,
				    char *dst,
				    char *src)
{
	int len;

	FUNC0(config_mutex);
	len = FUNC2(dst, PAGE_SIZE, "%s\n", src);
	FUNC1(config_mutex);

	return len;
}