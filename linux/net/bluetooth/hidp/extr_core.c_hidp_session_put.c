
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int ref; } ;


 int kref_put (int *,int ) ;
 int session_free ;

__attribute__((used)) static void hidp_session_put(struct hidp_session *session)
{
 kref_put(&session->ref, session_free);
}
