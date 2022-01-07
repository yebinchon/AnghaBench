; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_hash_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_hash_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable_compare_arg = type { %struct.mfc_cache_cmp_arg* }
%struct.mfc_cache_cmp_arg = type { i64, i64 }
%struct.mfc_cache = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rhashtable_compare_arg*, i8*)* @ipmr_hash_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmr_hash_cmp(%struct.rhashtable_compare_arg* %0, i8* %1) #0 {
  %3 = alloca %struct.rhashtable_compare_arg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mfc_cache_cmp_arg*, align 8
  %6 = alloca %struct.mfc_cache*, align 8
  store %struct.rhashtable_compare_arg* %0, %struct.rhashtable_compare_arg** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.rhashtable_compare_arg*, %struct.rhashtable_compare_arg** %3, align 8
  %8 = getelementptr inbounds %struct.rhashtable_compare_arg, %struct.rhashtable_compare_arg* %7, i32 0, i32 0
  %9 = load %struct.mfc_cache_cmp_arg*, %struct.mfc_cache_cmp_arg** %8, align 8
  store %struct.mfc_cache_cmp_arg* %9, %struct.mfc_cache_cmp_arg** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.mfc_cache*
  store %struct.mfc_cache* %11, %struct.mfc_cache** %6, align 8
  %12 = load %struct.mfc_cache_cmp_arg*, %struct.mfc_cache_cmp_arg** %5, align 8
  %13 = getelementptr inbounds %struct.mfc_cache_cmp_arg, %struct.mfc_cache_cmp_arg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.mfc_cache*, %struct.mfc_cache** %6, align 8
  %16 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.mfc_cache_cmp_arg*, %struct.mfc_cache_cmp_arg** %5, align 8
  %21 = getelementptr inbounds %struct.mfc_cache_cmp_arg, %struct.mfc_cache_cmp_arg* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mfc_cache*, %struct.mfc_cache** %6, align 8
  %24 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br label %27

27:                                               ; preds = %19, %2
  %28 = phi i1 [ true, %2 ], [ %26, %19 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
