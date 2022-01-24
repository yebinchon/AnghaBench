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
struct unicode_data {scalar_t__* utf8nfdi; unsigned int* utf32nfdi; unsigned int* utf32nfdicf; void* utf8nfdicf; } ;

/* Variables and functions */
 scalar_t__ HANGUL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__*,char*) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct unicode_data *data)
{
	char utf[18*4+1];
	char *u;
	unsigned int *um;
	int i;

	if (data->utf8nfdi) {
		FUNC0(data->utf8nfdi[0] == HANGUL);
		return;
	}

	u = utf;
	um = data->utf32nfdi;
	if (um) {
		for (i = 0; um[i]; i++)
			u += FUNC3(u, um[i]);
		*u = '\0';
		data->utf8nfdi = FUNC2(utf);
	}
	u = utf;
	um = data->utf32nfdicf;
	if (um) {
		for (i = 0; um[i]; i++)
			u += FUNC3(u, um[i]);
		*u = '\0';
		if (!data->utf8nfdi || FUNC1(data->utf8nfdi, utf))
			data->utf8nfdicf = FUNC2(utf);
	}
}