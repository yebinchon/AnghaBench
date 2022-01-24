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
struct symbol {struct symbol* visited; void* expansion_trail; struct string_list* defn; } ;
struct string_list {int tag; char* string; struct string_list* next; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
#define  SYM_ENUM 133 
#define  SYM_ENUM_CONST 132 
#define  SYM_NORMAL 131 
#define  SYM_STRUCT 130 
#define  SYM_TYPEDEF 129 
#define  SYM_UNION 128 
 struct symbol* FUNC0 (char*,size_t,struct string_list*,int /*<<< orphan*/ ) ; 
 struct string_list** FUNC1 (int) ; 
 struct string_list* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  debugfile ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 void* expansion_trail ; 
 struct symbol* FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_dump_defs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 unsigned long FUNC7 (char*,unsigned long) ; 
 unsigned long FUNC8 (char,unsigned long) ; 
 TYPE_1__* symbol_types ; 
 struct symbol* visited_symbols ; 

__attribute__((used)) static unsigned long FUNC9(struct symbol *sym, unsigned long crc)
{
	struct string_list *list = sym->defn;
	struct string_list **e, **b;
	struct string_list *tmp, **tmp2;
	int elem = 1;

	if (!list)
		return crc;

	tmp = list;
	while ((tmp = tmp->next) != NULL)
		elem++;

	b = FUNC1(elem * sizeof(*e));
	e = b + elem;
	tmp2 = e - 1;

	*(tmp2--) = list;
	while ((list = list->next) != NULL)
		*(tmp2--) = list;

	while (b != e) {
		struct string_list *cur;
		struct symbol *subsym;

		cur = *(b++);
		switch (cur->tag) {
		case SYM_NORMAL:
			if (flag_dump_defs)
				FUNC5(debugfile, "%s ", cur->string);
			crc = FUNC7(cur->string, crc);
			crc = FUNC8(' ', crc);
			break;

		case SYM_ENUM_CONST:
		case SYM_TYPEDEF:
			subsym = FUNC4(cur->string, cur->tag, 0);
			/* FIXME: Bad reference files can segfault here. */
			if (subsym->expansion_trail) {
				if (flag_dump_defs)
					FUNC5(debugfile, "%s ", cur->string);
				crc = FUNC7(cur->string, crc);
				crc = FUNC8(' ', crc);
			} else {
				subsym->expansion_trail = expansion_trail;
				expansion_trail = subsym;
				crc = FUNC9(subsym, crc);
			}
			break;

		case SYM_STRUCT:
		case SYM_UNION:
		case SYM_ENUM:
			subsym = FUNC4(cur->string, cur->tag, 0);
			if (!subsym) {
				struct string_list *n;

				FUNC3("expand undefined %s %s",
					       symbol_types[cur->tag].name,
					       cur->string);
				n = FUNC2(FUNC6
						(symbol_types[cur->tag].name),
						FUNC6(cur->string),
						FUNC6("{"),
						FUNC6("UNKNOWN"),
						FUNC6("}"), NULL);
				subsym =
				    FUNC0(cur->string, cur->tag, n, 0);
			}
			if (subsym->expansion_trail) {
				if (flag_dump_defs) {
					FUNC5(debugfile, "%s %s ",
						symbol_types[cur->tag].name,
						cur->string);
				}

				crc = FUNC7(symbol_types[cur->tag].name,
						    crc);
				crc = FUNC8(' ', crc);
				crc = FUNC7(cur->string, crc);
				crc = FUNC8(' ', crc);
			} else {
				subsym->expansion_trail = expansion_trail;
				expansion_trail = subsym;
				crc = FUNC9(subsym, crc);
			}
			break;
		}
	}

	{
		static struct symbol **end = &visited_symbols;

		if (!sym->visited) {
			*end = sym;
			end = &sym->visited;
			sym->visited = (struct symbol *)-1L;
		}
	}

	return crc;
}