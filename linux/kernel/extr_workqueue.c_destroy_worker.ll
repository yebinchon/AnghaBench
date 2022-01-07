; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_destroy_worker.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_destroy_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { i32, i32, i32, i32, i32, %struct.worker_pool* }
%struct.worker_pool = type { i32, i32, i32 }

@WORKER_IDLE = common dso_local global i32 0, align 4
@WORKER_DIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worker*)* @destroy_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_worker(%struct.worker* %0) #0 {
  %2 = alloca %struct.worker*, align 8
  %3 = alloca %struct.worker_pool*, align 8
  store %struct.worker* %0, %struct.worker** %2, align 8
  %4 = load %struct.worker*, %struct.worker** %2, align 8
  %5 = getelementptr inbounds %struct.worker, %struct.worker* %4, i32 0, i32 5
  %6 = load %struct.worker_pool*, %struct.worker_pool** %5, align 8
  store %struct.worker_pool* %6, %struct.worker_pool** %3, align 8
  %7 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %8 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %7, i32 0, i32 2
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.worker*, %struct.worker** %2, align 8
  %11 = getelementptr inbounds %struct.worker, %struct.worker* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %1
  %16 = load %struct.worker*, %struct.worker** %2, align 8
  %17 = getelementptr inbounds %struct.worker, %struct.worker* %16, i32 0, i32 4
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %15
  %25 = load %struct.worker*, %struct.worker** %2, align 8
  %26 = getelementptr inbounds %struct.worker, %struct.worker* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @WORKER_IDLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24, %15, %1
  br label %57

36:                                               ; preds = %24
  %37 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %38 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %42 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.worker*, %struct.worker** %2, align 8
  %46 = getelementptr inbounds %struct.worker, %struct.worker* %45, i32 0, i32 3
  %47 = call i32 @list_del_init(i32* %46)
  %48 = load i32, i32* @WORKER_DIE, align 4
  %49 = load %struct.worker*, %struct.worker** %2, align 8
  %50 = getelementptr inbounds %struct.worker, %struct.worker* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.worker*, %struct.worker** %2, align 8
  %54 = getelementptr inbounds %struct.worker, %struct.worker* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @wake_up_process(i32 %55)
  br label %57

57:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
