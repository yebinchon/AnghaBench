; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_sunrpc_destroy_cache_detail.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_sunrpc_destroy_cache_detail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32, i32 }

@cache_list_lock = common dso_local global i32 0, align 4
@current_detail = common dso_local global %struct.cache_detail* null, align 8
@cache_list = common dso_local global i32 0, align 4
@cache_cleaner = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sunrpc_destroy_cache_detail(%struct.cache_detail* %0) #0 {
  %2 = alloca %struct.cache_detail*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %2, align 8
  %3 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %4 = call i32 @cache_purge(%struct.cache_detail* %3)
  %5 = call i32 @spin_lock(i32* @cache_list_lock)
  %6 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %7 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.cache_detail*, %struct.cache_detail** @current_detail, align 8
  %10 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %11 = icmp eq %struct.cache_detail* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.cache_detail* null, %struct.cache_detail** @current_detail, align 8
  br label %13

13:                                               ; preds = %12, %1
  %14 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %15 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %14, i32 0, i32 1
  %16 = call i32 @list_del_init(i32* %15)
  %17 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %18 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = call i32 @spin_unlock(i32* @cache_list_lock)
  %21 = call i64 @list_empty(i32* @cache_list)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = call i32 @cancel_delayed_work_sync(i32* @cache_cleaner)
  br label %25

25:                                               ; preds = %23, %13
  ret void
}

declare dso_local i32 @cache_purge(%struct.cache_detail*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
