; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_teardown_percpu_nmi.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_teardown_percpu_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@IRQ_GET_DESC_CHECK_PERCPU = common dso_local global i32 0, align 4
@IRQS_NMI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @teardown_percpu_nmi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.irq_desc*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @preemptible()
  %6 = call i64 @WARN_ON(i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @IRQ_GET_DESC_CHECK_PERCPU, align 4
  %9 = call %struct.irq_desc* @irq_get_desc_lock(i32 %7, i64* %3, i32 %8)
  store %struct.irq_desc* %9, %struct.irq_desc** %4, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %11 = icmp ne %struct.irq_desc* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %15 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IRQS_NMI, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %28

25:                                               ; preds = %13
  %26 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %27 = call i32 @irq_nmi_teardown(%struct.irq_desc* %26)
  br label %28

28:                                               ; preds = %25, %24
  %29 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @irq_put_desc_unlock(%struct.irq_desc* %29, i64 %30)
  br label %32

32:                                               ; preds = %28, %12
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @preemptible(...) #1

declare dso_local %struct.irq_desc* @irq_get_desc_lock(i32, i64*, i32) #1

declare dso_local i32 @irq_nmi_teardown(%struct.irq_desc*) #1

declare dso_local i32 @irq_put_desc_unlock(%struct.irq_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
