; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_cache_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_cache_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc6_cache = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }

@mrt_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MFC_ASSERT_THRESH = common dso_local global i64 0, align 8
@MAXMIFS = common dso_local global i32 0, align 4
@ip6mr_cache_free_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mfc6_cache* ()* @ip6mr_cache_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mfc6_cache* @ip6mr_cache_alloc() #0 {
  %1 = alloca %struct.mfc6_cache*, align 8
  %2 = alloca %struct.mfc6_cache*, align 8
  %3 = load i32, i32* @mrt_cachep, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.mfc6_cache* @kmem_cache_zalloc(i32 %3, i32 %4)
  store %struct.mfc6_cache* %5, %struct.mfc6_cache** %2, align 8
  %6 = load %struct.mfc6_cache*, %struct.mfc6_cache** %2, align 8
  %7 = icmp ne %struct.mfc6_cache* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.mfc6_cache* null, %struct.mfc6_cache** %1, align 8
  br label %36

9:                                                ; preds = %0
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i64, i64* @MFC_ASSERT_THRESH, align 8
  %12 = sub nsw i64 %10, %11
  %13 = sub nsw i64 %12, 1
  %14 = load %struct.mfc6_cache*, %struct.mfc6_cache** %2, align 8
  %15 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store i64 %13, i64* %18, align 8
  %19 = load i32, i32* @MAXMIFS, align 4
  %20 = load %struct.mfc6_cache*, %struct.mfc6_cache** %2, align 8
  %21 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %19, i32* %24, align 4
  %25 = load i32, i32* @ip6mr_cache_free_rcu, align 4
  %26 = load %struct.mfc6_cache*, %struct.mfc6_cache** %2, align 8
  %27 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load %struct.mfc6_cache*, %struct.mfc6_cache** %2, align 8
  %30 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @refcount_set(i32* %33, i32 1)
  %35 = load %struct.mfc6_cache*, %struct.mfc6_cache** %2, align 8
  store %struct.mfc6_cache* %35, %struct.mfc6_cache** %1, align 8
  br label %36

36:                                               ; preds = %9, %8
  %37 = load %struct.mfc6_cache*, %struct.mfc6_cache** %1, align 8
  ret %struct.mfc6_cache* %37
}

declare dso_local %struct.mfc6_cache* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
