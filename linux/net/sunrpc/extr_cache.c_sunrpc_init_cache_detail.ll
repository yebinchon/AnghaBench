; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_sunrpc_init_cache_detail.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_sunrpc_init_cache_detail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32, i32, i64, i32, i64, i64, i32, i32 }

@cache_list_lock = common dso_local global i32 0, align 4
@cache_list = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@cache_cleaner = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sunrpc_init_cache_detail(%struct.cache_detail* %0) #0 {
  %2 = alloca %struct.cache_detail*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %2, align 8
  %3 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %4 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %3, i32 0, i32 7
  %5 = call i32 @spin_lock_init(i32* %4)
  %6 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %7 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %6, i32 0, i32 6
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = call i32 @spin_lock(i32* @cache_list_lock)
  %10 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %11 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %10, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %13 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %15 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %14, i32 0, i32 3
  %16 = call i32 @atomic_set(i32* %15, i32 0)
  %17 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %18 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %20 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  %21 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %22 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %21, i32 0, i32 1
  %23 = call i32 @list_add(i32* %22, i32* @cache_list)
  %24 = call i32 @spin_unlock(i32* @cache_list_lock)
  %25 = load i32, i32* @system_power_efficient_wq, align 4
  %26 = call i32 @queue_delayed_work(i32 %25, i32* @cache_cleaner, i32 0)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
