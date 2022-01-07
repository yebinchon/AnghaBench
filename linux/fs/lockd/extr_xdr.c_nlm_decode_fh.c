
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fh {unsigned int size; int data; } ;
typedef int __be32 ;


 unsigned int NFS2_FHSIZE ;
 int XDR_QUADLEN (unsigned int) ;
 int dprintk (char*,unsigned int,unsigned int) ;
 int memcpy (int ,int *,unsigned int) ;
 int memset (int ,int ,int) ;
 unsigned int ntohl (int ) ;

__attribute__((used)) static __be32 *
nlm_decode_fh(__be32 *p, struct nfs_fh *f)
{
 unsigned int len;

 if ((len = ntohl(*p++)) != NFS2_FHSIZE) {
  dprintk("lockd: bad fhandle size %d (should be %d)\n",
   len, NFS2_FHSIZE);
  return ((void*)0);
 }
 f->size = NFS2_FHSIZE;
 memset(f->data, 0, sizeof(f->data));
 memcpy(f->data, p, NFS2_FHSIZE);
 return p + XDR_QUADLEN(NFS2_FHSIZE);
}
