; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_wake_up_worker.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_wake_up_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker_pool = type { i32 }
%struct.worker = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worker_pool*)* @wake_up_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wake_up_worker(%struct.worker_pool* %0) #0 {
  %2 = alloca %struct.worker_pool*, align 8
  %3 = alloca %struct.worker*, align 8
  store %struct.worker_pool* %0, %struct.worker_pool** %2, align 8
  %4 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %5 = call %struct.worker* @first_idle_worker(%struct.worker_pool* %4)
  store %struct.worker* %5, %struct.worker** %3, align 8
  %6 = load %struct.worker*, %struct.worker** %3, align 8
  %7 = call i64 @likely(%struct.worker* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.worker*, %struct.worker** %3, align 8
  %11 = getelementptr inbounds %struct.worker, %struct.worker* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @wake_up_process(i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  ret void
}

declare dso_local %struct.worker* @first_idle_worker(%struct.worker_pool*) #1

declare dso_local i64 @likely(%struct.worker*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
