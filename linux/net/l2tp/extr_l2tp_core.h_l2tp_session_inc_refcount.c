
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2tp_session {int ref_count; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static inline void l2tp_session_inc_refcount(struct l2tp_session *session)
{
 refcount_inc(&session->ref_count);
}
