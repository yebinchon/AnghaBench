; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab_common.c_shutdown_cache.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab_common.c_shutdown_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@SLAB_TYPESAFE_BY_RCU = common dso_local global i32 0, align 4
@slab_caches_to_rcu_destroy = common dso_local global i32 0, align 4
@slab_caches_to_rcu_destroy_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmem_cache*)* @shutdown_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shutdown_cache(%struct.kmem_cache* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kmem_cache*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  %4 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %5 = call i32 @kasan_cache_shutdown(%struct.kmem_cache* %4)
  %6 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %7 = call i64 @__kmem_cache_shutdown(%struct.kmem_cache* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %14 = call i32 @memcg_unlink_cache(%struct.kmem_cache* %13)
  %15 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %16 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %15, i32 0, i32 1
  %17 = call i32 @list_del(i32* %16)
  %18 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %19 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SLAB_TYPESAFE_BY_RCU, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %12
  %25 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %26 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %25, i32 0, i32 1
  %27 = call i32 @list_add_tail(i32* %26, i32* @slab_caches_to_rcu_destroy)
  %28 = call i32 @schedule_work(i32* @slab_caches_to_rcu_destroy_work)
  br label %32

29:                                               ; preds = %12
  %30 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %31 = call i32 @slab_kmem_cache_release(%struct.kmem_cache* %30)
  br label %32

32:                                               ; preds = %29, %24
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @kasan_cache_shutdown(%struct.kmem_cache*) #1

declare dso_local i64 @__kmem_cache_shutdown(%struct.kmem_cache*) #1

declare dso_local i32 @memcg_unlink_cache(%struct.kmem_cache*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @slab_kmem_cache_release(%struct.kmem_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
