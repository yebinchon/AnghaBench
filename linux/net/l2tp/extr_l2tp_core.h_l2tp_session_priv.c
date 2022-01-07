
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2tp_session {void* priv; } ;



__attribute__((used)) static inline void *l2tp_session_priv(struct l2tp_session *session)
{
 return &session->priv[0];
}
