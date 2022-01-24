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
struct tracepoint_path {struct tracepoint_path* name; struct tracepoint_path* system; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tracepoint_path*) ; 
 char* FUNC1 (char const*,char) ; 
 struct tracepoint_path* FUNC2 (char*) ; 
 struct tracepoint_path* FUNC3 (char const*,int) ; 
 struct tracepoint_path* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct tracepoint_path**) ; 

struct tracepoint_path *FUNC6(const char *name)
{
	struct tracepoint_path *path = FUNC4(sizeof(*path));
	char *str = FUNC1(name, ':');

	if (path == NULL || str == NULL) {
		FUNC0(path);
		return NULL;
	}

	path->system = FUNC3(name, str - name);
	path->name = FUNC2(str+1);

	if (path->system == NULL || path->name == NULL) {
		FUNC5(&path->system);
		FUNC5(&path->name);
		FUNC5(&path);
	}

	return path;
}