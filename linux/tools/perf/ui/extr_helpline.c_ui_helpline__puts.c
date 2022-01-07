
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ui_helpline__pop () ;
 int ui_helpline__push (char const*) ;

void ui_helpline__puts(const char *msg)
{
 ui_helpline__pop();
 ui_helpline__push(msg);
}
