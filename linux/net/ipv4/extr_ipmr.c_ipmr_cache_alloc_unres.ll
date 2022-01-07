; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_cache_alloc_unres.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_cache_alloc_unres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc_cache = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@mrt_cachep = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mfc_cache* ()* @ipmr_cache_alloc_unres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mfc_cache* @ipmr_cache_alloc_unres() #0 {
  %1 = alloca %struct.mfc_cache*, align 8
  %2 = load i32, i32* @mrt_cachep, align 4
  %3 = load i32, i32* @GFP_ATOMIC, align 4
  %4 = call %struct.mfc_cache* @kmem_cache_zalloc(i32 %2, i32 %3)
  store %struct.mfc_cache* %4, %struct.mfc_cache** %1, align 8
  %5 = load %struct.mfc_cache*, %struct.mfc_cache** %1, align 8
  %6 = icmp ne %struct.mfc_cache* %5, null
  br i1 %6, label %7, label %24

7:                                                ; preds = %0
  %8 = load %struct.mfc_cache*, %struct.mfc_cache** %1, align 8
  %9 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = call i32 @skb_queue_head_init(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i32, i32* @HZ, align 4
  %16 = mul nsw i32 10, %15
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = load %struct.mfc_cache*, %struct.mfc_cache** %1, align 8
  %20 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i64 %18, i64* %23, align 8
  br label %24

24:                                               ; preds = %7, %0
  %25 = load %struct.mfc_cache*, %struct.mfc_cache** %1, align 8
  ret %struct.mfc_cache* %25
}

declare dso_local %struct.mfc_cache* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
