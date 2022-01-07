
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long LONG_MAX ;
 long LONG_MIN ;
 int MSG_COPY ;
 int MSG_EXCEPT ;
 int SEARCH_ANY ;
 int SEARCH_EQUAL ;
 int SEARCH_LESSEQUAL ;
 int SEARCH_NOTEQUAL ;
 int SEARCH_NUMBER ;

__attribute__((used)) static inline int convert_mode(long *msgtyp, int msgflg)
{
 if (msgflg & MSG_COPY)
  return SEARCH_NUMBER;






 if (*msgtyp == 0)
  return SEARCH_ANY;
 if (*msgtyp < 0) {
  if (*msgtyp == LONG_MIN)
   *msgtyp = LONG_MAX;
  else
   *msgtyp = -*msgtyp;
  return SEARCH_LESSEQUAL;
 }
 if (msgflg & MSG_EXCEPT)
  return SEARCH_NOTEQUAL;
 return SEARCH_EQUAL;
}
