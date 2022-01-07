
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbuf ;


 int ENOENT ;
 int ENOTSUP ;
 int STRERR_BUFSIZE ;
 int pr_warning (char*,...) ;
 char const* str_error_r (int,char*,int) ;

__attribute__((used)) static void print_open_warning(int err, bool uprobe)
{
 char sbuf[STRERR_BUFSIZE];

 if (err == -ENOENT) {
  const char *config;

  if (uprobe)
   config = "CONFIG_UPROBE_EVENTS";
  else
   config = "CONFIG_KPROBE_EVENTS";

  pr_warning("%cprobe_events file does not exist"
      " - please rebuild kernel with %s.\n",
      uprobe ? 'u' : 'k', config);
 } else if (err == -ENOTSUP)
  pr_warning("Tracefs or debugfs is not mounted.\n");
 else
  pr_warning("Failed to open %cprobe_events: %s\n",
      uprobe ? 'u' : 'k',
      str_error_r(-err, sbuf, sizeof(sbuf)));
}
