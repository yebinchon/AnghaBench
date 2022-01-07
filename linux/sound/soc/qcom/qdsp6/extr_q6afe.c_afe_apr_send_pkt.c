
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct TYPE_2__ {scalar_t__ opcode; int status; } ;
struct q6afe_port {TYPE_1__ result; int wait; } ;
struct q6afe {int lock; int dev; int apr; } ;
struct apr_hdr {scalar_t__ opcode; } ;
struct apr_pkt {struct apr_hdr hdr; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int TIMEOUT_MS ;
 int apr_send_pkt (int ,struct apr_pkt*) ;
 int dev_err (int ,char*,int) ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int afe_apr_send_pkt(struct q6afe *afe, struct apr_pkt *pkt,
       struct q6afe_port *port)
{
 wait_queue_head_t *wait = &port->wait;
 struct apr_hdr *hdr = &pkt->hdr;
 int ret;

 mutex_lock(&afe->lock);
 port->result.opcode = 0;
 port->result.status = 0;

 ret = apr_send_pkt(afe->apr, pkt);
 if (ret < 0) {
  dev_err(afe->dev, "packet not transmitted (%d)\n", ret);
  ret = -EINVAL;
  goto err;
 }

 ret = wait_event_timeout(*wait, (port->result.opcode == hdr->opcode),
     msecs_to_jiffies(TIMEOUT_MS));
 if (!ret) {
  ret = -ETIMEDOUT;
 } else if (port->result.status > 0) {
  dev_err(afe->dev, "DSP returned error[%x]\n",
   port->result.status);
  ret = -EINVAL;
 } else {
  ret = 0;
 }

err:
 mutex_unlock(&afe->lock);

 return ret;
}
