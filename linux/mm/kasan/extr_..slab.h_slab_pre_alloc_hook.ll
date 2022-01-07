; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_..slab.h_slab_pre_alloc_hook.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_..slab.h_slab_pre_alloc_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }

@gfp_allowed_mask = common dso_local global i32 0, align 4
@__GFP_ACCOUNT = common dso_local global i32 0, align 4
@SLAB_ACCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kmem_cache* (%struct.kmem_cache*, i32)* @slab_pre_alloc_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kmem_cache* @slab_pre_alloc_hook(%struct.kmem_cache* %0, i32 %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @gfp_allowed_mask, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @fs_reclaim_acquire(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @fs_reclaim_release(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @gfpflags_allow_blocking(i32 %13)
  %15 = call i32 @might_sleep_if(i32 %14)
  %16 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @should_failslab(%struct.kmem_cache* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.kmem_cache* null, %struct.kmem_cache** %3, align 8
  br label %41

21:                                               ; preds = %2
  %22 = call i64 (...) @memcg_kmem_enabled()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @__GFP_ACCOUNT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %31 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SLAB_ACCOUNT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %24
  %37 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %38 = call %struct.kmem_cache* @memcg_kmem_get_cache(%struct.kmem_cache* %37)
  store %struct.kmem_cache* %38, %struct.kmem_cache** %3, align 8
  br label %41

39:                                               ; preds = %29, %21
  %40 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  store %struct.kmem_cache* %40, %struct.kmem_cache** %3, align 8
  br label %41

41:                                               ; preds = %39, %36, %20
  %42 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  ret %struct.kmem_cache* %42
}

declare dso_local i32 @fs_reclaim_acquire(i32) #1

declare dso_local i32 @fs_reclaim_release(i32) #1

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i32 @gfpflags_allow_blocking(i32) #1

declare dso_local i64 @should_failslab(%struct.kmem_cache*, i32) #1

declare dso_local i64 @memcg_kmem_enabled(...) #1

declare dso_local %struct.kmem_cache* @memcg_kmem_get_cache(%struct.kmem_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
