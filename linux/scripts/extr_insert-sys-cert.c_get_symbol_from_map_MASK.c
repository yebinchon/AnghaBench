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
struct sym {int offset; char* name; void* content; int /*<<< orphan*/  address; scalar_t__ size; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  Elf_Ehdr ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int LINE_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,char) ; 
 char* FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(Elf_Ehdr *hdr, FILE *f, char *name,
				struct sym *s)
{
	char l[LINE_SIZE];
	char *w, *p, *n;

	s->size = 0;
	s->address = 0;
	s->offset = 0;
	if (FUNC3(f, 0, SEEK_SET) != 0) {
		FUNC5("File seek failed");
		FUNC1(EXIT_FAILURE);
	}
	while (FUNC2(l, LINE_SIZE, f)) {
		p = FUNC6(l, '\n');
		if (!p) {
			FUNC0("Missing line ending.\n");
			return;
		}
		n = FUNC7(l, name);
		if (n)
			break;
	}
	if (!n) {
		FUNC0("Unable to find symbol: %s\n", name);
		return;
	}
	w = FUNC6(l, ' ');
	if (!w)
		return;

	*w = '\0';
	s->address = FUNC8(l, NULL, 16);
	if (s->address == 0)
		return;
	s->offset = FUNC4(hdr, s->address);
	s->name = name;
	s->content = (void *)hdr + s->offset;
}