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
struct key_preparsed_payload {size_t datalen; int /*<<< orphan*/  data; } ;
struct key {int /*<<< orphan*/  description; } ;
typedef  char encrypted_key_payload ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*,char const**,char**,char**,char**) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char const*,char*,char*,char*) ; 
 char* FUNC4 (struct key*,char const*,char*,char*) ; 
 char* FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct key*,char*) ; 

__attribute__((used)) static int FUNC9(struct key *key,
				 struct key_preparsed_payload *prep)
{
	struct encrypted_key_payload *epayload = NULL;
	char *datablob = NULL;
	const char *format = NULL;
	char *master_desc = NULL;
	char *decrypted_datalen = NULL;
	char *hex_encoded_iv = NULL;
	size_t datalen = prep->datalen;
	int ret;

	if (datalen <= 0 || datalen > 32767 || !prep->data)
		return -EINVAL;

	datablob = FUNC5(datalen + 1, GFP_KERNEL);
	if (!datablob)
		return -ENOMEM;
	datablob[datalen] = 0;
	FUNC7(datablob, prep->data, datalen);
	ret = FUNC2(datablob, &format, &master_desc,
			     &decrypted_datalen, &hex_encoded_iv);
	if (ret < 0)
		goto out;

	epayload = FUNC4(key, format, master_desc,
				       decrypted_datalen);
	if (FUNC0(epayload)) {
		ret = FUNC1(epayload);
		goto out;
	}
	ret = FUNC3(epayload, key->description, format, master_desc,
			     decrypted_datalen, hex_encoded_iv);
	if (ret < 0) {
		FUNC6(epayload);
		goto out;
	}

	FUNC8(key, epayload);
out:
	FUNC6(datablob);
	return ret;
}