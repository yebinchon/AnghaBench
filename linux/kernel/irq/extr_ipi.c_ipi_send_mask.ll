; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_ipi.c_ipi_send_mask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_ipi.c_ipi_send_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.irq_desc = type { i32 }
%struct.irq_data = type { i32 }
%struct.irq_chip = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipi_send_mask(i32 %0, %struct.cpumask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca %struct.irq_desc*, align 8
  %7 = alloca %struct.irq_data*, align 8
  %8 = alloca %struct.irq_chip*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.irq_desc* @irq_to_desc(i32 %9)
  store %struct.irq_desc* %10, %struct.irq_desc** %6, align 8
  %11 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %12 = icmp ne %struct.irq_desc* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %15 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %14)
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi %struct.irq_data* [ %15, %13 ], [ null, %16 ]
  store %struct.irq_data* %18, %struct.irq_data** %7, align 8
  %19 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %20 = icmp ne %struct.irq_data* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %23 = call %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* %22)
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi %struct.irq_chip* [ %23, %21 ], [ null, %24 ]
  store %struct.irq_chip* %26, %struct.irq_chip** %8, align 8
  %27 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %28 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %29 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %30 = call i32 @ipi_send_verify(%struct.irq_chip* %27, %struct.irq_data* %28, %struct.cpumask* %29, i32 0)
  %31 = call i64 @WARN_ON_ONCE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %25
  %37 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %38 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %39 = call i32 @__ipi_send_mask(%struct.irq_desc* %37, %struct.cpumask* %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ipi_send_verify(%struct.irq_chip*, %struct.irq_data*, %struct.cpumask*, i32) #1

declare dso_local i32 @__ipi_send_mask(%struct.irq_desc*, %struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
