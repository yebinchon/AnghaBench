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
struct hist_entry {int /*<<< orphan*/  mem_info; } ;
typedef  int /*<<< orphan*/  out ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,size_t,char*,unsigned int,char*) ; 

__attribute__((used)) static int FUNC2(struct hist_entry *he, char *bf,
				    size_t size, unsigned int width)
{
	char out[10];

	FUNC0(out, sizeof(out), he->mem_info);
	return FUNC1(bf, size, "%.*s", width, out);
}