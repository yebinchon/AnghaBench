
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbuf ;


 int ENOENT ;
 int ENOTSUP ;
 int STRERR_BUFSIZE ;
 int pr_warning (char*,...) ;
 int str_error_r (int,char*,int) ;

__attribute__((used)) static void print_both_open_warning(int kerr, int uerr)
{

 if (kerr == -ENOTSUP && uerr == -ENOTSUP)
  pr_warning("Tracefs or debugfs is not mounted.\n");
 else if (kerr == -ENOENT && uerr == -ENOENT)
  pr_warning("Please rebuild kernel with CONFIG_KPROBE_EVENTS "
      "or/and CONFIG_UPROBE_EVENTS.\n");
 else {
  char sbuf[STRERR_BUFSIZE];
  pr_warning("Failed to open kprobe events: %s.\n",
      str_error_r(-kerr, sbuf, sizeof(sbuf)));
  pr_warning("Failed to open uprobe events: %s.\n",
      str_error_r(-uerr, sbuf, sizeof(sbuf)));
 }
}
