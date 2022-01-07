
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_file {int nf_flags; } ;


 int NFSD_FILE_HASHED ;
 int NFSD_FILE_LAUNDRETTE_MAY_FLUSH ;
 int NFSD_FILE_REFERENCED ;
 int nfsd_file_in_use (struct nfsd_file*) ;
 int nfsd_file_put_noref (struct nfsd_file*) ;
 int nfsd_file_schedule_laundrette (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void
nfsd_file_put(struct nfsd_file *nf)
{
 bool is_hashed = test_bit(NFSD_FILE_HASHED, &nf->nf_flags) != 0;
 bool unused = !nfsd_file_in_use(nf);

 set_bit(NFSD_FILE_REFERENCED, &nf->nf_flags);
 if (nfsd_file_put_noref(nf) == 1 && is_hashed && unused)
  nfsd_file_schedule_laundrette(NFSD_FILE_LAUNDRETTE_MAY_FLUSH);
}
