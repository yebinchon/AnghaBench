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
struct encrypted_key_payload {unsigned short datablob_len; char* master_desc; char* format; } ;
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/  derived_key ;

/* Variables and functions */
 int /*<<< orphan*/  AUTH_KEY ; 
 int EINVAL ; 
 int HASH_SIZE ; 
 int FUNC0 (char*,char*,int,char*,unsigned short) ; 
 int FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct encrypted_key_payload *epayload,
				const u8 *format, const u8 *master_key,
				size_t master_keylen)
{
	u8 derived_key[HASH_SIZE];
	u8 digest[HASH_SIZE];
	int ret;
	char *p;
	unsigned short len;

	ret = FUNC3(derived_key, AUTH_KEY, master_key, master_keylen);
	if (ret < 0)
		goto out;

	len = epayload->datablob_len;
	if (!format) {
		p = epayload->master_desc;
		len -= FUNC5(epayload->format) + 1;
	} else
		p = epayload->format;

	ret = FUNC0(digest, derived_key, sizeof derived_key, p, len);
	if (ret < 0)
		goto out;
	ret = FUNC1(digest, epayload->format + epayload->datablob_len,
			    sizeof(digest));
	if (ret) {
		ret = -EINVAL;
		FUNC2("datablob",
			  epayload->format + epayload->datablob_len,
			  HASH_SIZE);
		FUNC2("calc", digest, HASH_SIZE);
	}
out:
	FUNC4(derived_key, sizeof(derived_key));
	return ret;
}