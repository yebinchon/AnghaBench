
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_progress {int title; int total; int curr; } ;
typedef int buf_tot ;
typedef int buf_cur ;


 int scnprintf (char*,size_t,char*,int ,char*,char*) ;
 int unit_number__scnprintf (char*,int,int ) ;

__attribute__((used)) static int get_title(struct ui_progress *p, char *buf, size_t size)
{
 char buf_cur[20];
 char buf_tot[20];
 int ret;

 ret = unit_number__scnprintf(buf_cur, sizeof(buf_cur), p->curr);
 ret += unit_number__scnprintf(buf_tot, sizeof(buf_tot), p->total);

 return ret + scnprintf(buf, size, "%s [%s/%s]",
          p->title, buf_cur, buf_tot);
}
