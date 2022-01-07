; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_pool_map_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_pool_map_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_pool_map = type { i32, i32, i32 }

@svc_pool_map = common dso_local global %struct.svc_pool_map zeroinitializer, align 4
@svc_pool_map_mutex = common dso_local global i32 0, align 4
@SVC_POOL_AUTO = common dso_local global i32 0, align 4
@SVC_POOL_GLOBAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_pool_map_get() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.svc_pool_map*, align 8
  %3 = alloca i32, align 4
  store %struct.svc_pool_map* @svc_pool_map, %struct.svc_pool_map** %2, align 8
  store i32 -1, i32* %3, align 4
  %4 = call i32 @mutex_lock(i32* @svc_pool_map_mutex)
  %5 = load %struct.svc_pool_map*, %struct.svc_pool_map** %2, align 8
  %6 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = icmp ne i32 %7, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = call i32 @mutex_unlock(i32* @svc_pool_map_mutex)
  %12 = load %struct.svc_pool_map*, %struct.svc_pool_map** %2, align 8
  %13 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %1, align 4
  br label %50

15:                                               ; preds = %0
  %16 = load %struct.svc_pool_map*, %struct.svc_pool_map** %2, align 8
  %17 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SVC_POOL_AUTO, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = call i32 (...) @svc_pool_map_choose_mode()
  %23 = load %struct.svc_pool_map*, %struct.svc_pool_map** %2, align 8
  %24 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %15
  %26 = load %struct.svc_pool_map*, %struct.svc_pool_map** %2, align 8
  %27 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %35 [
    i32 129, label %29
    i32 128, label %32
  ]

29:                                               ; preds = %25
  %30 = load %struct.svc_pool_map*, %struct.svc_pool_map** %2, align 8
  %31 = call i32 @svc_pool_map_init_percpu(%struct.svc_pool_map* %30)
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %25
  %33 = load %struct.svc_pool_map*, %struct.svc_pool_map** %2, align 8
  %34 = call i32 @svc_pool_map_init_pernode(%struct.svc_pool_map* %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %25, %32, %29
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  %39 = load i32, i32* @SVC_POOL_GLOBAL, align 4
  %40 = load %struct.svc_pool_map*, %struct.svc_pool_map** %2, align 8
  %41 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.svc_pool_map*, %struct.svc_pool_map** %2, align 8
  %45 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = call i32 @mutex_unlock(i32* @svc_pool_map_mutex)
  %47 = load %struct.svc_pool_map*, %struct.svc_pool_map** %2, align 8
  %48 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %42, %10
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @svc_pool_map_choose_mode(...) #1

declare dso_local i32 @svc_pool_map_init_percpu(%struct.svc_pool_map*) #1

declare dso_local i32 @svc_pool_map_init_pernode(%struct.svc_pool_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
