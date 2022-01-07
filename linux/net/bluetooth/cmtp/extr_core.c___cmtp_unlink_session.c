
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmtp_session {int list; } ;


 int list_del (int *) ;

__attribute__((used)) static void __cmtp_unlink_session(struct cmtp_session *session)
{
 list_del(&session->list);
}
