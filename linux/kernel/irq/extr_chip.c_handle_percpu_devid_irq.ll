; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_handle_percpu_devid_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_handle_percpu_devid_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, %struct.irqaction* }
%struct.irqaction = type { i32, i32 (i32, i32)* }
%struct.irq_chip = type { i32 (i32*)*, i32 (i32*)* }

@.str = private unnamed_addr constant [34 x i8] c"Spurious%s percpu IRQ%u on CPU%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" and unmasked\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_percpu_devid_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  %4 = alloca %struct.irqaction*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %9)
  store %struct.irq_chip* %10, %struct.irq_chip** %3, align 8
  %11 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %12 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %11, i32 0, i32 2
  %13 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  store %struct.irqaction* %13, %struct.irqaction** %4, align 8
  %14 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %15 = call i32 @irq_desc_get_irq(%struct.irq_desc* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %17 = call i32 @__kstat_incr_irqs_this_cpu(%struct.irq_desc* %16)
  %18 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %19 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %18, i32 0, i32 1
  %20 = load i32 (i32*)*, i32 (i32*)** %19, align 8
  %21 = icmp ne i32 (i32*)* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %24 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %23, i32 0, i32 1
  %25 = load i32 (i32*)*, i32 (i32*)** %24, align 8
  %26 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %27 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %26, i32 0, i32 0
  %28 = call i32 %25(i32* %27)
  br label %29

29:                                               ; preds = %22, %1
  %30 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %31 = call i64 @likely(%struct.irqaction* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %36 = call i32 @trace_irq_handler_entry(i32 %34, %struct.irqaction* %35)
  %37 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %38 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %37, i32 0, i32 1
  %39 = load i32 (i32, i32)*, i32 (i32, i32)** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %42 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @raw_cpu_ptr(i32 %43)
  %45 = call i32 %39(i32 %40, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @trace_irq_handler_exit(i32 %46, %struct.irqaction* %47, i32 %48)
  br label %71

50:                                               ; preds = %29
  %51 = call i32 (...) @smp_processor_id()
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %54 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cpumask_test_cpu(i32 %52, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @irq_percpu_disable(%struct.irq_desc* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %50
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @pr_err_once(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %63, %33
  %72 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %73 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %72, i32 0, i32 0
  %74 = load i32 (i32*)*, i32 (i32*)** %73, align 8
  %75 = icmp ne i32 (i32*)* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %78 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %77, i32 0, i32 0
  %79 = load i32 (i32*)*, i32 (i32*)** %78, align 8
  %80 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %81 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %80, i32 0, i32 0
  %82 = call i32 %79(i32* %81)
  br label %83

83:                                               ; preds = %76, %71
  ret void
}

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @irq_desc_get_irq(%struct.irq_desc*) #1

declare dso_local i32 @__kstat_incr_irqs_this_cpu(%struct.irq_desc*) #1

declare dso_local i64 @likely(%struct.irqaction*) #1

declare dso_local i32 @trace_irq_handler_entry(i32, %struct.irqaction*) #1

declare dso_local i32 @raw_cpu_ptr(i32) #1

declare dso_local i32 @trace_irq_handler_exit(i32, %struct.irqaction*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @irq_percpu_disable(%struct.irq_desc*, i32) #1

declare dso_local i32 @pr_err_once(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
