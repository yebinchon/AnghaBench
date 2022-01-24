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
struct seq_file {int dummy; } ;
struct request_key_auth {int /*<<< orphan*/  callout_len; int /*<<< orphan*/  pid; } ;
struct key {char* description; } ;

/* Variables and functions */
 struct request_key_auth* FUNC0 (struct key const*) ; 
 scalar_t__ FUNC1 (struct key const*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC4(const struct key *key,
				      struct seq_file *m)
{
	struct request_key_auth *rka = FUNC0(key);

	if (!rka)
		return;

	FUNC3(m, "key:");
	FUNC3(m, key->description);
	if (FUNC1(key))
		FUNC2(m, " pid:%d ci:%zu", rka->pid, rka->callout_len);
}