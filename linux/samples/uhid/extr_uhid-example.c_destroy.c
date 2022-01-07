
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhid_event {int type; } ;
typedef int ev ;


 int UHID_DESTROY ;
 int memset (struct uhid_event*,int ,int) ;
 int uhid_write (int,struct uhid_event*) ;

__attribute__((used)) static void destroy(int fd)
{
 struct uhid_event ev;

 memset(&ev, 0, sizeof(ev));
 ev.type = UHID_DESTROY;

 uhid_write(fd, &ev);
}
