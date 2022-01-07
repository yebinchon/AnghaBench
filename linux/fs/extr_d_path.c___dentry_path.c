
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_name; struct dentry* d_parent; } ;


 int ENAMETOOLONG ;
 char* ERR_PTR (int ) ;
 int IS_ROOT (struct dentry*) ;
 int done_seqretry (int *,int) ;
 scalar_t__ need_seqretry (int *,int) ;
 int prefetch (struct dentry*) ;
 int prepend (char**,int*,char*,int) ;
 int prepend_name (char**,int*,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int read_seqbegin_or_lock (int *,int*) ;
 int rename_lock ;

__attribute__((used)) static char *__dentry_path(struct dentry *d, char *buf, int buflen)
{
 struct dentry *dentry;
 char *end, *retval;
 int len, seq = 0;
 int error = 0;

 if (buflen < 2)
  goto Elong;

 rcu_read_lock();
restart:
 dentry = d;
 end = buf + buflen;
 len = buflen;
 prepend(&end, &len, "\0", 1);

 retval = end-1;
 *retval = '/';
 read_seqbegin_or_lock(&rename_lock, &seq);
 while (!IS_ROOT(dentry)) {
  struct dentry *parent = dentry->d_parent;

  prefetch(parent);
  error = prepend_name(&end, &len, &dentry->d_name);
  if (error)
   break;

  retval = end;
  dentry = parent;
 }
 if (!(seq & 1))
  rcu_read_unlock();
 if (need_seqretry(&rename_lock, seq)) {
  seq = 1;
  goto restart;
 }
 done_seqretry(&rename_lock, seq);
 if (error)
  goto Elong;
 return retval;
Elong:
 return ERR_PTR(-ENAMETOOLONG);
}
