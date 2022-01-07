; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_affinity.c_irq_spread_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_affinity.c_irq_spread_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }

@nr_cpu_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpumask*, %struct.cpumask*, i32)* @irq_spread_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_spread_init_one(%struct.cpumask* %0, %struct.cpumask* %1, i32 %2) #0 {
  %4 = alloca %struct.cpumask*, align 8
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpumask*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpumask* %0, %struct.cpumask** %4, align 8
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %10

10:                                               ; preds = %54, %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ugt i32 %11, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %10
  %14 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %15 = call i32 @cpumask_first(%struct.cpumask* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @nr_cpu_ids, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %55

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %23 = call i32 @cpumask_clear_cpu(i32 %21, %struct.cpumask* %22)
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %26 = call i32 @cpumask_set_cpu(i32 %24, %struct.cpumask* %25)
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %27, -1
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.cpumask* @topology_sibling_cpumask(i32 %29)
  store %struct.cpumask* %30, %struct.cpumask** %7, align 8
  store i32 -1, i32* %9, align 4
  br label %31

31:                                               ; preds = %48, %47, %20
  %32 = load i32, i32* %6, align 4
  %33 = icmp ugt i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %37 = call i32 @cpumask_next(i32 %35, %struct.cpumask* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @nr_cpu_ids, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %54

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %45 = call i32 @cpumask_test_and_clear_cpu(i32 %43, %struct.cpumask* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %31

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %51 = call i32 @cpumask_set_cpu(i32 %49, %struct.cpumask* %50)
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %6, align 4
  br label %31

54:                                               ; preds = %41, %31
  br label %10

55:                                               ; preds = %19, %10
  ret void
}

declare dso_local i32 @cpumask_first(%struct.cpumask*) #1

declare dso_local i32 @cpumask_clear_cpu(i32, %struct.cpumask*) #1

declare dso_local i32 @cpumask_set_cpu(i32, %struct.cpumask*) #1

declare dso_local %struct.cpumask* @topology_sibling_cpumask(i32) #1

declare dso_local i32 @cpumask_next(i32, %struct.cpumask*) #1

declare dso_local i32 @cpumask_test_and_clear_cpu(i32, %struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
