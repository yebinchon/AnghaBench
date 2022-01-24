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
struct snd_seq_client {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 struct snd_seq_client* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_seq_client*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(int client)
{
	struct snd_seq_client *ptr;

	if (FUNC4(FUNC1()))
		return -EBUSY;

	ptr = FUNC0(client);
	if (ptr == NULL)
		return -EINVAL;

	FUNC3(ptr);
	FUNC2(ptr);
	return 0;
}