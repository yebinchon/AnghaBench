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
struct key_preparsed_payload {size_t datalen; char* data; } ;
struct TYPE_2__ {struct encrypted_key_payload** data; } ;
struct key {TYPE_1__ payload; } ;
struct encrypted_key_payload {char* iv; char* payload_data; size_t payload_datalen; int /*<<< orphan*/  rcu; int /*<<< orphan*/  datalen; int /*<<< orphan*/  format; int /*<<< orphan*/  master_desc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOKEY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct encrypted_key_payload*) ; 
 int FUNC1 (struct encrypted_key_payload*) ; 
 int /*<<< orphan*/  FUNC2 (struct encrypted_key_payload*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,char const**,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct encrypted_key_payload* FUNC5 (struct key*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  encrypted_rcu_free ; 
 size_t ivsize ; 
 scalar_t__ FUNC6 (struct key*) ; 
 char* FUNC7 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct key*,struct encrypted_key_payload*) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct key *key, struct key_preparsed_payload *prep)
{
	struct encrypted_key_payload *epayload = key->payload.data[0];
	struct encrypted_key_payload *new_epayload;
	char *buf;
	char *new_master_desc = NULL;
	const char *format = NULL;
	size_t datalen = prep->datalen;
	int ret = 0;

	if (FUNC6(key))
		return -ENOKEY;
	if (datalen <= 0 || datalen > 32767 || !prep->data)
		return -EINVAL;

	buf = FUNC7(datalen + 1, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	buf[datalen] = 0;
	FUNC9(buf, prep->data, datalen);
	ret = FUNC4(buf, &format, &new_master_desc, NULL, NULL);
	if (ret < 0)
		goto out;

	ret = FUNC11(new_master_desc, epayload->master_desc);
	if (ret < 0)
		goto out;

	new_epayload = FUNC5(key, epayload->format,
					   new_master_desc, epayload->datalen);
	if (FUNC0(new_epayload)) {
		ret = FUNC1(new_epayload);
		goto out;
	}

	FUNC2(new_epayload, epayload->format, new_master_desc,
		    epayload->datalen);

	FUNC9(new_epayload->iv, epayload->iv, ivsize);
	FUNC9(new_epayload->payload_data, epayload->payload_data,
	       epayload->payload_datalen);

	FUNC10(key, new_epayload);
	FUNC3(&epayload->rcu, encrypted_rcu_free);
out:
	FUNC8(buf);
	return ret;
}