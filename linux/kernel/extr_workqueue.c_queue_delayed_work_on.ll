; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_queue_delayed_work_on.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_queue_delayed_work_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_struct = type { i32 }
%struct.delayed_work = type { %struct.work_struct }
%struct.work_struct = type { i32 }

@WORK_STRUCT_PENDING_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @queue_delayed_work_on(i32 %0, %struct.workqueue_struct* %1, %struct.delayed_work* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.workqueue_struct*, align 8
  %7 = alloca %struct.delayed_work*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.work_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.workqueue_struct* %1, %struct.workqueue_struct** %6, align 8
  store %struct.delayed_work* %2, %struct.delayed_work** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.delayed_work*, %struct.delayed_work** %7, align 8
  %13 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %12, i32 0, i32 0
  store %struct.work_struct* %13, %struct.work_struct** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i64, i64* %11, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = load i32, i32* @WORK_STRUCT_PENDING_BIT, align 4
  %17 = load %struct.work_struct*, %struct.work_struct** %9, align 8
  %18 = call i32 @work_data_bits(%struct.work_struct* %17)
  %19 = call i32 @test_and_set_bit(i32 %16, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.workqueue_struct*, %struct.workqueue_struct** %6, align 8
  %24 = load %struct.delayed_work*, %struct.delayed_work** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @__queue_delayed_work(i32 %22, %struct.workqueue_struct* %23, %struct.delayed_work* %24, i64 %25)
  store i32 1, i32* %10, align 4
  br label %27

27:                                               ; preds = %21, %4
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @local_irq_restore(i64 %28)
  %30 = load i32, i32* %10, align 4
  ret i32 %30
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @work_data_bits(%struct.work_struct*) #1

declare dso_local i32 @__queue_delayed_work(i32, %struct.workqueue_struct*, %struct.delayed_work*, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
