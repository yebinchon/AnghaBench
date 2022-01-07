
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_path {int connect; int sink; int source; } ;


 int dapm_mark_dirty (int ,char const*) ;
 int dapm_path_invalidate (struct snd_soc_dapm_path*) ;

__attribute__((used)) static void soc_dapm_connect_path(struct snd_soc_dapm_path *path,
 bool connect, const char *reason)
{
 if (path->connect == connect)
  return;

 path->connect = connect;
 dapm_mark_dirty(path->source, reason);
 dapm_mark_dirty(path->sink, reason);
 dapm_path_invalidate(path);
}
