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
typedef  int /*<<< orphan*/  vq_callback_t ;
struct virtio_vsock {int tx_run; int rx_run; int event_run; int /*<<< orphan*/  event_lock; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  loopback_work; int /*<<< orphan*/  send_pkt_work; int /*<<< orphan*/  event_work; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  rx_work; int /*<<< orphan*/  loopback_list; int /*<<< orphan*/  loopback_list_lock; int /*<<< orphan*/  send_pkt_list; int /*<<< orphan*/  send_pkt_list_lock; int /*<<< orphan*/  queued_replies; scalar_t__ rx_buf_max_nr; scalar_t__ rx_buf_nr; int /*<<< orphan*/  vqs; struct virtio_device* vdev; } ;
struct virtio_device {struct virtio_vsock* priv; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VSOCK_VQ_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_vsock*) ; 
 struct virtio_vsock* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct virtio_vsock*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_virtio_vsock ; 
 int /*<<< orphan*/  the_virtio_vsock_mutex ; 
 int FUNC13 (struct virtio_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,char const* const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  virtio_transport_event_work ; 
 int /*<<< orphan*/  virtio_transport_loopback_work ; 
 int /*<<< orphan*/  virtio_transport_rx_work ; 
 int /*<<< orphan*/  virtio_transport_send_pkt_work ; 
 int /*<<< orphan*/  virtio_transport_tx_work ; 
 int /*<<< orphan*/ * virtio_vsock_event_done ; 
 int /*<<< orphan*/  FUNC14 (struct virtio_vsock*) ; 
 int /*<<< orphan*/ * virtio_vsock_rx_done ; 
 int /*<<< orphan*/  FUNC15 (struct virtio_vsock*) ; 
 int /*<<< orphan*/ * virtio_vsock_tx_done ; 
 int /*<<< orphan*/  FUNC16 (struct virtio_vsock*) ; 

__attribute__((used)) static int FUNC17(struct virtio_device *vdev)
{
	vq_callback_t *callbacks[] = {
		virtio_vsock_rx_done,
		virtio_vsock_tx_done,
		virtio_vsock_event_done,
	};
	static const char * const names[] = {
		"rx",
		"tx",
		"event",
	};
	struct virtio_vsock *vsock = NULL;
	int ret;

	ret = FUNC8(&the_virtio_vsock_mutex);
	if (ret)
		return ret;

	/* Only one virtio-vsock device per guest is supported */
	if (FUNC11(the_virtio_vsock,
				FUNC5(&the_virtio_vsock_mutex))) {
		ret = -EBUSY;
		goto out;
	}

	vsock = FUNC4(sizeof(*vsock), GFP_KERNEL);
	if (!vsock) {
		ret = -ENOMEM;
		goto out;
	}

	vsock->vdev = vdev;

	ret = FUNC13(vsock->vdev, VSOCK_VQ_MAX,
			      vsock->vqs, callbacks, names,
			      NULL);
	if (ret < 0)
		goto out;

	FUNC16(vsock);

	vsock->rx_buf_nr = 0;
	vsock->rx_buf_max_nr = 0;
	FUNC2(&vsock->queued_replies, 0);

	FUNC6(&vsock->tx_lock);
	FUNC6(&vsock->rx_lock);
	FUNC6(&vsock->event_lock);
	FUNC12(&vsock->send_pkt_list_lock);
	FUNC0(&vsock->send_pkt_list);
	FUNC12(&vsock->loopback_list_lock);
	FUNC0(&vsock->loopback_list);
	FUNC1(&vsock->rx_work, virtio_transport_rx_work);
	FUNC1(&vsock->tx_work, virtio_transport_tx_work);
	FUNC1(&vsock->event_work, virtio_transport_event_work);
	FUNC1(&vsock->send_pkt_work, virtio_transport_send_pkt_work);
	FUNC1(&vsock->loopback_work, virtio_transport_loopback_work);

	FUNC7(&vsock->tx_lock);
	vsock->tx_run = true;
	FUNC9(&vsock->tx_lock);

	FUNC7(&vsock->rx_lock);
	FUNC15(vsock);
	vsock->rx_run = true;
	FUNC9(&vsock->rx_lock);

	FUNC7(&vsock->event_lock);
	FUNC14(vsock);
	vsock->event_run = true;
	FUNC9(&vsock->event_lock);

	vdev->priv = vsock;
	FUNC10(the_virtio_vsock, vsock);

	FUNC9(&the_virtio_vsock_mutex);
	return 0;

out:
	FUNC3(vsock);
	FUNC9(&the_virtio_vsock_mutex);
	return ret;
}