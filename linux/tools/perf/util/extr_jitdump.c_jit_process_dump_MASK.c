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
struct TYPE_2__ {int id; } ;
union jr_entry {TYPE_1__ prefix; } ;
struct jit_buf_desc {int dummy; } ;

/* Variables and functions */
#define  JIT_CODE_DEBUG_INFO 131 
#define  JIT_CODE_LOAD 130 
#define  JIT_CODE_MOVE 129 
#define  JIT_CODE_UNWINDING_INFO 128 
 union jr_entry* FUNC0 (struct jit_buf_desc*) ; 
 int FUNC1 (struct jit_buf_desc*,union jr_entry*) ; 
 int FUNC2 (struct jit_buf_desc*,union jr_entry*) ; 
 int FUNC3 (struct jit_buf_desc*,union jr_entry*) ; 
 int FUNC4 (struct jit_buf_desc*,union jr_entry*) ; 

__attribute__((used)) static int
FUNC5(struct jit_buf_desc *jd)
{
	union jr_entry *jr;
	int ret = 0;

	while ((jr = FUNC0(jd))) {
		switch(jr->prefix.id) {
		case JIT_CODE_LOAD:
			ret = FUNC1(jd, jr);
			break;
		case JIT_CODE_MOVE:
			ret = FUNC2(jd, jr);
			break;
		case JIT_CODE_DEBUG_INFO:
			ret = FUNC3(jd, jr);
			break;
		case JIT_CODE_UNWINDING_INFO:
			ret = FUNC4(jd, jr);
			break;
		default:
			ret = 0;
			continue;
		}
	}
	return ret;
}