
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int max (int,int ) ;
 scalar_t__ snprintf (char*,int ,char*,...) ;

__attribute__((used)) static inline int emit(char *buf, int buflen, int rbot, int rtop, int len)
{
 if (len > 0)
  len += snprintf(buf + len, max(buflen - len, 0), ",");
 if (rbot == rtop)
  len += snprintf(buf + len, max(buflen - len, 0), "%d", rbot);
 else
  len += snprintf(buf + len, max(buflen - len, 0), "%d-%d",
    rbot, rtop);
 return len;
}
