
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ result; } ;
struct test_ping_resp_msg_v01 {int pong; int pong_valid; TYPE_1__ resp; } ;
struct sockaddr_qrtr {int dummy; } ;
struct qmi_txn {int completion; int result; } ;
struct qmi_handle {int dummy; } ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ QMI_RESULT_FAILURE_V01 ;
 int complete (int *) ;
 scalar_t__ memcmp (int ,char*,int) ;
 int pr_err (char*) ;

__attribute__((used)) static void ping_pong_cb(struct qmi_handle *qmi, struct sockaddr_qrtr *sq,
    struct qmi_txn *txn, const void *data)
{
 const struct test_ping_resp_msg_v01 *resp = data;

 if (!txn) {
  pr_err("spurious ping response\n");
  return;
 }

 if (resp->resp.result == QMI_RESULT_FAILURE_V01)
  txn->result = -ENXIO;
 else if (!resp->pong_valid || memcmp(resp->pong, "pong", 4))
  txn->result = -EINVAL;

 complete(&txn->completion);
}
