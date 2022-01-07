; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_worker_detach_from_pool.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_worker_detach_from_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { i32, %struct.worker_pool*, i32 }
%struct.worker_pool = type { %struct.completion*, i32 }
%struct.completion = type { i32 }

@wq_pool_attach_mutex = common dso_local global i32 0, align 4
@WORKER_UNBOUND = common dso_local global i32 0, align 4
@WORKER_REBOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worker*)* @worker_detach_from_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @worker_detach_from_pool(%struct.worker* %0) #0 {
  %2 = alloca %struct.worker*, align 8
  %3 = alloca %struct.worker_pool*, align 8
  %4 = alloca %struct.completion*, align 8
  store %struct.worker* %0, %struct.worker** %2, align 8
  %5 = load %struct.worker*, %struct.worker** %2, align 8
  %6 = getelementptr inbounds %struct.worker, %struct.worker* %5, i32 0, i32 1
  %7 = load %struct.worker_pool*, %struct.worker_pool** %6, align 8
  store %struct.worker_pool* %7, %struct.worker_pool** %3, align 8
  store %struct.completion* null, %struct.completion** %4, align 8
  %8 = call i32 @mutex_lock(i32* @wq_pool_attach_mutex)
  %9 = load %struct.worker*, %struct.worker** %2, align 8
  %10 = getelementptr inbounds %struct.worker, %struct.worker* %9, i32 0, i32 2
  %11 = call i32 @list_del(i32* %10)
  %12 = load %struct.worker*, %struct.worker** %2, align 8
  %13 = getelementptr inbounds %struct.worker, %struct.worker* %12, i32 0, i32 1
  store %struct.worker_pool* null, %struct.worker_pool** %13, align 8
  %14 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %15 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %14, i32 0, i32 1
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %20 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %19, i32 0, i32 0
  %21 = load %struct.completion*, %struct.completion** %20, align 8
  store %struct.completion* %21, %struct.completion** %4, align 8
  br label %22

22:                                               ; preds = %18, %1
  %23 = call i32 @mutex_unlock(i32* @wq_pool_attach_mutex)
  %24 = load i32, i32* @WORKER_UNBOUND, align 4
  %25 = load i32, i32* @WORKER_REBOUND, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.worker*, %struct.worker** %2, align 8
  %29 = getelementptr inbounds %struct.worker, %struct.worker* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.completion*, %struct.completion** %4, align 8
  %33 = icmp ne %struct.completion* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load %struct.completion*, %struct.completion** %4, align 8
  %36 = call i32 @complete(%struct.completion* %35)
  br label %37

37:                                               ; preds = %34, %22
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @complete(%struct.completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
