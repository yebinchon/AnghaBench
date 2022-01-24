#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct batadv_priv {TYPE_1__* algo_ops; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 struct batadv_priv* FUNC0 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC1 (struct attribute*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj,
				    struct attribute *attr, char *buff)
{
	struct batadv_priv *bat_priv = FUNC0(kobj);

	FUNC1(attr);
	return FUNC2(buff, "%s\n", bat_priv->algo_ops->name);
}