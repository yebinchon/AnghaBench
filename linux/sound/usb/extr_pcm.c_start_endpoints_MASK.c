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
struct snd_usb_substream {int /*<<< orphan*/  flags; struct snd_usb_endpoint* data_endpoint; TYPE_1__* dev; struct snd_usb_endpoint* sync_endpoint; } ;
struct snd_usb_endpoint {scalar_t__ iface; scalar_t__ altsetting; struct snd_usb_endpoint* sync_slave; struct snd_usb_substream* data_subs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  SUBSTREAM_FLAG_DATA_EP_STARTED ; 
 int /*<<< orphan*/  SUBSTREAM_FLAG_SYNC_EP_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct snd_usb_endpoint*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,int) ; 
 int FUNC3 (struct snd_usb_endpoint*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct snd_usb_substream *subs)
{
	int err;

	if (!subs->data_endpoint)
		return -EINVAL;

	if (!FUNC4(SUBSTREAM_FLAG_DATA_EP_STARTED, &subs->flags)) {
		struct snd_usb_endpoint *ep = subs->data_endpoint;

		FUNC1(&subs->dev->dev, "Starting data EP @%p\n", ep);

		ep->data_subs = subs;
		err = FUNC3(ep);
		if (err < 0) {
			FUNC0(SUBSTREAM_FLAG_DATA_EP_STARTED, &subs->flags);
			return err;
		}
	}

	if (subs->sync_endpoint &&
	    !FUNC4(SUBSTREAM_FLAG_SYNC_EP_STARTED, &subs->flags)) {
		struct snd_usb_endpoint *ep = subs->sync_endpoint;

		if (subs->data_endpoint->iface != subs->sync_endpoint->iface ||
		    subs->data_endpoint->altsetting != subs->sync_endpoint->altsetting) {
			err = FUNC5(subs->dev,
						subs->sync_endpoint->iface,
						subs->sync_endpoint->altsetting);
			if (err < 0) {
				FUNC0(SUBSTREAM_FLAG_SYNC_EP_STARTED, &subs->flags);
				FUNC2(&subs->dev->dev,
					   "%d:%d: cannot set interface (%d)\n",
					   subs->sync_endpoint->iface,
					   subs->sync_endpoint->altsetting, err);
				return -EIO;
			}
		}

		FUNC1(&subs->dev->dev, "Starting sync EP @%p\n", ep);

		ep->sync_slave = subs->data_endpoint;
		err = FUNC3(ep);
		if (err < 0) {
			FUNC0(SUBSTREAM_FLAG_SYNC_EP_STARTED, &subs->flags);
			return err;
		}
	}

	return 0;
}