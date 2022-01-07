
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2tp_session {int l2specific_type; } ;





__attribute__((used)) static inline int l2tp_get_l2specific_len(struct l2tp_session *session)
{
 switch (session->l2specific_type) {
 case 129:
  return 4;
 case 128:
 default:
  return 0;
 }
}
