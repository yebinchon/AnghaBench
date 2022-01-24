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
struct key_match_data {char* raw_data; } ;
struct key {char* description; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*,int) ; 

__attribute__((used)) static bool FUNC5(const struct key *key,
			     const struct key_match_data *match_data)
{
	int slen, dlen, ret = 0;
	const char *src = key->description, *dsp = match_data->raw_data;

	FUNC0("%s,%s", src, dsp);

	if (!src || !dsp)
		goto no_match;

	if (FUNC2(src, dsp) == 0)
		goto matched;

	slen = FUNC3(src);
	dlen = FUNC3(dsp);
	if (slen <= 0 || dlen <= 0)
		goto no_match;
	if (src[slen - 1] == '.')
		slen--;
	if (dsp[dlen - 1] == '.')
		dlen--;
	if (slen != dlen || FUNC4(src, dsp, slen) != 0)
		goto no_match;

matched:
	ret = 1;
no_match:
	FUNC1(" = %d", ret);
	return ret;
}