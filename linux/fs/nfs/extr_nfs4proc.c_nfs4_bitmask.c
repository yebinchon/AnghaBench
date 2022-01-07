
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfs_server {int * attr_bitmask; } ;
struct nfs4_label {int dummy; } ;



__attribute__((used)) static inline u32 *
nfs4_bitmask(struct nfs_server *server, struct nfs4_label *label)
{ return server->attr_bitmask; }
