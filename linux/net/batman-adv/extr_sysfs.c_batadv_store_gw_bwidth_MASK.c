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
struct kobject {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,size_t) ; 
 struct batadv_priv* FUNC1 (struct kobject*) ; 
 struct net_device* FUNC2 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct kobject *kobj,
				      struct attribute *attr, char *buff,
				      size_t count)
{
	struct batadv_priv *bat_priv = FUNC1(kobj);
	struct net_device *net_dev = FUNC2(kobj);
	ssize_t length;

	FUNC4(attr);

	if (buff[count - 1] == '\n')
		buff[count - 1] = '\0';

	length = FUNC0(net_dev, buff, count);

	FUNC3(bat_priv);

	return length;
}