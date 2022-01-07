; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_..slab.h_cache_vmstat_idx.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_..slab.h_cache_vmstat_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }

@SLAB_RECLAIM_ACCOUNT = common dso_local global i32 0, align 4
@NR_SLAB_RECLAIMABLE = common dso_local global i32 0, align 4
@NR_SLAB_UNRECLAIMABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmem_cache*)* @cache_vmstat_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_vmstat_idx(%struct.kmem_cache* %0) #0 {
  %2 = alloca %struct.kmem_cache*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %2, align 8
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %4 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SLAB_RECLAIM_ACCOUNT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @NR_SLAB_RECLAIMABLE, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @NR_SLAB_UNRECLAIMABLE, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
