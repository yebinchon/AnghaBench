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
struct snd_card {int /*<<< orphan*/  private_data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct snd_card* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *op)
{
	struct snd_card *card = FUNC0(&op->dev);

	FUNC2(card->private_data);
	FUNC1(card);

	return 0;
}