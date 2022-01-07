
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapage {struct jfs_log* nohomeok; struct jfs_log* log; } ;
struct jfs_log {int dummy; } ;


 int assert (struct jfs_log*) ;
 int metapage_homeok (struct metapage*) ;

__attribute__((used)) static void LogSyncRelease(struct metapage * mp)
{
 struct jfs_log *log = mp->log;

 assert(mp->nohomeok);
 assert(log);
 metapage_homeok(mp);
}
