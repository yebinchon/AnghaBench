; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_worker_clr_flags.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_worker_clr_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { i32, i64, %struct.worker_pool* }
%struct.worker_pool = type { i32 }

@current = common dso_local global i64 0, align 8
@WORKER_NOT_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worker*, i32)* @worker_clr_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @worker_clr_flags(%struct.worker* %0, i32 %1) #0 {
  %3 = alloca %struct.worker*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.worker_pool*, align 8
  %6 = alloca i32, align 4
  store %struct.worker* %0, %struct.worker** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.worker*, %struct.worker** %3, align 8
  %8 = getelementptr inbounds %struct.worker, %struct.worker* %7, i32 0, i32 2
  %9 = load %struct.worker_pool*, %struct.worker_pool** %8, align 8
  store %struct.worker_pool* %9, %struct.worker_pool** %5, align 8
  %10 = load %struct.worker*, %struct.worker** %3, align 8
  %11 = getelementptr inbounds %struct.worker, %struct.worker* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.worker*, %struct.worker** %3, align 8
  %14 = getelementptr inbounds %struct.worker, %struct.worker* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @current, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.worker*, %struct.worker** %3, align 8
  %23 = getelementptr inbounds %struct.worker, %struct.worker* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @WORKER_NOT_RUNNING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @WORKER_NOT_RUNNING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.worker*, %struct.worker** %3, align 8
  %37 = getelementptr inbounds %struct.worker, %struct.worker* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @WORKER_NOT_RUNNING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = load %struct.worker_pool*, %struct.worker_pool** %5, align 8
  %44 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %43, i32 0, i32 0
  %45 = call i32 @atomic_inc(i32* %44)
  br label %46

46:                                               ; preds = %42, %35
  br label %47

47:                                               ; preds = %46, %30, %2
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
