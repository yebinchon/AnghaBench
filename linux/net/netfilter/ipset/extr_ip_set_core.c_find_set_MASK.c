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
struct ip_set_net {int dummy; } ;
struct ip_set {int dummy; } ;
typedef  int /*<<< orphan*/  ip_set_id_t ;

/* Variables and functions */
 struct ip_set* FUNC0 (struct ip_set_net*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct ip_set *
FUNC1(struct ip_set_net *inst, const char *name)
{
	ip_set_id_t id;

	return FUNC0(inst, name, &id);
}