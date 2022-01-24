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
typedef  size_t u8 ;
struct sw842_param {size_t* index8; size_t* data8; size_t* index4; size_t* data4; size_t* index2; size_t* data2; } ;

/* Variables and functions */
 int EINVAL ; 
 int I2_BITS ; 
 int I4_BITS ; 
 int I8_BITS ; 
 size_t OPS_MAX ; 
 size_t OP_ACTION_DATA ; 
 size_t OP_ACTION_INDEX ; 
 size_t OP_ACTION_NOOP ; 
 size_t OP_AMOUNT ; 
#define  OP_AMOUNT_0 131 
#define  OP_AMOUNT_2 130 
#define  OP_AMOUNT_4 129 
#define  OP_AMOUNT_8 128 
 int OP_BITS ; 
 int FUNC0 (struct sw842_param*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t** comp_ops ; 
 size_t FUNC2 (struct sw842_param*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int,size_t,size_t,size_t,size_t) ; 
 scalar_t__ sw842_template_counts ; 
 int /*<<< orphan*/ * template_count ; 

__attribute__((used)) static int FUNC5(struct sw842_param *p, u8 c)
{
	int ret, i, b = 0;
	u8 *t = comp_ops[c];
	bool inv = false;

	if (c >= OPS_MAX)
		return -EINVAL;

	FUNC3("template %x\n", t[4]);

	ret = FUNC0(p, t[4], OP_BITS);
	if (ret)
		return ret;

	for (i = 0; i < 4; i++) {
		FUNC3("op %x\n", t[i]);

		switch (t[i] & OP_AMOUNT) {
		case OP_AMOUNT_8:
			if (b)
				inv = true;
			else if (t[i] & OP_ACTION_INDEX)
				ret = FUNC0(p, p->index8[0], I8_BITS);
			else if (t[i] & OP_ACTION_DATA)
				ret = FUNC0(p, p->data8[0], 64);
			else
				inv = true;
			break;
		case OP_AMOUNT_4:
			if (b == 2 && t[i] & OP_ACTION_DATA)
				ret = FUNC0(p, FUNC2(p, 2, 32), 32);
			else if (b != 0 && b != 4)
				inv = true;
			else if (t[i] & OP_ACTION_INDEX)
				ret = FUNC0(p, p->index4[b >> 2], I4_BITS);
			else if (t[i] & OP_ACTION_DATA)
				ret = FUNC0(p, p->data4[b >> 2], 32);
			else
				inv = true;
			break;
		case OP_AMOUNT_2:
			if (b != 0 && b != 2 && b != 4 && b != 6)
				inv = true;
			if (t[i] & OP_ACTION_INDEX)
				ret = FUNC0(p, p->index2[b >> 1], I2_BITS);
			else if (t[i] & OP_ACTION_DATA)
				ret = FUNC0(p, p->data2[b >> 1], 16);
			else
				inv = true;
			break;
		case OP_AMOUNT_0:
			inv = (b != 8) || !(t[i] & OP_ACTION_NOOP);
			break;
		default:
			inv = true;
			break;
		}

		if (ret)
			return ret;

		if (inv) {
			FUNC4("Invalid templ %x op %d : %x %x %x %x\n",
			       c, i, t[0], t[1], t[2], t[3]);
			return -EINVAL;
		}

		b += t[i] & OP_AMOUNT;
	}

	if (b != 8) {
		FUNC4("Invalid template %x len %x : %x %x %x %x\n",
		       c, b, t[0], t[1], t[2], t[3]);
		return -EINVAL;
	}

	if (sw842_template_counts)
		FUNC1(&template_count[t[4]]);

	return 0;
}