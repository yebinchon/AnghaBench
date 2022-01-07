
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmtp_session {int applications; } ;
struct cmtp_application {int list; int appl; int state; } ;
typedef int __u16 ;


 int BT_DBG (char*,struct cmtp_session*,struct cmtp_application*,int ) ;
 int BT_OPEN ;
 int GFP_KERNEL ;
 struct cmtp_application* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct cmtp_application *cmtp_application_add(struct cmtp_session *session, __u16 appl)
{
 struct cmtp_application *app = kzalloc(sizeof(*app), GFP_KERNEL);

 BT_DBG("session %p application %p appl %d", session, app, appl);

 if (!app)
  return ((void*)0);

 app->state = BT_OPEN;
 app->appl = appl;

 list_add_tail(&app->list, &session->applications);

 return app;
}
