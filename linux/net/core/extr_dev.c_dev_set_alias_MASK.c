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
struct net_device {int /*<<< orphan*/  ifalias; } ;
struct dev_ifalias {scalar_t__* ifalias; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IFALIASZ ; 
 int /*<<< orphan*/  ifalias_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct dev_ifalias*,int /*<<< orphan*/ ) ; 
 struct dev_ifalias* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct dev_ifalias*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcuhead ; 

int FUNC7(struct net_device *dev, const char *alias, size_t len)
{
	struct dev_ifalias *new_alias = NULL;

	if (len >= IFALIASZ)
		return -EINVAL;

	if (len) {
		new_alias = FUNC1(sizeof(*new_alias) + len + 1, GFP_KERNEL);
		if (!new_alias)
			return -ENOMEM;

		FUNC2(new_alias->ifalias, alias, len);
		new_alias->ifalias[len] = 0;
	}

	FUNC4(&ifalias_mutex);
	FUNC6(dev->ifalias, new_alias,
			   FUNC3(&ifalias_mutex));
	FUNC5(&ifalias_mutex);

	if (new_alias)
		FUNC0(new_alias, rcuhead);

	return len;
}