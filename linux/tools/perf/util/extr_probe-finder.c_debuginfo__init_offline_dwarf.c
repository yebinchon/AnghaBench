
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debuginfo {scalar_t__ dwfl; int dbg; int bias; int mod; } ;


 int ENOENT ;
 int O_RDONLY ;
 int close (int) ;
 scalar_t__ dwfl_begin (int *) ;
 int dwfl_end (scalar_t__) ;
 int dwfl_module_getdwarf (int ,int *) ;
 int dwfl_report_begin (scalar_t__) ;
 int dwfl_report_end (scalar_t__,int *,int *) ;
 int dwfl_report_offline (scalar_t__,char*,char*,int) ;
 int memset (struct debuginfo*,int ,int) ;
 int offline_callbacks ;
 int open (char const*,int ) ;

__attribute__((used)) static int debuginfo__init_offline_dwarf(struct debuginfo *dbg,
      const char *path)
{
 int fd;

 fd = open(path, O_RDONLY);
 if (fd < 0)
  return fd;

 dbg->dwfl = dwfl_begin(&offline_callbacks);
 if (!dbg->dwfl)
  goto error;

 dwfl_report_begin(dbg->dwfl);
 dbg->mod = dwfl_report_offline(dbg->dwfl, "", "", fd);
 if (!dbg->mod)
  goto error;

 dbg->dbg = dwfl_module_getdwarf(dbg->mod, &dbg->bias);
 if (!dbg->dbg)
  goto error;

 dwfl_report_end(dbg->dwfl, ((void*)0), ((void*)0));

 return 0;
error:
 if (dbg->dwfl)
  dwfl_end(dbg->dwfl);
 else
  close(fd);
 memset(dbg, 0, sizeof(*dbg));

 return -ENOENT;
}
