; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_worker_enter_idle.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_worker_enter_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { i32, i32, i64, %struct.TYPE_2__, %struct.worker_pool* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.worker_pool = type { i64, i32, i64, i32, i32, i32 }

@WORKER_IDLE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IDLE_WORKER_TIMEOUT = common dso_local global i64 0, align 8
@POOL_DISASSOCIATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worker*)* @worker_enter_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @worker_enter_idle(%struct.worker* %0) #0 {
  %2 = alloca %struct.worker*, align 8
  %3 = alloca %struct.worker_pool*, align 8
  store %struct.worker* %0, %struct.worker** %2, align 8
  %4 = load %struct.worker*, %struct.worker** %2, align 8
  %5 = getelementptr inbounds %struct.worker, %struct.worker* %4, i32 0, i32 4
  %6 = load %struct.worker_pool*, %struct.worker_pool** %5, align 8
  store %struct.worker_pool* %6, %struct.worker_pool** %3, align 8
  %7 = load %struct.worker*, %struct.worker** %2, align 8
  %8 = getelementptr inbounds %struct.worker, %struct.worker* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @WORKER_IDLE, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @WARN_ON_ONCE(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %1
  %15 = load %struct.worker*, %struct.worker** %2, align 8
  %16 = getelementptr inbounds %struct.worker, %struct.worker* %15, i32 0, i32 1
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %14
  %20 = load %struct.worker*, %struct.worker** %2, align 8
  %21 = getelementptr inbounds %struct.worker, %struct.worker* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.worker*, %struct.worker** %2, align 8
  %27 = getelementptr inbounds %struct.worker, %struct.worker* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i1 [ true, %19 ], [ %30, %25 ]
  br label %33

33:                                               ; preds = %31, %14
  %34 = phi i1 [ false, %14 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON_ONCE(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %1
  br label %96

39:                                               ; preds = %33
  %40 = load i32, i32* @WORKER_IDLE, align 4
  %41 = load %struct.worker*, %struct.worker** %2, align 8
  %42 = getelementptr inbounds %struct.worker, %struct.worker* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %46 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load i64, i64* @jiffies, align 8
  %50 = load %struct.worker*, %struct.worker** %2, align 8
  %51 = getelementptr inbounds %struct.worker, %struct.worker* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.worker*, %struct.worker** %2, align 8
  %53 = getelementptr inbounds %struct.worker, %struct.worker* %52, i32 0, i32 1
  %54 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %55 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %54, i32 0, i32 5
  %56 = call i32 @list_add(i32* %53, i32* %55)
  %57 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %58 = call i64 @too_many_workers(%struct.worker_pool* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %39
  %61 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %62 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %61, i32 0, i32 4
  %63 = call i32 @timer_pending(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %67 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %66, i32 0, i32 4
  %68 = load i64, i64* @jiffies, align 8
  %69 = load i64, i64* @IDLE_WORKER_TIMEOUT, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @mod_timer(i32* %67, i64 %70)
  br label %72

72:                                               ; preds = %65, %60, %39
  %73 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %74 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @POOL_DISASSOCIATED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %72
  %80 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %81 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %84 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %89 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %88, i32 0, i32 3
  %90 = call i64 @atomic_read(i32* %89)
  %91 = icmp ne i64 %90, 0
  br label %92

92:                                               ; preds = %87, %79, %72
  %93 = phi i1 [ false, %79 ], [ false, %72 ], [ %91, %87 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @WARN_ON_ONCE(i32 %94)
  br label %96

96:                                               ; preds = %92, %38
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @too_many_workers(%struct.worker_pool*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
