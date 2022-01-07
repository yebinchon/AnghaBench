; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_cpupri.c_cpupri_find.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_cpupri.c_cpupri_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpupri = type { %struct.cpupri_vec* }
%struct.cpupri_vec = type { i32, i32 }
%struct.task_struct = type { i32, i32 }
%struct.cpumask = type { i32 }

@CPUPRI_NR_PRIORITIES = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpupri_find(%struct.cpupri* %0, %struct.task_struct* %1, %struct.cpumask* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpupri*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.cpumask*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpupri_vec*, align 8
  %11 = alloca i32, align 4
  store %struct.cpupri* %0, %struct.cpupri** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store %struct.cpumask* %2, %struct.cpumask** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @convert_prio(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @CPUPRI_NR_PRIORITIES, align 4
  %18 = icmp sge i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %72, %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %75

25:                                               ; preds = %21
  %26 = load %struct.cpupri*, %struct.cpupri** %5, align 8
  %27 = getelementptr inbounds %struct.cpupri, %struct.cpupri* %26, i32 0, i32 0
  %28 = load %struct.cpupri_vec*, %struct.cpupri_vec** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cpupri_vec, %struct.cpupri_vec* %28, i64 %30
  store %struct.cpupri_vec* %31, %struct.cpupri_vec** %10, align 8
  store i32 0, i32* %11, align 4
  %32 = load %struct.cpupri_vec*, %struct.cpupri_vec** %10, align 8
  %33 = getelementptr inbounds %struct.cpupri_vec, %struct.cpupri_vec* %32, i32 0, i32 1
  %34 = call i32 @atomic_read(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  store i32 1, i32* %11, align 4
  br label %37

37:                                               ; preds = %36, %25
  %38 = call i32 (...) @smp_rmb()
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %72

42:                                               ; preds = %37
  %43 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %44 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cpupri_vec*, %struct.cpupri_vec** %10, align 8
  %47 = getelementptr inbounds %struct.cpupri_vec, %struct.cpupri_vec* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @cpumask_any_and(i32 %45, i32 %48)
  %50 = load i64, i64* @nr_cpu_ids, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %72

53:                                               ; preds = %42
  %54 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %55 = icmp ne %struct.cpumask* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %58 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cpupri_vec*, %struct.cpupri_vec** %10, align 8
  %62 = getelementptr inbounds %struct.cpupri_vec, %struct.cpupri_vec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cpumask_and(%struct.cpumask* %57, i32 %60, i32 %63)
  %65 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %66 = call i64 @cpumask_any(%struct.cpumask* %65)
  %67 = load i64, i64* @nr_cpu_ids, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %72

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %53
  store i32 1, i32* %4, align 4
  br label %76

72:                                               ; preds = %69, %52, %41
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %21

75:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %71
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @convert_prio(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @cpumask_any_and(i32, i32) #1

declare dso_local i32 @cpumask_and(%struct.cpumask*, i32, i32) #1

declare dso_local i64 @cpumask_any(%struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
