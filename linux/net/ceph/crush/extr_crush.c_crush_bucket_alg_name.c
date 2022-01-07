
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *crush_bucket_alg_name(int alg)
{
 switch (alg) {
 case 128: return "uniform";
 case 132: return "list";
 case 129: return "tree";
 case 131: return "straw";
 case 130: return "straw2";
 default: return "unknown";
 }
}
