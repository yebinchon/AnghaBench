
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ opcode; int status; } ;
struct q6copp {TYPE_2__ result; int wait; } ;
struct q6adm {int lock; int apr; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {scalar_t__ opcode; } ;
struct apr_pkt {TYPE_1__ hdr; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int TIMEOUT_MS ;
 int apr_send_pkt (int ,struct apr_pkt*) ;
 int dev_err (struct device*,char*,...) ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int q6adm_apr_send_copp_pkt(struct q6adm *adm, struct q6copp *copp,
       struct apr_pkt *pkt, uint32_t rsp_opcode)
{
 struct device *dev = adm->dev;
 uint32_t opcode = pkt->hdr.opcode;
 int ret;

 mutex_lock(&adm->lock);
 copp->result.opcode = 0;
 copp->result.status = 0;
 ret = apr_send_pkt(adm->apr, pkt);
 if (ret < 0) {
  dev_err(dev, "Failed to send APR packet\n");
  ret = -EINVAL;
  goto err;
 }


 if (rsp_opcode)
  ret = wait_event_timeout(copp->wait,
      (copp->result.opcode == opcode) ||
      (copp->result.opcode == rsp_opcode),
      msecs_to_jiffies(TIMEOUT_MS));
 else
  ret = wait_event_timeout(copp->wait,
      (copp->result.opcode == opcode),
      msecs_to_jiffies(TIMEOUT_MS));

 if (!ret) {
  dev_err(dev, "ADM copp cmd timedout\n");
  ret = -ETIMEDOUT;
 } else if (copp->result.status > 0) {
  dev_err(dev, "DSP returned error[%d]\n",
   copp->result.status);
  ret = -EINVAL;
 }

err:
 mutex_unlock(&adm->lock);
 return ret;
}
