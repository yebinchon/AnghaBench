; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_pool_map_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_pool_map_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_pool_map = type { i64, i32*, i32*, i32 }

@svc_pool_map = common dso_local global %struct.svc_pool_map zeroinitializer, align 8
@svc_pool_map_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_pool_map_put() #0 {
  %1 = alloca %struct.svc_pool_map*, align 8
  store %struct.svc_pool_map* @svc_pool_map, %struct.svc_pool_map** %1, align 8
  %2 = call i32 @mutex_lock(i32* @svc_pool_map_mutex)
  %3 = load %struct.svc_pool_map*, %struct.svc_pool_map** %1, align 8
  %4 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* %4, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %0
  %9 = load %struct.svc_pool_map*, %struct.svc_pool_map** %1, align 8
  %10 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @kfree(i32* %11)
  %13 = load %struct.svc_pool_map*, %struct.svc_pool_map** %1, align 8
  %14 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load %struct.svc_pool_map*, %struct.svc_pool_map** %1, align 8
  %16 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @kfree(i32* %17)
  %19 = load %struct.svc_pool_map*, %struct.svc_pool_map** %1, align 8
  %20 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.svc_pool_map*, %struct.svc_pool_map** %1, align 8
  %22 = getelementptr inbounds %struct.svc_pool_map, %struct.svc_pool_map* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %8, %0
  %24 = call i32 @mutex_unlock(i32* @svc_pool_map_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
