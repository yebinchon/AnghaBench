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
struct sk_buff {size_t len; int /*<<< orphan*/  data; } ;
struct hidp_session {unsigned char waiting_report_type; unsigned char waiting_report_number; int /*<<< orphan*/  report_mutex; int /*<<< orphan*/  flags; struct sk_buff* report_return; int /*<<< orphan*/  terminate; int /*<<< orphan*/  report_queue; } ;
struct hid_device {TYPE_1__* report_enum; struct hidp_session* driver_data; } ;
struct TYPE_2__ {int numbered; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ERESTARTSYS ; 
 unsigned char HIDP_DATA_RTYPE_FEATURE ; 
 unsigned char HIDP_DATA_RTYPE_INPUT ; 
 unsigned char HIDP_DATA_RTYPE_MASK ; 
 unsigned char HIDP_DATA_RTYPE_OUPUT ; 
 unsigned char HIDP_TRANS_GET_REPORT ; 
 int /*<<< orphan*/  HIDP_WAITING_FOR_RETURN ; 
#define  HID_FEATURE_REPORT 130 
#define  HID_INPUT_REPORT 129 
#define  HID_OUTPUT_REPORT 128 
 int HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hidp_session*,unsigned char,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC10(struct hid_device *hid,
		unsigned char report_number,
		unsigned char *data, size_t count,
		unsigned char report_type)
{
	struct hidp_session *session = hid->driver_data;
	struct sk_buff *skb;
	size_t len;
	int numbered_reports = hid->report_enum[report_type].numbered;
	int ret;

	if (FUNC0(&session->terminate))
		return -EIO;

	switch (report_type) {
	case HID_FEATURE_REPORT:
		report_type = HIDP_TRANS_GET_REPORT | HIDP_DATA_RTYPE_FEATURE;
		break;
	case HID_INPUT_REPORT:
		report_type = HIDP_TRANS_GET_REPORT | HIDP_DATA_RTYPE_INPUT;
		break;
	case HID_OUTPUT_REPORT:
		report_type = HIDP_TRANS_GET_REPORT | HIDP_DATA_RTYPE_OUPUT;
		break;
	default:
		return -EINVAL;
	}

	if (FUNC5(&session->report_mutex))
		return -ERESTARTSYS;

	/* Set up our wait, and send the report request to the device. */
	session->waiting_report_type = report_type & HIDP_DATA_RTYPE_MASK;
	session->waiting_report_number = numbered_reports ? report_number : -1;
	FUNC7(HIDP_WAITING_FOR_RETURN, &session->flags);
	data[0] = report_number;
	ret = FUNC2(session, report_type, data, 1);
	if (ret < 0)
		goto err;

	/* Wait for the return of the report. The returned report
	   gets put in session->report_return.  */
	while (FUNC8(HIDP_WAITING_FOR_RETURN, &session->flags) &&
	       !FUNC0(&session->terminate)) {
		int res;

		res = FUNC9(session->report_queue,
			!FUNC8(HIDP_WAITING_FOR_RETURN, &session->flags)
				|| FUNC0(&session->terminate),
			5*HZ);
		if (res == 0) {
			/* timeout */
			ret = -EIO;
			goto err;
		}
		if (res < 0) {
			/* signal */
			ret = -ERESTARTSYS;
			goto err;
		}
	}

	skb = session->report_return;
	if (skb) {
		len = skb->len < count ? skb->len : count;
		FUNC4(data, skb->data, len);

		FUNC3(skb);
		session->report_return = NULL;
	} else {
		/* Device returned a HANDSHAKE, indicating  protocol error. */
		len = -EIO;
	}

	FUNC1(HIDP_WAITING_FOR_RETURN, &session->flags);
	FUNC6(&session->report_mutex);

	return len;

err:
	FUNC1(HIDP_WAITING_FOR_RETURN, &session->flags);
	FUNC6(&session->report_mutex);
	return ret;
}