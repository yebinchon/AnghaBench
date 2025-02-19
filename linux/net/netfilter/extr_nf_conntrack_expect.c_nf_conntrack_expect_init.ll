; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_nf_conntrack_expect_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_expect.c_nf_conntrack_expect_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nf_ct_expect_hsize = common dso_local global i32 0, align 4
@nf_conntrack_htable_size = common dso_local global i32 0, align 4
@nf_ct_expect_max = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"nf_conntrack_expect\00", align 1
@nf_ct_expect_cachep = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nf_ct_expect_hash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_conntrack_expect_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @nf_ct_expect_hsize, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @nf_conntrack_htable_size, align 4
  %6 = sdiv i32 %5, 256
  store i32 %6, i32* @nf_ct_expect_hsize, align 4
  %7 = load i32, i32* @nf_ct_expect_hsize, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  store i32 1, i32* @nf_ct_expect_hsize, align 4
  br label %10

10:                                               ; preds = %9, %4
  br label %11

11:                                               ; preds = %10, %0
  %12 = load i32, i32* @nf_ct_expect_hsize, align 4
  %13 = mul nsw i32 %12, 4
  store i32 %13, i32* @nf_ct_expect_max, align 4
  %14 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  store i32 %14, i32* @nf_ct_expect_cachep, align 4
  %15 = load i32, i32* @nf_ct_expect_cachep, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %1, align 4
  br label %30

20:                                               ; preds = %11
  %21 = call i32 @nf_ct_alloc_hashtable(i32* @nf_ct_expect_hsize, i32 0)
  store i32 %21, i32* @nf_ct_expect_hash, align 4
  %22 = load i32, i32* @nf_ct_expect_hash, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @nf_ct_expect_cachep, align 4
  %26 = call i32 @kmem_cache_destroy(i32 %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %1, align 4
  br label %30

29:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %29, %24, %17
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @nf_ct_alloc_hashtable(i32*, i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
