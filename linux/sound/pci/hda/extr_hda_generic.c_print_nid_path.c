
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int depth; int * path; } ;
struct hda_codec {int dummy; } ;
typedef int buf ;


 int codec_dbg (struct hda_codec*,char*,char const*,int,char*) ;
 int scnprintf (char*,int,char*,char*,int ) ;

__attribute__((used)) static void print_nid_path(struct hda_codec *codec,
      const char *pfx, struct nid_path *path)
{
 char buf[40];
 char *pos = buf;
 int i;

 *pos = 0;
 for (i = 0; i < path->depth; i++)
  pos += scnprintf(pos, sizeof(buf) - (pos - buf), "%s%02x",
     pos != buf ? ":" : "",
     path->path[i]);

 codec_dbg(codec, "%s path: depth=%d '%s'\n", pfx, path->depth, buf);
}
