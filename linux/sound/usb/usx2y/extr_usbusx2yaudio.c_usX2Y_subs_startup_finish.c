
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usX2Ydev {int * prepare_subs; } ;


 int i_usX2Y_urb_complete ;
 int usX2Y_urbs_set_complete (struct usX2Ydev*,int ) ;

__attribute__((used)) static void usX2Y_subs_startup_finish(struct usX2Ydev * usX2Y)
{
 usX2Y_urbs_set_complete(usX2Y, i_usX2Y_urb_complete);
 usX2Y->prepare_subs = ((void*)0);
}
