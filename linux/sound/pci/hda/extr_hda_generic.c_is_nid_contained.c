
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int depth; int path; } ;
typedef int hda_nid_t ;


 scalar_t__ find_idx_in_nid_list (int ,int ,int ) ;

__attribute__((used)) static bool is_nid_contained(struct nid_path *path, hda_nid_t nid)
{
 return find_idx_in_nid_list(nid, path->path, path->depth) >= 0;
}
