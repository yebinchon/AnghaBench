
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ocfs2_lock_type { ____Placeholder_ocfs2_lock_type } ocfs2_lock_type ;
__attribute__((used)) static inline char ocfs2_lock_type_char(enum ocfs2_lock_type type)
{
 char c;
 switch (type) {
  case 137:
   c = 'M';
   break;
  case 140:
   c = 'D';
   break;
  case 129:
   c = 'S';
   break;
  case 131:
   c = 'R';
   break;
  case 130:
   c = 'W';
   break;
  case 139:
   c = 'N';
   break;
  case 135:
   c = 'O';
   break;
  case 138:
   c = 'F';
   break;
  case 133:
   c = 'Q';
   break;
  case 136:
   c = 'Y';
   break;
  case 134:
   c = 'P';
   break;
  case 132:
   c = 'T';
   break;
  case 128:
   c = 'I';
   break;
  default:
   c = '\0';
 }

 return c;
}
