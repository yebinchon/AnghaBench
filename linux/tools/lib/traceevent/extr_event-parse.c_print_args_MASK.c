#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct trace_seq {int dummy; } ;
struct TYPE_11__ {char* op; struct tep_print_arg* right; struct tep_print_arg* left; } ;
struct TYPE_20__ {char* type; struct tep_print_arg* item; } ;
struct TYPE_19__ {char* bitmask; } ;
struct TYPE_18__ {char* string; } ;
struct TYPE_17__ {struct tep_print_arg* el_size; struct tep_print_arg* count; struct tep_print_arg* field; } ;
struct TYPE_16__ {struct tep_print_arg* size; struct tep_print_arg* field; } ;
struct TYPE_15__ {int /*<<< orphan*/  symbols; struct tep_print_arg* field; } ;
struct TYPE_14__ {char* delim; int /*<<< orphan*/  flags; struct tep_print_arg* field; } ;
struct TYPE_13__ {char* name; } ;
struct TYPE_12__ {char* atom; } ;
struct tep_print_arg {int type; struct tep_print_arg* next; TYPE_10__ op; TYPE_9__ typecast; TYPE_8__ bitmask; TYPE_7__ string; TYPE_6__ int_array; TYPE_5__ hex; TYPE_4__ symbol; TYPE_3__ flags; TYPE_2__ field; TYPE_1__ atom; } ;

/* Variables and functions */
#define  TEP_PRINT_ATOM 140 
#define  TEP_PRINT_BITMASK 139 
#define  TEP_PRINT_BSTRING 138 
#define  TEP_PRINT_FIELD 137 
#define  TEP_PRINT_FLAGS 136 
#define  TEP_PRINT_HEX 135 
#define  TEP_PRINT_HEX_STR 134 
#define  TEP_PRINT_INT_ARRAY 133 
#define  TEP_PRINT_NULL 132 
#define  TEP_PRINT_OP 131 
#define  TEP_PRINT_STRING 130 
#define  TEP_PRINT_SYMBOL 129 
#define  TEP_PRINT_TYPE 128 
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_seq*) ; 

__attribute__((used)) static void FUNC6(struct tep_print_arg *args)
{
	int print_paren = 1;
	struct trace_seq s;

	switch (args->type) {
	case TEP_PRINT_NULL:
		FUNC1("null");
		break;
	case TEP_PRINT_ATOM:
		FUNC1("%s", args->atom.atom);
		break;
	case TEP_PRINT_FIELD:
		FUNC1("REC->%s", args->field.name);
		break;
	case TEP_PRINT_FLAGS:
		FUNC1("__print_flags(");
		FUNC6(args->flags.field);
		FUNC1(", %s, ", args->flags.delim);
		FUNC5(&s);
		FUNC0(&s, args->flags.flags);
		FUNC4(&s);
		FUNC3(&s);
		FUNC1(")");
		break;
	case TEP_PRINT_SYMBOL:
		FUNC1("__print_symbolic(");
		FUNC6(args->symbol.field);
		FUNC1(", ");
		FUNC5(&s);
		FUNC0(&s, args->symbol.symbols);
		FUNC4(&s);
		FUNC3(&s);
		FUNC1(")");
		break;
	case TEP_PRINT_HEX:
		FUNC1("__print_hex(");
		FUNC6(args->hex.field);
		FUNC1(", ");
		FUNC6(args->hex.size);
		FUNC1(")");
		break;
	case TEP_PRINT_HEX_STR:
		FUNC1("__print_hex_str(");
		FUNC6(args->hex.field);
		FUNC1(", ");
		FUNC6(args->hex.size);
		FUNC1(")");
		break;
	case TEP_PRINT_INT_ARRAY:
		FUNC1("__print_array(");
		FUNC6(args->int_array.field);
		FUNC1(", ");
		FUNC6(args->int_array.count);
		FUNC1(", ");
		FUNC6(args->int_array.el_size);
		FUNC1(")");
		break;
	case TEP_PRINT_STRING:
	case TEP_PRINT_BSTRING:
		FUNC1("__get_str(%s)", args->string.string);
		break;
	case TEP_PRINT_BITMASK:
		FUNC1("__get_bitmask(%s)", args->bitmask.bitmask);
		break;
	case TEP_PRINT_TYPE:
		FUNC1("(%s)", args->typecast.type);
		FUNC6(args->typecast.item);
		break;
	case TEP_PRINT_OP:
		if (FUNC2(args->op.op, ":") == 0)
			print_paren = 0;
		if (print_paren)
			FUNC1("(");
		FUNC6(args->op.left);
		FUNC1(" %s ", args->op.op);
		FUNC6(args->op.right);
		if (print_paren)
			FUNC1(")");
		break;
	default:
		/* we should warn... */
		return;
	}
	if (args->next) {
		FUNC1("\n");
		FUNC6(args->next);
	}
}