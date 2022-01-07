; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_queue_work_node.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_queue_work_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_struct = type { i32 }
%struct.work_struct = type { i32 }

@WQ_UNBOUND = common dso_local global i32 0, align 4
@WORK_STRUCT_PENDING_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @queue_work_node(i32 %0, %struct.workqueue_struct* %1, %struct.work_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.workqueue_struct*, align 8
  %6 = alloca %struct.work_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.workqueue_struct* %1, %struct.workqueue_struct** %5, align 8
  store %struct.work_struct* %2, %struct.work_struct** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %11 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @WQ_UNBOUND, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON_ONCE(i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @local_irq_save(i64 %19)
  %21 = load i32, i32* @WORK_STRUCT_PENDING_BIT, align 4
  %22 = load %struct.work_struct*, %struct.work_struct** %6, align 8
  %23 = call i32 @work_data_bits(%struct.work_struct* %22)
  %24 = call i32 @test_and_set_bit(i32 %21, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @workqueue_select_cpu_near(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %31 = load %struct.work_struct*, %struct.work_struct** %6, align 8
  %32 = call i32 @__queue_work(i32 %29, %struct.workqueue_struct* %30, %struct.work_struct* %31)
  store i32 1, i32* %8, align 4
  br label %33

33:                                               ; preds = %26, %3
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @local_irq_restore(i64 %34)
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @work_data_bits(%struct.work_struct*) #1

declare dso_local i32 @workqueue_select_cpu_near(i32) #1

declare dso_local i32 @__queue_work(i32, %struct.workqueue_struct*, %struct.work_struct*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
