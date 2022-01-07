; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_percpu_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_percpu_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@IRQ_GET_DESC_CHECK_PERCPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_percpu_is_enabled(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 (...) @smp_processor_id()
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @IRQ_GET_DESC_CHECK_PERCPU, align 4
  %11 = call %struct.irq_desc* @irq_get_desc_lock(i32 %9, i64* %6, i32 %10)
  store %struct.irq_desc* %11, %struct.irq_desc** %5, align 8
  %12 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %13 = icmp ne %struct.irq_desc* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %18 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cpumask_test_cpu(i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @irq_put_desc_unlock(%struct.irq_desc* %21, i64 %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %15, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.irq_desc* @irq_get_desc_lock(i32, i64*, i32) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @irq_put_desc_unlock(%struct.irq_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
