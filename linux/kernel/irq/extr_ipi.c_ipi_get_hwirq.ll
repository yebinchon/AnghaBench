; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_ipi.c_ipi_get_hwirq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_ipi.c_ipi_get_hwirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cpumask = type { i32 }

@nr_cpu_ids = common dso_local global i32 0, align 4
@INVALID_HWIRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipi_get_hwirq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_data*, align 8
  %7 = alloca %struct.cpumask*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.irq_data* @irq_get_irq_data(i32 %8)
  store %struct.irq_data* %9, %struct.irq_data** %6, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %11 = icmp ne %struct.irq_data* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %14 = call %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* %13)
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi %struct.cpumask* [ %14, %12 ], [ null, %15 ]
  store %struct.cpumask* %17, %struct.cpumask** %7, align 8
  %18 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %19 = icmp ne %struct.irq_data* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %22 = icmp ne %struct.cpumask* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @nr_cpu_ids, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %20, %16
  %28 = load i32, i32* @INVALID_HWIRQ, align 4
  store i32 %28, i32* %3, align 4
  br label %63

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %32 = call i32 @cpumask_test_cpu(i32 %30, %struct.cpumask* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @INVALID_HWIRQ, align 4
  store i32 %35, i32* %3, align 4
  br label %63

36:                                               ; preds = %29
  %37 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %38 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @irq_domain_is_ipi_per_cpu(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %43, %44
  %46 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %47 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub i32 %45, %50
  %52 = call %struct.irq_data* @irq_get_irq_data(i32 %51)
  store %struct.irq_data* %52, %struct.irq_data** %6, align 8
  br label %53

53:                                               ; preds = %42, %36
  %54 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %55 = icmp ne %struct.irq_data* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %58 = call i32 @irqd_to_hwirq(%struct.irq_data* %57)
  br label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @INVALID_HWIRQ, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i32 [ %58, %56 ], [ %60, %59 ]
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %34, %27
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data*) #1

declare dso_local i32 @cpumask_test_cpu(i32, %struct.cpumask*) #1

declare dso_local i64 @irq_domain_is_ipi_per_cpu(i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
