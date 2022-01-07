
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static void hidp_session_get(struct hidp_session *session)
{
 kref_get(&session->ref);
}
