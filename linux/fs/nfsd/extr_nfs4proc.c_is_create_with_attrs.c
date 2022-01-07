
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_open {scalar_t__ op_create; scalar_t__ op_createmode; } ;


 scalar_t__ NFS4_CREATE_EXCLUSIVE4_1 ;
 scalar_t__ NFS4_CREATE_GUARDED ;
 scalar_t__ NFS4_CREATE_UNCHECKED ;
 scalar_t__ NFS4_OPEN_CREATE ;

__attribute__((used)) static int
is_create_with_attrs(struct nfsd4_open *open)
{
 return open->op_create == NFS4_OPEN_CREATE
  && (open->op_createmode == NFS4_CREATE_UNCHECKED
      || open->op_createmode == NFS4_CREATE_GUARDED
      || open->op_createmode == NFS4_CREATE_EXCLUSIVE4_1);
}
