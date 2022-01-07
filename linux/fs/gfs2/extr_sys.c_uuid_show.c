
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_uuid; } ;
struct gfs2_sbd {struct super_block* sd_vfs; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int *) ;
 scalar_t__ uuid_is_null (int *) ;

__attribute__((used)) static ssize_t uuid_show(struct gfs2_sbd *sdp, char *buf)
{
 struct super_block *s = sdp->sd_vfs;

 buf[0] = '\0';
 if (uuid_is_null(&s->s_uuid))
  return 0;
 return snprintf(buf, PAGE_SIZE, "%pUB\n", &s->s_uuid);
}
