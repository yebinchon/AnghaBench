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
typedef  int /*<<< orphan*/  u64 ;
struct symbol {int dummy; } ;
struct inline_node {int dummy; } ;
struct dso {int dummy; } ;

/* Variables and functions */
 struct inline_node* FUNC0 (char const*,int /*<<< orphan*/ ,struct dso*,struct symbol*) ; 
 char* FUNC1 (struct dso*) ; 

struct inline_node *FUNC2(struct dso *dso, u64 addr,
					    struct symbol *sym)
{
	const char *dso_name;

	dso_name = FUNC1(dso);
	if (dso_name == NULL)
		return NULL;

	return FUNC0(dso_name, addr, dso, sym);
}