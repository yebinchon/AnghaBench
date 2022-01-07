
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ush ;
typedef void* uch ;
typedef int u32 ;
typedef int ct_data ;
struct TYPE_4__ {int Len; int Code; } ;
struct TYPE_3__ {int Len; } ;


 int Assert (int,char*) ;
 int D_CODES ;
 int LENGTH_CODES ;
 scalar_t__ L_CODES ;
 int MAX_BITS ;
 int* base_dist ;
 int* base_length ;
 int bitrev32 (int ) ;
 void** dist_code ;
 int* extra_dbits ;
 int* extra_lbits ;
 int gen_codes (int *,scalar_t__,scalar_t__*) ;
 void** length_code ;
 TYPE_2__* static_dtree ;
 TYPE_1__* static_ltree ;

__attribute__((used)) static void tr_static_init(void)
{
    static int static_init_done;
    int n;
    int bits;
    int length;
    int code;
    int dist;
    ush bl_count[MAX_BITS+1];


    if (static_init_done) return;


    length = 0;
    for (code = 0; code < LENGTH_CODES-1; code++) {
        base_length[code] = length;
        for (n = 0; n < (1<<extra_lbits[code]); n++) {
            length_code[length++] = (uch)code;
        }
    }
    Assert (length == 256, "tr_static_init: length != 256");




    length_code[length-1] = (uch)code;


    dist = 0;
    for (code = 0 ; code < 16; code++) {
        base_dist[code] = dist;
        for (n = 0; n < (1<<extra_dbits[code]); n++) {
            dist_code[dist++] = (uch)code;
        }
    }
    Assert (dist == 256, "tr_static_init: dist != 256");
    dist >>= 7;
    for ( ; code < D_CODES; code++) {
        base_dist[code] = dist << 7;
        for (n = 0; n < (1<<(extra_dbits[code]-7)); n++) {
            dist_code[256 + dist++] = (uch)code;
        }
    }
    Assert (dist == 256, "tr_static_init: 256+dist != 512");


    for (bits = 0; bits <= MAX_BITS; bits++) bl_count[bits] = 0;
    n = 0;
    while (n <= 143) static_ltree[n++].Len = 8, bl_count[8]++;
    while (n <= 255) static_ltree[n++].Len = 9, bl_count[9]++;
    while (n <= 279) static_ltree[n++].Len = 7, bl_count[7]++;
    while (n <= 287) static_ltree[n++].Len = 8, bl_count[8]++;




    gen_codes((ct_data *)static_ltree, L_CODES+1, bl_count);


    for (n = 0; n < D_CODES; n++) {
        static_dtree[n].Len = 5;
        static_dtree[n].Code = bitrev32((u32)n) >> (32 - 5);
    }
    static_init_done = 1;
}
