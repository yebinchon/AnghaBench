; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_cpuhotplug.c_irq_restore_affinity_of_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_cpuhotplug.c_irq_restore_affinity_of_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_data = type { i32 }
%struct.cpumask = type { i32 }

@IRQ_RESEND = common dso_local global i32 0, align 4
@IRQ_START_COND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*, i32)* @irq_restore_affinity_of_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_restore_affinity_of_irq(%struct.irq_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca %struct.cpumask*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %8 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %7)
  store %struct.irq_data* %8, %struct.irq_data** %5, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %10 = call %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* %9)
  store %struct.cpumask* %10, %struct.cpumask** %6, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %12 = call i32 @irqd_affinity_is_managed(%struct.irq_data* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %16 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %21 = call i32 @irq_data_get_irq_chip(%struct.irq_data* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %26 = call i32 @cpumask_test_cpu(i32 %24, %struct.cpumask* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %19, %14, %2
  br label %46

29:                                               ; preds = %23
  %30 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %31 = call i64 @irqd_is_managed_and_shutdown(%struct.irq_data* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %35 = load i32, i32* @IRQ_RESEND, align 4
  %36 = load i32, i32* @IRQ_START_COND, align 4
  %37 = call i32 @irq_startup(%struct.irq_desc* %34, i32 %35, i32 %36)
  br label %46

38:                                               ; preds = %29
  %39 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %40 = call i32 @irqd_is_single_target(%struct.irq_data* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %44 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %45 = call i32 @irq_set_affinity_locked(%struct.irq_data* %43, %struct.cpumask* %44, i32 0)
  br label %46

46:                                               ; preds = %28, %33, %42, %38
  ret void
}

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data*) #1

declare dso_local i32 @irqd_affinity_is_managed(%struct.irq_data*) #1

declare dso_local i32 @irq_data_get_irq_chip(%struct.irq_data*) #1

declare dso_local i32 @cpumask_test_cpu(i32, %struct.cpumask*) #1

declare dso_local i64 @irqd_is_managed_and_shutdown(%struct.irq_data*) #1

declare dso_local i32 @irq_startup(%struct.irq_desc*, i32, i32) #1

declare dso_local i32 @irqd_is_single_target(%struct.irq_data*) #1

declare dso_local i32 @irq_set_affinity_locked(%struct.irq_data*, %struct.cpumask*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
