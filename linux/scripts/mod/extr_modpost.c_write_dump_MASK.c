#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symbol {char* namespace; struct symbol* next; int /*<<< orphan*/  export; TYPE_1__* module; int /*<<< orphan*/  name; int /*<<< orphan*/  crc; } ;
struct buffer {int /*<<< orphan*/  p; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int SYMBOL_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct buffer*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct symbol** symbolhash ; 
 int /*<<< orphan*/  FUNC4 (struct buffer*,char const*) ; 

__attribute__((used)) static void FUNC5(const char *fname)
{
	struct buffer buf = { };
	struct symbol *symbol;
	const char *namespace;
	int n;

	for (n = 0; n < SYMBOL_HASH_SIZE ; n++) {
		symbol = symbolhash[n];
		while (symbol) {
			if (FUNC1(symbol)) {
				namespace = symbol->namespace;
				FUNC0(&buf, "0x%08x\t%s\t%s\t%s\t%s\n",
					   symbol->crc, symbol->name,
					   namespace ? namespace : "",
					   symbol->module->name,
					   FUNC2(symbol->export));
			}
			symbol = symbol->next;
		}
	}
	FUNC4(&buf, fname);
	FUNC3(buf.p);
}