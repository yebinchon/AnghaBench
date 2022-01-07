; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab_common.c_kmem_cache_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab_common.c_kmem_cache_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i64 }

@slab_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"kmem_cache_destroy %s: Slab cache still has objects\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmem_cache_destroy(%struct.kmem_cache* %0) #0 {
  %2 = alloca %struct.kmem_cache*, align 8
  %3 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %2, align 8
  %4 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %5 = icmp ne %struct.kmem_cache* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %13 = call i32 @flush_memcg_workqueue(%struct.kmem_cache* %12)
  %14 = call i32 (...) @get_online_cpus()
  %15 = call i32 (...) @get_online_mems()
  %16 = call i32 @mutex_lock(i32* @slab_mutex)
  %17 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %18 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %22 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  br label %44

26:                                               ; preds = %11
  %27 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %28 = call i32 @shutdown_memcg_caches(%struct.kmem_cache* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %33 = call i32 @shutdown_cache(%struct.kmem_cache* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %39 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = call i32 (...) @dump_stack()
  br label %43

43:                                               ; preds = %37, %34
  br label %44

44:                                               ; preds = %43, %25
  %45 = call i32 @mutex_unlock(i32* @slab_mutex)
  %46 = call i32 (...) @put_online_mems()
  %47 = call i32 (...) @put_online_cpus()
  br label %48

48:                                               ; preds = %44, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @flush_memcg_workqueue(%struct.kmem_cache*) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @get_online_mems(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @shutdown_memcg_caches(%struct.kmem_cache*) #1

declare dso_local i32 @shutdown_cache(%struct.kmem_cache*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_online_mems(...) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
