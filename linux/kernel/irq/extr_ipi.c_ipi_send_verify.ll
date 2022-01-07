; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_ipi.c_ipi_send_verify.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_ipi.c_ipi_send_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip = type { i32, i32 }
%struct.irq_data = type { i32 }
%struct.cpumask = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_chip*, %struct.irq_data*, %struct.cpumask*, i32)* @ipi_send_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipi_send_verify(%struct.irq_chip* %0, %struct.irq_data* %1, %struct.cpumask* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_chip*, align 8
  %7 = alloca %struct.irq_data*, align 8
  %8 = alloca %struct.cpumask*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpumask*, align 8
  store %struct.irq_chip* %0, %struct.irq_chip** %6, align 8
  store %struct.irq_data* %1, %struct.irq_data** %7, align 8
  store %struct.cpumask* %2, %struct.cpumask** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %12 = call %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* %11)
  store %struct.cpumask* %12, %struct.cpumask** %10, align 8
  %13 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %14 = icmp ne %struct.irq_chip* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.cpumask*, %struct.cpumask** %10, align 8
  %17 = icmp ne %struct.cpumask* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %63

21:                                               ; preds = %15
  %22 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %23 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %28 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %63

34:                                               ; preds = %26, %21
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @nr_cpu_ids, align 4
  %37 = icmp uge i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %63

41:                                               ; preds = %34
  %42 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %43 = icmp ne %struct.cpumask* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %46 = load %struct.cpumask*, %struct.cpumask** %10, align 8
  %47 = call i32 @cpumask_subset(%struct.cpumask* %45, %struct.cpumask* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %63

52:                                               ; preds = %44
  br label %62

53:                                               ; preds = %41
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.cpumask*, %struct.cpumask** %10, align 8
  %56 = call i32 @cpumask_test_cpu(i32 %54, %struct.cpumask* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %63

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %52
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %58, %49, %38, %31, %18
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data*) #1

declare dso_local i32 @cpumask_subset(%struct.cpumask*, %struct.cpumask*) #1

declare dso_local i32 @cpumask_test_cpu(i32, %struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
