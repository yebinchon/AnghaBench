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
struct snd_soc_dapm_path {int connect; int /*<<< orphan*/  sink; int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dapm_path*) ; 

__attribute__((used)) static void FUNC2(struct snd_soc_dapm_path *path,
	bool connect, const char *reason)
{
	if (path->connect == connect)
		return;

	path->connect = connect;
	FUNC0(path->source, reason);
	FUNC0(path->sink, reason);
	FUNC1(path);
}