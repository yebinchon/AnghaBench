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
typedef  char u8 ;
typedef  enum derived_key_type { ____Placeholder_derived_key_type } derived_key_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int HASH_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  hash_tfm ; 
 char* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(u8 *derived_key, enum derived_key_type key_type,
			   const u8 *master_key, size_t master_keylen)
{
	u8 *derived_buf;
	unsigned int derived_buf_len;
	int ret;

	derived_buf_len = FUNC5("AUTH_KEY") + 1 + master_keylen;
	if (derived_buf_len < HASH_SIZE)
		derived_buf_len = HASH_SIZE;

	derived_buf = FUNC1(derived_buf_len, GFP_KERNEL);
	if (!derived_buf)
		return -ENOMEM;

	if (key_type)
		FUNC4(derived_buf, "AUTH_KEY");
	else
		FUNC4(derived_buf, "ENC_KEY");

	FUNC3(derived_buf + FUNC5(derived_buf) + 1, master_key,
	       master_keylen);
	ret = FUNC0(hash_tfm, derived_key, derived_buf, derived_buf_len);
	FUNC2(derived_buf);
	return ret;
}