
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists {int dummy; } ;


 int __hists__scnprintf_title (struct hists*,char*,size_t,int) ;

__attribute__((used)) static inline int hists__scnprintf_title(struct hists *hists, char *bf, size_t size)
{
 return __hists__scnprintf_title(hists, bf, size, 1);
}
