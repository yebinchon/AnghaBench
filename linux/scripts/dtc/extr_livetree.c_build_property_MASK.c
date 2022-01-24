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
struct srcpos {int dummy; } ;
struct data {int dummy; } ;
struct property {char* name; int /*<<< orphan*/  srcpos; struct data val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct property*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct srcpos*) ; 
 struct property* FUNC2 (int) ; 

struct property *FUNC3(char *name, struct data val,
				struct srcpos *srcpos)
{
	struct property *new = FUNC2(sizeof(*new));

	FUNC0(new, 0, sizeof(*new));

	new->name = name;
	new->val = val;
	new->srcpos = FUNC1(srcpos);

	return new;
}