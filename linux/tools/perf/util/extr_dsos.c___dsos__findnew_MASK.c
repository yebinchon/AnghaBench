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
struct dsos {int dummy; } ;
struct dso {int dummy; } ;

/* Variables and functions */
 struct dso* FUNC0 (struct dsos*,char const*) ; 
 struct dso* FUNC1 (struct dsos*,char const*,int) ; 

struct dso *FUNC2(struct dsos *dsos, const char *name)
{
	struct dso *dso = FUNC1(dsos, name, false);

	return dso ? dso : FUNC0(dsos, name);
}