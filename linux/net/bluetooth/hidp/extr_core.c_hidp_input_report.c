
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; int len; } ;
struct input_dev {int dummy; } ;
struct hidp_session {unsigned char* keys; struct input_dev* input; } ;


 int BTN_EXTRA ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BTN_SIDE ;
 int BT_ERR (char*,unsigned char) ;
 int REL_WHEEL ;
 int REL_X ;
 int REL_Y ;
 int * hidp_keycode ;
 int hidp_mkeyspat ;
 int input_report_key (struct input_dev*,int ,char) ;
 int input_report_rel (struct input_dev*,int ,char) ;
 int input_sync (struct input_dev*) ;
 int memcmp (unsigned char*,int ,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 unsigned char* memscan (unsigned char*,unsigned char,int) ;

__attribute__((used)) static void hidp_input_report(struct hidp_session *session, struct sk_buff *skb)
{
 struct input_dev *dev = session->input;
 unsigned char *keys = session->keys;
 unsigned char *udata = skb->data + 1;
 signed char *sdata = skb->data + 1;
 int i, size = skb->len - 1;

 switch (skb->data[0]) {
 case 0x01:
  for (i = 0; i < 8; i++)
   input_report_key(dev, hidp_keycode[i + 224], (udata[0] >> i) & 1);



  if (!memcmp(udata + 2, hidp_mkeyspat, 6))
   break;

  for (i = 2; i < 8; i++) {
   if (keys[i] > 3 && memscan(udata + 2, keys[i], 6) == udata + 8) {
    if (hidp_keycode[keys[i]])
     input_report_key(dev, hidp_keycode[keys[i]], 0);
    else
     BT_ERR("Unknown key (scancode %#x) released.", keys[i]);
   }

   if (udata[i] > 3 && memscan(keys + 2, udata[i], 6) == keys + 8) {
    if (hidp_keycode[udata[i]])
     input_report_key(dev, hidp_keycode[udata[i]], 1);
    else
     BT_ERR("Unknown key (scancode %#x) pressed.", udata[i]);
   }
  }

  memcpy(keys, udata, 8);
  break;

 case 0x02:
  input_report_key(dev, BTN_LEFT, sdata[0] & 0x01);
  input_report_key(dev, BTN_RIGHT, sdata[0] & 0x02);
  input_report_key(dev, BTN_MIDDLE, sdata[0] & 0x04);
  input_report_key(dev, BTN_SIDE, sdata[0] & 0x08);
  input_report_key(dev, BTN_EXTRA, sdata[0] & 0x10);

  input_report_rel(dev, REL_X, sdata[1]);
  input_report_rel(dev, REL_Y, sdata[2]);

  if (size > 3)
   input_report_rel(dev, REL_WHEEL, sdata[3]);
  break;
 }

 input_sync(dev);
}
