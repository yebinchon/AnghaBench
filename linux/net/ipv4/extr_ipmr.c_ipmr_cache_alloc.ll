; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_cache_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_cache_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc_cache = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }

@mrt_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MFC_ASSERT_THRESH = common dso_local global i64 0, align 8
@MAXVIFS = common dso_local global i32 0, align 4
@ipmr_cache_free_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mfc_cache* ()* @ipmr_cache_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mfc_cache* @ipmr_cache_alloc() #0 {
  %1 = alloca %struct.mfc_cache*, align 8
  %2 = load i32, i32* @mrt_cachep, align 4
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.mfc_cache* @kmem_cache_zalloc(i32 %2, i32 %3)
  store %struct.mfc_cache* %4, %struct.mfc_cache** %1, align 8
  %5 = load %struct.mfc_cache*, %struct.mfc_cache** %1, align 8
  %6 = icmp ne %struct.mfc_cache* %5, null
  br i1 %6, label %7, label %33

7:                                                ; preds = %0
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i64, i64* @MFC_ASSERT_THRESH, align 8
  %10 = sub nsw i64 %8, %9
  %11 = sub nsw i64 %10, 1
  %12 = load %struct.mfc_cache*, %struct.mfc_cache** %1, align 8
  %13 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i64 %11, i64* %16, align 8
  %17 = load i32, i32* @MAXVIFS, align 4
  %18 = load %struct.mfc_cache*, %struct.mfc_cache** %1, align 8
  %19 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %17, i32* %22, align 4
  %23 = load i32, i32* @ipmr_cache_free_rcu, align 4
  %24 = load %struct.mfc_cache*, %struct.mfc_cache** %1, align 8
  %25 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %struct.mfc_cache*, %struct.mfc_cache** %1, align 8
  %28 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @refcount_set(i32* %31, i32 1)
  br label %33

33:                                               ; preds = %7, %0
  %34 = load %struct.mfc_cache*, %struct.mfc_cache** %1, align 8
  ret %struct.mfc_cache* %34
}

declare dso_local %struct.mfc_cache* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
