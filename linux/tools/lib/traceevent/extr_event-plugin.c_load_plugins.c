
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int flags; } ;


 int LOCAL_PLUGIN_DIR ;
 char* PLUGIN_DIR ;
 int TEP_DISABLE_PLUGINS ;
 int TEP_DISABLE_SYS_PLUGINS ;
 int asprintf (char**,char*,char*,int ) ;
 int free (char*) ;
 char* getenv (char*) ;
 int load_plugins_dir (struct tep_handle*,char const*,char*,void (*) (struct tep_handle*,char const*,char const*,void*),void*) ;
 int warning (char*) ;

__attribute__((used)) static void
load_plugins(struct tep_handle *tep, const char *suffix,
      void (*load_plugin)(struct tep_handle *tep,
     const char *path,
     const char *name,
     void *data),
      void *data)
{
 char *home;
 char *path;
 char *envdir;
 int ret;

 if (tep->flags & TEP_DISABLE_PLUGINS)
  return;
 envdir = getenv("TRACEEVENT_PLUGIN_DIR");
 if (envdir)
  load_plugins_dir(tep, suffix, envdir, load_plugin, data);





 home = getenv("HOME");
 if (!home)
  return;

 ret = asprintf(&path, "%s/%s", home, LOCAL_PLUGIN_DIR);
 if (ret < 0) {
  warning("could not allocate plugin memory\n");
  return;
 }

 load_plugins_dir(tep, suffix, path, load_plugin, data);

 free(path);
}
