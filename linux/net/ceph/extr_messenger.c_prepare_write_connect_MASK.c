#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ flags; void* protocol_version; void* global_seq; void* connect_seq; void* host_type; int /*<<< orphan*/  features; } ;
struct TYPE_4__ {int type; } ;
struct ceph_connection {int connect_seq; TYPE_2__ out_connect; int /*<<< orphan*/  msgr; TYPE_1__ peer_name; } ;
struct TYPE_6__ {int /*<<< orphan*/  supported_features; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int CEPH_ENTITY_TYPE_CLIENT ; 
#define  CEPH_ENTITY_TYPE_MDS 130 
#define  CEPH_ENTITY_TYPE_MON 129 
#define  CEPH_ENTITY_TYPE_OSD 128 
 int CEPH_MDSC_PROTOCOL ; 
 int CEPH_MONC_PROTOCOL ; 
 int CEPH_OSDC_PROTOCOL ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_connection*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct ceph_connection*,int,unsigned int,int) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ceph_connection*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ceph_connection *con)
{
	unsigned int global_seq = FUNC7(con->msgr, 0);
	int proto;
	int ret;

	switch (con->peer_name.type) {
	case CEPH_ENTITY_TYPE_MON:
		proto = CEPH_MONC_PROTOCOL;
		break;
	case CEPH_ENTITY_TYPE_OSD:
		proto = CEPH_OSDC_PROTOCOL;
		break;
	case CEPH_ENTITY_TYPE_MDS:
		proto = CEPH_MDSC_PROTOCOL;
		break;
	default:
		FUNC0();
	}

	FUNC4("prepare_write_connect %p cseq=%d gseq=%d proto=%d\n", con,
	     con->connect_seq, global_seq, proto);

	con->out_connect.features =
	    FUNC3(FUNC5(con->msgr)->supported_features);
	con->out_connect.host_type = FUNC2(CEPH_ENTITY_TYPE_CLIENT);
	con->out_connect.connect_seq = FUNC2(con->connect_seq);
	con->out_connect.global_seq = FUNC2(global_seq);
	con->out_connect.protocol_version = FUNC2(proto);
	con->out_connect.flags = 0;

	ret = FUNC6(con);
	if (ret)
		return ret;

	FUNC1(con);
	return 0;
}