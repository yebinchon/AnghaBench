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
struct pcm_urb {int /*<<< orphan*/  submitted; int /*<<< orphan*/  instance; scalar_t__ buffer; struct hiface_chip* chip; } ;
struct hiface_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCM_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void (*) (struct urb*),struct pcm_urb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct pcm_urb *urb,
			       struct hiface_chip *chip,
			       unsigned int ep,
			       void (*handler)(struct urb *))
{
	urb->chip = chip;
	FUNC3(&urb->instance);

	urb->buffer = FUNC1(PCM_PACKET_SIZE, GFP_KERNEL);
	if (!urb->buffer)
		return -ENOMEM;

	FUNC2(&urb->instance, chip->dev,
			  FUNC4(chip->dev, ep), (void *)urb->buffer,
			  PCM_PACKET_SIZE, handler, urb);
	if (FUNC5(&urb->instance))
		return -EINVAL;
	FUNC0(&urb->submitted);

	return 0;
}