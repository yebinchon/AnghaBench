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
struct bt_ctf_field_type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CTF_BYTE_ORDER_BIG_ENDIAN ; 
 int /*<<< orphan*/  BT_CTF_BYTE_ORDER_LITTLE_ENDIAN ; 
 int /*<<< orphan*/  BT_CTF_INTEGER_BASE_HEXADECIMAL ; 
 struct bt_ctf_field_type* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct bt_ctf_field_type*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bt_ctf_field_type*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bt_ctf_field_type*) ; 
 int /*<<< orphan*/  FUNC4 (struct bt_ctf_field_type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 

__attribute__((used)) static struct bt_ctf_field_type *FUNC6(int size, bool sign, bool hex)
{
	struct bt_ctf_field_type *type;

	type = FUNC0(size);
	if (!type)
		return NULL;

	if (sign &&
	    FUNC2(type, 1))
		goto err;

	if (hex &&
	    FUNC1(type, BT_CTF_INTEGER_BASE_HEXADECIMAL))
		goto err;

#if __BYTE_ORDER == __BIG_ENDIAN
	FUNC4(type, BT_CTF_BYTE_ORDER_BIG_ENDIAN);
#else
	bt_ctf_field_type_set_byte_order(type, BT_CTF_BYTE_ORDER_LITTLE_ENDIAN);
#endif

	FUNC5("Created type: INTEGER %d-bit %ssigned %s\n",
	    size, sign ? "un" : "", hex ? "hex" : "");
	return type;

err:
	FUNC3(type);
	return NULL;
}