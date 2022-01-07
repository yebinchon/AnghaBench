
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int host; } ;


 int nfs_zap_mapping (int ,struct address_space*) ;

__attribute__((used)) static void nfs_set_pageerror(struct address_space *mapping)
{
 nfs_zap_mapping(mapping->host, mapping);
}
