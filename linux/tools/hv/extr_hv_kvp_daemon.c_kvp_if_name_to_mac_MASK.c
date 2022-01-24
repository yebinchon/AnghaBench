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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  addr_file ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* KVP_NET_DIR ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*,char*) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char*) ; 
 unsigned int FUNC6 (char*) ; 
 char FUNC7 (char) ; 

__attribute__((used)) static char *FUNC8(char *if_name)
{
	FILE    *file;
	char    *p, *x;
	char    buf[256];
	char addr_file[PATH_MAX];
	unsigned int i;
	char *mac_addr = NULL;

	FUNC3(addr_file, sizeof(addr_file), "%s%s%s", KVP_NET_DIR,
		 if_name, "/address");

	file = FUNC2(addr_file, "r");
	if (file == NULL)
		return NULL;

	p = FUNC1(buf, sizeof(buf), file);
	if (p) {
		x = FUNC4(p, '\n');
		if (x)
			*x = '\0';
		for (i = 0; i < FUNC6(p); i++)
			p[i] = FUNC7(p[i]);
		mac_addr = FUNC5(p);
	}

	FUNC0(file);
	return mac_addr;
}