; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_too_many_workers.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_too_many_workers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker_pool = type { i32, i32, i32 }

@POOL_MANAGER_ACTIVE = common dso_local global i32 0, align 4
@MAX_IDLE_WORKERS_RATIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.worker_pool*)* @too_many_workers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @too_many_workers(%struct.worker_pool* %0) #0 {
  %2 = alloca %struct.worker_pool*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.worker_pool* %0, %struct.worker_pool** %2, align 8
  %6 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %7 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @POOL_MANAGER_ACTIVE, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %12 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %17 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, 2
  %26 = load i32, i32* @MAX_IDLE_WORKERS_RATIO, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %27, %28
  br label %30

30:                                               ; preds = %23, %1
  %31 = phi i1 [ false, %1 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
