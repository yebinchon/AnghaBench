; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_need_to_create_worker.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_need_to_create_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker_pool = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.worker_pool*)* @need_to_create_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_to_create_worker(%struct.worker_pool* %0) #0 {
  %2 = alloca %struct.worker_pool*, align 8
  store %struct.worker_pool* %0, %struct.worker_pool** %2, align 8
  %3 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %4 = call i64 @need_more_worker(%struct.worker_pool* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.worker_pool*, %struct.worker_pool** %2, align 8
  %8 = call i32 @may_start_working(%struct.worker_pool* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i1 [ false, %1 ], [ %10, %6 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local i64 @need_more_worker(%struct.worker_pool*) #1

declare dso_local i32 @may_start_working(%struct.worker_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
