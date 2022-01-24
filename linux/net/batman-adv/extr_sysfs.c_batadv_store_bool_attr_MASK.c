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
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,char const*,char*,...) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int FUNC4(char *buff, size_t count,
				  struct net_device *net_dev,
				  const char *attr_name, atomic_t *attr,
				  bool *changed)
{
	int enabled = -1;

	*changed = false;

	if (buff[count - 1] == '\n')
		buff[count - 1] = '\0';

	if ((FUNC3(buff, "1", 2) == 0) ||
	    (FUNC3(buff, "enable", 7) == 0) ||
	    (FUNC3(buff, "enabled", 8) == 0))
		enabled = 1;

	if ((FUNC3(buff, "0", 2) == 0) ||
	    (FUNC3(buff, "disable", 8) == 0) ||
	    (FUNC3(buff, "disabled", 9) == 0))
		enabled = 0;

	if (enabled < 0) {
		FUNC2(net_dev, "%s: Invalid parameter received: %s\n",
			    attr_name, buff);
		return -EINVAL;
	}

	if (FUNC0(attr) == enabled)
		return count;

	FUNC2(net_dev, "%s: Changing from: %s to: %s\n", attr_name,
		    FUNC0(attr) == 1 ? "enabled" : "disabled",
		    enabled == 1 ? "enabled" : "disabled");

	*changed = true;

	FUNC1(attr, (unsigned int)enabled);
	return count;
}