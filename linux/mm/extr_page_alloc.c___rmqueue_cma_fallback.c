
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct page {int dummy; } ;



__attribute__((used)) static inline struct page *__rmqueue_cma_fallback(struct zone *zone,
     unsigned int order) { return ((void*)0); }
