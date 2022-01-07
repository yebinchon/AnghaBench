; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_cache_alloc_unres.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_cache_alloc_unres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc6_cache = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@mrt_cachep = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mfc6_cache* ()* @ip6mr_cache_alloc_unres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mfc6_cache* @ip6mr_cache_alloc_unres() #0 {
  %1 = alloca %struct.mfc6_cache*, align 8
  %2 = alloca %struct.mfc6_cache*, align 8
  %3 = load i32, i32* @mrt_cachep, align 4
  %4 = load i32, i32* @GFP_ATOMIC, align 4
  %5 = call %struct.mfc6_cache* @kmem_cache_zalloc(i32 %3, i32 %4)
  store %struct.mfc6_cache* %5, %struct.mfc6_cache** %2, align 8
  %6 = load %struct.mfc6_cache*, %struct.mfc6_cache** %2, align 8
  %7 = icmp ne %struct.mfc6_cache* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.mfc6_cache* null, %struct.mfc6_cache** %1, align 8
  br label %27

9:                                                ; preds = %0
  %10 = load %struct.mfc6_cache*, %struct.mfc6_cache** %2, align 8
  %11 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = call i32 @skb_queue_head_init(i32* %14)
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 10, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = load %struct.mfc6_cache*, %struct.mfc6_cache** %2, align 8
  %22 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i64 %20, i64* %25, align 8
  %26 = load %struct.mfc6_cache*, %struct.mfc6_cache** %2, align 8
  store %struct.mfc6_cache* %26, %struct.mfc6_cache** %1, align 8
  br label %27

27:                                               ; preds = %9, %8
  %28 = load %struct.mfc6_cache*, %struct.mfc6_cache** %1, align 8
  ret %struct.mfc6_cache* %28
}

declare dso_local %struct.mfc6_cache* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
