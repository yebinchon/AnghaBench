
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mixart_pipe {int status; int group_uid; } ;
struct mixart_msg {int size; struct mixart_clock_properties* data; int uid; int message_id; } ;
struct mixart_mgr {TYPE_1__* pci; int uid_console_manager; } ;
struct mixart_clock_properties_resp {scalar_t__ status; scalar_t__ clock_mode; } ;
struct mixart_clock_properties {unsigned int frequency; int nb_callers; int * uid_caller; scalar_t__ clock_mode; int clock_generic_type; } ;
typedef int clock_properties ;
typedef int clock_prop_resp ;
struct TYPE_2__ {int dev; } ;


 int CGT_INTERNAL_CLOCK ;
 int CGT_NO_CLOCK ;
 scalar_t__ CM_STANDALONE ;
 int EINVAL ;
 int MSG_CLOCK_SET_PROPERTIES ;


 int dev_dbg (int *,char*,unsigned int) ;
 int dev_err (int *,char*,int,...) ;
 int memset (struct mixart_clock_properties*,int ,int) ;
 int snd_mixart_send_msg (struct mixart_mgr*,struct mixart_msg*,int,struct mixart_clock_properties_resp*) ;

__attribute__((used)) static int mixart_set_clock(struct mixart_mgr *mgr,
       struct mixart_pipe *pipe, unsigned int rate)
{
 struct mixart_msg request;
 struct mixart_clock_properties clock_properties;
 struct mixart_clock_properties_resp clock_prop_resp;
 int err;

 switch(pipe->status) {
 case 129:
  break;
 case 128:
  if(rate != 0)
   break;

 default:
  if(rate == 0)
   return 0;
  else {
   dev_err(&mgr->pci->dev,
    "error mixart_set_clock(%d) called with wrong pipe->status !\n",
    rate);
   return -EINVAL;
  }
 }

 memset(&clock_properties, 0, sizeof(clock_properties));
 clock_properties.clock_generic_type = (rate != 0) ? CGT_INTERNAL_CLOCK : CGT_NO_CLOCK;
 clock_properties.clock_mode = CM_STANDALONE;
 clock_properties.frequency = rate;
 clock_properties.nb_callers = 1;
 clock_properties.uid_caller[0] = pipe->group_uid;

 dev_dbg(&mgr->pci->dev, "mixart_set_clock to %d kHz\n", rate);

 request.message_id = MSG_CLOCK_SET_PROPERTIES;
 request.uid = mgr->uid_console_manager;
 request.data = &clock_properties;
 request.size = sizeof(clock_properties);

 err = snd_mixart_send_msg(mgr, &request, sizeof(clock_prop_resp), &clock_prop_resp);
 if (err < 0 || clock_prop_resp.status != 0 || clock_prop_resp.clock_mode != CM_STANDALONE) {
  dev_err(&mgr->pci->dev,
   "error MSG_CLOCK_SET_PROPERTIES err=%x stat=%x mod=%x !\n",
   err, clock_prop_resp.status, clock_prop_resp.clock_mode);
  return -EINVAL;
 }

 if(rate) pipe->status = 129;
 else pipe->status = 128;

 return 0;
}
