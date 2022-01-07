; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_cpudeadline.c_cpudl_find.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_cpudeadline.c_cpudl_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudl = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.task_struct = type { i32, %struct.sched_dl_entity }
%struct.sched_dl_entity = type { i32 }
%struct.cpumask = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpudl_find(%struct.cpudl* %0, %struct.task_struct* %1, %struct.cpumask* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpudl*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.cpumask*, align 8
  %8 = alloca %struct.sched_dl_entity*, align 8
  %9 = alloca i32, align 4
  store %struct.cpudl* %0, %struct.cpudl** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store %struct.cpumask* %2, %struct.cpumask** %7, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 1
  store %struct.sched_dl_entity* %11, %struct.sched_dl_entity** %8, align 8
  %12 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %13 = icmp ne %struct.cpumask* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %16 = load %struct.cpudl*, %struct.cpudl** %5, align 8
  %17 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @cpumask_and(%struct.cpumask* %15, i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %67

25:                                               ; preds = %14, %3
  %26 = load %struct.cpudl*, %struct.cpudl** %5, align 8
  %27 = call i32 @cpudl_maximum(%struct.cpudl* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @cpu_present(i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @cpumask_test_cpu(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %35
  %46 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %8, align 8
  %47 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cpudl*, %struct.cpudl** %5, align 8
  %50 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @dl_time_before(i32 %48, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %45
  %58 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %59 = icmp ne %struct.cpumask* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %63 = call i32 @cpumask_set_cpu(i32 %61, %struct.cpumask* %62)
  br label %64

64:                                               ; preds = %60, %57
  store i32 1, i32* %4, align 4
  br label %67

65:                                               ; preds = %45, %35
  br label %66

66:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %64, %24
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @cpumask_and(%struct.cpumask*, i32, i32) #1

declare dso_local i32 @cpudl_maximum(%struct.cpudl*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cpu_present(i32) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32) #1

declare dso_local i64 @dl_time_before(i32, i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, %struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
