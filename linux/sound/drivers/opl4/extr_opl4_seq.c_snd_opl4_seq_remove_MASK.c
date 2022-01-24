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
struct snd_seq_device {int dummy; } ;
struct snd_opl4 {int seq_client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct snd_seq_device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct snd_seq_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *_dev)
{
	struct snd_seq_device *dev = FUNC2(_dev);
	struct snd_opl4 *opl4;

	opl4 = *(struct snd_opl4 **)FUNC0(dev);
	if (!opl4)
		return -EINVAL;

	if (opl4->seq_client >= 0) {
		FUNC1(opl4->seq_client);
		opl4->seq_client = -1;
	}
	return 0;
}