
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_copy {int cp_stateid; void* nf_src; void* nf_dst; int cp_clp; int fh; int cp_res; int cp_synchronous; int cp_count; int cp_dst_pos; int cp_src_pos; } ;


 int memcpy (int *,int *,int) ;
 void* nfsd_file_get (void*) ;

__attribute__((used)) static void dup_copy_fields(struct nfsd4_copy *src, struct nfsd4_copy *dst)
{
 dst->cp_src_pos = src->cp_src_pos;
 dst->cp_dst_pos = src->cp_dst_pos;
 dst->cp_count = src->cp_count;
 dst->cp_synchronous = src->cp_synchronous;
 memcpy(&dst->cp_res, &src->cp_res, sizeof(src->cp_res));
 memcpy(&dst->fh, &src->fh, sizeof(src->fh));
 dst->cp_clp = src->cp_clp;
 dst->nf_dst = nfsd_file_get(src->nf_dst);
 dst->nf_src = nfsd_file_get(src->nf_src);
 memcpy(&dst->cp_stateid, &src->cp_stateid, sizeof(src->cp_stateid));
}
