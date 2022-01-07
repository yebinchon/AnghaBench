
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsinfo {int mntns_path; } ;


 int free (struct nsinfo*) ;
 int zfree (int *) ;

void nsinfo__delete(struct nsinfo *nsi)
{
 zfree(&nsi->mntns_path);
 free(nsi);
}
