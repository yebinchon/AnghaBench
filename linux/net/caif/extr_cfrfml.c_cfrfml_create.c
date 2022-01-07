
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dev_info {int dummy; } ;
struct cflayer {int name; int transmit; int receive; } ;
struct TYPE_2__ {struct cflayer layer; int release; } ;
struct cfrfml {int fragment_size; TYPE_1__ serv; int sync; } ;


 int CAIF_LAYER_NAME_SZ ;
 int GFP_ATOMIC ;
 int RFM_HEAD_SIZE ;
 int cfrfml_receive ;
 int cfrfml_release ;
 int cfrfml_transmit ;
 int cfsrvl_init (TYPE_1__*,int,struct dev_info*,int) ;
 struct cfrfml* kzalloc (int,int ) ;
 int snprintf (int ,int ,char*,int) ;
 int spin_lock_init (int *) ;

struct cflayer *cfrfml_create(u8 channel_id, struct dev_info *dev_info,
         int mtu_size)
{
 int tmp;
 struct cfrfml *this = kzalloc(sizeof(struct cfrfml), GFP_ATOMIC);

 if (!this)
  return ((void*)0);

 cfsrvl_init(&this->serv, channel_id, dev_info, 0);
 this->serv.release = cfrfml_release;
 this->serv.layer.receive = cfrfml_receive;
 this->serv.layer.transmit = cfrfml_transmit;


 tmp = (mtu_size - RFM_HEAD_SIZE - 6) / 16;
 tmp *= 16;

 this->fragment_size = tmp;
 spin_lock_init(&this->sync);
 snprintf(this->serv.layer.name, CAIF_LAYER_NAME_SZ,
  "rfm%d", channel_id);

 return &this->serv.layer;
}
