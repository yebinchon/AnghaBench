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
struct evsel {int dummy; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct evsel*) ; 
 struct evsel* FUNC1 (struct evlist*,char*) ; 

int FUNC2(struct evlist *evlist)
{
	struct evsel *evsel = FUNC1(evlist, "__bpf_stdout__");
	return FUNC0(evsel);
}