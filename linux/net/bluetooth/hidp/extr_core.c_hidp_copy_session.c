
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct hidp_session {int flags; TYPE_3__* hid; TYPE_2__* input; int bdaddr; } ;
struct hidp_conninfo {int flags; int name; int version; int product; int vendor; int state; int bdaddr; } ;
struct TYPE_6__ {char* name; int version; int product; int vendor; } ;
struct TYPE_4__ {int version; int product; int vendor; } ;
struct TYPE_5__ {char* name; TYPE_1__ id; } ;


 int BT_CONNECTED ;
 int bacpy (int *,int *) ;
 int memset (struct hidp_conninfo*,int ,int) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void hidp_copy_session(struct hidp_session *session, struct hidp_conninfo *ci)
{
 u32 valid_flags = 0;
 memset(ci, 0, sizeof(*ci));
 bacpy(&ci->bdaddr, &session->bdaddr);

 ci->flags = session->flags & valid_flags;
 ci->state = BT_CONNECTED;

 if (session->input) {
  ci->vendor = session->input->id.vendor;
  ci->product = session->input->id.product;
  ci->version = session->input->id.version;
  if (session->input->name)
   strlcpy(ci->name, session->input->name, 128);
  else
   strlcpy(ci->name, "HID Boot Device", 128);
 } else if (session->hid) {
  ci->vendor = session->hid->vendor;
  ci->product = session->hid->product;
  ci->version = session->hid->version;
  strlcpy(ci->name, session->hid->name, 128);
 }
}
