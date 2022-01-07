; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_xdp.c___mem_id_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_xdp.c___mem_id_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_mem_allocator = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@mem_id_lock = common dso_local global i32 0, align 4
@mem_id_ht = common dso_local global i32 0, align 4
@mem_id_rht_params = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Request remove non-existing id(%d), driver bug?\00", align 1
@MEM_TYPE_PAGE_POOL = common dso_local global i64 0, align 8
@__xdp_mem_allocator_rcu_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @__mem_id_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mem_id_disconnect(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdp_mem_allocator*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %7, align 4
  %8 = call i32 @mutex_lock(i32* @mem_id_lock)
  %9 = load i32, i32* @mem_id_ht, align 4
  %10 = load i32, i32* @mem_id_rht_params, align 4
  %11 = call %struct.xdp_mem_allocator* @rhashtable_lookup_fast(i32 %9, i32* %4, i32 %10)
  store %struct.xdp_mem_allocator* %11, %struct.xdp_mem_allocator** %6, align 8
  %12 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %6, align 8
  %13 = icmp ne %struct.xdp_mem_allocator* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = call i32 @mutex_unlock(i32* @mem_id_lock)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 1, i32* %3, align 4
  br label %61

18:                                               ; preds = %2
  %19 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %6, align 8
  %20 = getelementptr inbounds %struct.xdp_mem_allocator, %struct.xdp_mem_allocator* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %6, align 8
  %24 = getelementptr inbounds %struct.xdp_mem_allocator, %struct.xdp_mem_allocator* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MEM_TYPE_PAGE_POOL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %6, align 8
  %31 = getelementptr inbounds %struct.xdp_mem_allocator, %struct.xdp_mem_allocator* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @page_pool_request_shutdown(i32 %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %29, %18
  %35 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @trace_mem_disconnect(%struct.xdp_mem_allocator* %35, i32 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41, %34
  %45 = load i32, i32* @mem_id_ht, align 4
  %46 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %6, align 8
  %47 = getelementptr inbounds %struct.xdp_mem_allocator, %struct.xdp_mem_allocator* %46, i32 0, i32 1
  %48 = load i32, i32* @mem_id_rht_params, align 4
  %49 = call i32 @rhashtable_remove_fast(i32 %45, i32* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %44
  %52 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %6, align 8
  %53 = getelementptr inbounds %struct.xdp_mem_allocator, %struct.xdp_mem_allocator* %52, i32 0, i32 0
  %54 = load i32, i32* @__xdp_mem_allocator_rcu_free, align 4
  %55 = call i32 @call_rcu(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %44, %41
  %57 = call i32 @mutex_unlock(i32* @mem_id_lock)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.xdp_mem_allocator* @rhashtable_lookup_fast(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @page_pool_request_shutdown(i32) #1

declare dso_local i32 @trace_mem_disconnect(%struct.xdp_mem_allocator*, i32, i32) #1

declare dso_local i32 @rhashtable_remove_fast(i32, i32*, i32) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
