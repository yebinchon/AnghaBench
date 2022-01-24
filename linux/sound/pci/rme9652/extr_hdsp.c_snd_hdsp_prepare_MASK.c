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
struct snd_pcm_substream {int dummy; } ;
struct hdsp {int /*<<< orphan*/  lock; int /*<<< orphan*/  running; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct hdsp*,int) ; 
 scalar_t__ FUNC1 (struct hdsp*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdsp*) ; 
 struct hdsp* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct hdsp *hdsp = FUNC3(substream);
	int result = 0;

	if (FUNC1 (hdsp))
		return -EIO;

	if (FUNC0(hdsp, 1))
		return -EIO;

	FUNC4(&hdsp->lock);
	if (!hdsp->running)
		FUNC2(hdsp);
	FUNC5(&hdsp->lock);
	return result;
}