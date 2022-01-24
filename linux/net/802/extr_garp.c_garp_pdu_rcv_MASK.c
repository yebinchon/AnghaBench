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
struct stp_proto {struct garp_application* data; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct net_device {int /*<<< orphan*/  garp_port; } ;
struct garp_port {int /*<<< orphan*/ * applicants; } ;
struct garp_pdu_hdr {int /*<<< orphan*/  protocol; } ;
struct garp_application {size_t type; } ;
struct garp_applicant {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GARP_PROTOCOL_ID ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct garp_applicant*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(const struct stp_proto *proto, struct sk_buff *skb,
			 struct net_device *dev)
{
	struct garp_application *appl = proto->data;
	struct garp_port *port;
	struct garp_applicant *app;
	const struct garp_pdu_hdr *gp;

	port = FUNC6(dev->garp_port);
	if (!port)
		goto err;
	app = FUNC6(port->applicants[appl->type]);
	if (!app)
		goto err;

	if (!FUNC5(skb, sizeof(*gp)))
		goto err;
	gp = (struct garp_pdu_hdr *)skb->data;
	if (FUNC2(&gp->protocol) != FUNC3(GARP_PROTOCOL_ID))
		goto err;
	FUNC7(skb, sizeof(*gp));

	FUNC8(&app->lock);
	while (skb->len > 0) {
		if (FUNC1(app, skb) < 0)
			break;
		if (FUNC0(skb) < 0)
			break;
	}
	FUNC9(&app->lock);
err:
	FUNC4(skb);
}