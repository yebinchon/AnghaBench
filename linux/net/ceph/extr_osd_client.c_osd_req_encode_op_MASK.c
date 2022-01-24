#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_12__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_19__ {int /*<<< orphan*/  src_fadvise_flags; int /*<<< orphan*/  flags; int /*<<< orphan*/  src_version; int /*<<< orphan*/  snapid; } ;
struct TYPE_17__ {int /*<<< orphan*/  cmp_mode; int /*<<< orphan*/  cmp_op; int /*<<< orphan*/  value_len; int /*<<< orphan*/  name_len; } ;
struct TYPE_15__ {int /*<<< orphan*/  expected_write_size; int /*<<< orphan*/  expected_object_size; } ;
struct TYPE_27__ {int /*<<< orphan*/  cookie; } ;
struct TYPE_25__ {int /*<<< orphan*/  gen; int /*<<< orphan*/  op; int /*<<< orphan*/  cookie; } ;
struct TYPE_23__ {int /*<<< orphan*/  indata_len; int /*<<< orphan*/  method_len; int /*<<< orphan*/  class_len; } ;
struct TYPE_21__ {int /*<<< orphan*/  truncate_seq; int /*<<< orphan*/  truncate_size; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
struct ceph_osd_req_op {int op; int /*<<< orphan*/  indata_len; int /*<<< orphan*/  flags; TYPE_14__ copy_from; TYPE_12__ xattr; TYPE_10__ alloc_hint; TYPE_8__ notify; TYPE_6__ watch; TYPE_4__ cls; TYPE_2__ extent; } ;
struct TYPE_18__ {void* src_fadvise_flags; int /*<<< orphan*/  flags; void* src_version; void* snapid; } ;
struct TYPE_16__ {int /*<<< orphan*/  cmp_mode; int /*<<< orphan*/  cmp_op; void* value_len; void* name_len; } ;
struct TYPE_28__ {void* expected_write_size; void* expected_object_size; } ;
struct TYPE_26__ {void* cookie; } ;
struct TYPE_24__ {void* gen; int /*<<< orphan*/  op; void* ver; void* cookie; } ;
struct TYPE_22__ {void* indata_len; int /*<<< orphan*/  method_len; int /*<<< orphan*/  class_len; } ;
struct TYPE_20__ {void* truncate_seq; void* truncate_size; void* length; void* offset; } ;
struct ceph_osd_op {void* payload_len; void* flags; int /*<<< orphan*/  op; TYPE_13__ copy_from; TYPE_11__ xattr; TYPE_9__ alloc_hint; TYPE_7__ notify; TYPE_5__ watch; TYPE_3__ cls; TYPE_1__ extent; } ;

/* Variables and functions */
#define  CEPH_OSD_OP_CALL 144 
#define  CEPH_OSD_OP_CMPXATTR 143 
#define  CEPH_OSD_OP_COPY_FROM 142 
#define  CEPH_OSD_OP_CREATE 141 
#define  CEPH_OSD_OP_DELETE 140 
#define  CEPH_OSD_OP_LIST_WATCHERS 139 
#define  CEPH_OSD_OP_NOTIFY 138 
#define  CEPH_OSD_OP_NOTIFY_ACK 137 
#define  CEPH_OSD_OP_READ 136 
#define  CEPH_OSD_OP_SETALLOCHINT 135 
#define  CEPH_OSD_OP_SETXATTR 134 
#define  CEPH_OSD_OP_STAT 133 
#define  CEPH_OSD_OP_TRUNCATE 132 
#define  CEPH_OSD_OP_WATCH 131 
#define  CEPH_OSD_OP_WRITE 130 
#define  CEPH_OSD_OP_WRITEFULL 129 
#define  CEPH_OSD_OP_ZERO 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC6(struct ceph_osd_op *dst,
			     const struct ceph_osd_req_op *src)
{
	switch (src->op) {
	case CEPH_OSD_OP_STAT:
		break;
	case CEPH_OSD_OP_READ:
	case CEPH_OSD_OP_WRITE:
	case CEPH_OSD_OP_WRITEFULL:
	case CEPH_OSD_OP_ZERO:
	case CEPH_OSD_OP_TRUNCATE:
		dst->extent.offset = FUNC4(src->extent.offset);
		dst->extent.length = FUNC4(src->extent.length);
		dst->extent.truncate_size =
			FUNC4(src->extent.truncate_size);
		dst->extent.truncate_seq =
			FUNC3(src->extent.truncate_seq);
		break;
	case CEPH_OSD_OP_CALL:
		dst->cls.class_len = src->cls.class_len;
		dst->cls.method_len = src->cls.method_len;
		dst->cls.indata_len = FUNC3(src->cls.indata_len);
		break;
	case CEPH_OSD_OP_WATCH:
		dst->watch.cookie = FUNC4(src->watch.cookie);
		dst->watch.ver = FUNC4(0);
		dst->watch.op = src->watch.op;
		dst->watch.gen = FUNC3(src->watch.gen);
		break;
	case CEPH_OSD_OP_NOTIFY_ACK:
		break;
	case CEPH_OSD_OP_NOTIFY:
		dst->notify.cookie = FUNC4(src->notify.cookie);
		break;
	case CEPH_OSD_OP_LIST_WATCHERS:
		break;
	case CEPH_OSD_OP_SETALLOCHINT:
		dst->alloc_hint.expected_object_size =
		    FUNC4(src->alloc_hint.expected_object_size);
		dst->alloc_hint.expected_write_size =
		    FUNC4(src->alloc_hint.expected_write_size);
		break;
	case CEPH_OSD_OP_SETXATTR:
	case CEPH_OSD_OP_CMPXATTR:
		dst->xattr.name_len = FUNC3(src->xattr.name_len);
		dst->xattr.value_len = FUNC3(src->xattr.value_len);
		dst->xattr.cmp_op = src->xattr.cmp_op;
		dst->xattr.cmp_mode = src->xattr.cmp_mode;
		break;
	case CEPH_OSD_OP_CREATE:
	case CEPH_OSD_OP_DELETE:
		break;
	case CEPH_OSD_OP_COPY_FROM:
		dst->copy_from.snapid = FUNC4(src->copy_from.snapid);
		dst->copy_from.src_version =
			FUNC4(src->copy_from.src_version);
		dst->copy_from.flags = src->copy_from.flags;
		dst->copy_from.src_fadvise_flags =
			FUNC3(src->copy_from.src_fadvise_flags);
		break;
	default:
		FUNC5("unsupported osd opcode %s\n",
			FUNC1(src->op));
		FUNC0(1);

		return 0;
	}

	dst->op = FUNC2(src->op);
	dst->flags = FUNC3(src->flags);
	dst->payload_len = FUNC3(src->indata_len);

	return src->indata_len;
}