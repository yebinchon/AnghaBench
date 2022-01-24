#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_3__ {int choice; int /*<<< orphan*/  infoRequestResponse; int /*<<< orphan*/  locationConfirm; int /*<<< orphan*/  locationRequest; int /*<<< orphan*/  admissionConfirm; int /*<<< orphan*/  admissionRequest; int /*<<< orphan*/  unregistrationRequest; int /*<<< orphan*/  registrationConfirm; int /*<<< orphan*/  registrationRequest; int /*<<< orphan*/  gatekeeperConfirm; int /*<<< orphan*/  gatekeeperRequest; } ;
typedef  TYPE_1__ RasMessage ;

/* Variables and functions */
#define  eRasMessage_admissionConfirm 137 
#define  eRasMessage_admissionRequest 136 
#define  eRasMessage_gatekeeperConfirm 135 
#define  eRasMessage_gatekeeperRequest 134 
#define  eRasMessage_infoRequestResponse 133 
#define  eRasMessage_locationConfirm 132 
#define  eRasMessage_locationRequest 131 
#define  eRasMessage_registrationConfirm 130 
#define  eRasMessage_registrationRequest 129 
#define  eRasMessage_unregistrationRequest 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct nf_conn *ct,
		       enum ip_conntrack_info ctinfo,
		       unsigned int protoff,
		       unsigned char **data, RasMessage *ras)
{
	switch (ras->choice) {
	case eRasMessage_gatekeeperRequest:
		return FUNC4(skb, ct, ctinfo, protoff, data,
				   &ras->gatekeeperRequest);
	case eRasMessage_gatekeeperConfirm:
		return FUNC3(skb, ct, ctinfo, protoff, data,
				   &ras->gatekeeperConfirm);
	case eRasMessage_registrationRequest:
		return FUNC9(skb, ct, ctinfo, protoff, data,
				   &ras->registrationRequest);
	case eRasMessage_registrationConfirm:
		return FUNC8(skb, ct, ctinfo, protoff, data,
				   &ras->registrationConfirm);
	case eRasMessage_unregistrationRequest:
		return FUNC10(skb, ct, ctinfo, protoff, data,
				   &ras->unregistrationRequest);
	case eRasMessage_admissionRequest:
		return FUNC2(skb, ct, ctinfo, protoff, data,
				   &ras->admissionRequest);
	case eRasMessage_admissionConfirm:
		return FUNC1(skb, ct, ctinfo, protoff, data,
				   &ras->admissionConfirm);
	case eRasMessage_locationRequest:
		return FUNC7(skb, ct, ctinfo, protoff, data,
				   &ras->locationRequest);
	case eRasMessage_locationConfirm:
		return FUNC6(skb, ct, ctinfo, protoff, data,
				   &ras->locationConfirm);
	case eRasMessage_infoRequestResponse:
		return FUNC5(skb, ct, ctinfo, protoff, data,
				   &ras->infoRequestResponse);
	default:
		FUNC0("nf_ct_ras: RAS message %d\n", ras->choice);
		break;
	}

	return 0;
}