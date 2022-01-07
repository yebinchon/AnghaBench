
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
struct logsuper {TYPE_1__* active; } ;
struct lbuf {scalar_t__ l_ldata; } ;
struct jfs_sb_info {int aggregate; int uuid; } ;
struct jfs_log {int dummy; } ;
struct TYPE_2__ {int uuid; } ;


 int EIO ;
 int EMFILE ;
 int MAX_ACTIVE ;
 int jfs_warn (char*) ;
 int lbmDirectWrite (struct jfs_log*,struct lbuf*,int) ;
 int lbmFREE ;
 int lbmFree (struct lbuf*) ;
 int lbmIOWait (struct lbuf*,int ) ;
 int lbmRELEASE ;
 int lbmRead (struct jfs_log*,int,struct lbuf**) ;
 int lbmSYNC ;
 int lbmWRITE ;
 int uuid_copy (int *,int *) ;
 scalar_t__ uuid_equal (int *,int *) ;
 scalar_t__ uuid_is_null (int *) ;
 int uuid_null ;

__attribute__((used)) static int lmLogFileSystem(struct jfs_log * log, struct jfs_sb_info *sbi,
      int activate)
{
 int rc = 0;
 int i;
 struct logsuper *logsuper;
 struct lbuf *bpsuper;
 uuid_t *uuid = &sbi->uuid;




 if ((rc = lbmRead(log, 1, &bpsuper)))
  return rc;

 logsuper = (struct logsuper *) bpsuper->l_ldata;
 if (activate) {
  for (i = 0; i < MAX_ACTIVE; i++)
   if (uuid_is_null(&logsuper->active[i].uuid)) {
    uuid_copy(&logsuper->active[i].uuid, uuid);
    sbi->aggregate = i;
    break;
   }
  if (i == MAX_ACTIVE) {
   jfs_warn("Too many file systems sharing journal!");
   lbmFree(bpsuper);
   return -EMFILE;
  }
 } else {
  for (i = 0; i < MAX_ACTIVE; i++)
   if (uuid_equal(&logsuper->active[i].uuid, uuid)) {
    uuid_copy(&logsuper->active[i].uuid,
       &uuid_null);
    break;
   }
  if (i == MAX_ACTIVE) {
   jfs_warn("Somebody stomped on the journal!");
   lbmFree(bpsuper);
   return -EIO;
  }

 }
 lbmDirectWrite(log, bpsuper, lbmWRITE | lbmRELEASE | lbmSYNC);
 rc = lbmIOWait(bpsuper, lbmFREE);

 return rc;
}
