
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfs_rq {int dummy; } ;


 int strlcpy (char*,char*,int) ;

__attribute__((used)) static inline void cfs_rq_tg_path(struct cfs_rq *cfs_rq, char *path, int len)
{
 if (path)
  strlcpy(path, "(null)", len);
}
