
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t scnprintf (char*,size_t,char*,char*,...) ;

__attribute__((used)) static size_t fcntl__scnprintf_getfd(unsigned long val, char *bf, size_t size, bool show_prefix)
{
 return val ? scnprintf(bf, size, "%s", "0") :
       scnprintf(bf, size, "%s%s", show_prefix ? "FD_" : "", "CLOEXEC");
}
