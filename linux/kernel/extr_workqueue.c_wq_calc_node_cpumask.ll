; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_wq_calc_node_cpumask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_wq_calc_node_cpumask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_attrs = type { i32, i64 }

@wq_numa_enabled = common dso_local global i32 0, align 4
@wq_numa_possible_cpumask = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [67 x i8] c"WARNING: workqueue cpumask: online intersect > possible intersect\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.workqueue_attrs*, i32, i32, i32*)* @wq_calc_node_cpumask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wq_calc_node_cpumask(%struct.workqueue_attrs* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.workqueue_attrs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.workqueue_attrs* %0, %struct.workqueue_attrs** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* @wq_numa_enabled, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %6, align 8
  %14 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %4
  br label %62

18:                                               ; preds = %12
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @cpumask_of_node(i32 %20)
  %22 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %6, align 8
  %23 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cpumask_and(i32* %19, i32 %21, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @cpumask_clear_cpu(i32 %29, i32* %30)
  br label %32

32:                                               ; preds = %28, %18
  %33 = load i32*, i32** %9, align 8
  %34 = call i64 @cpumask_empty(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %62

37:                                               ; preds = %32
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %6, align 8
  %40 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** @wq_numa_possible_cpumask, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cpumask_and(i32* %38, i32 %41, i32 %46)
  %48 = load i32*, i32** %9, align 8
  %49 = call i64 @cpumask_empty(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = call i32 @pr_warn_once(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %68

53:                                               ; preds = %37
  %54 = load i32*, i32** %9, align 8
  %55 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %6, align 8
  %56 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @cpumask_equal(i32* %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %5, align 4
  br label %68

62:                                               ; preds = %36, %17
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %6, align 8
  %65 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @cpumask_copy(i32* %63, i32 %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %62, %53, %51
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @cpumask_and(i32*, i32, i32) #1

declare dso_local i32 @cpumask_of_node(i32) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

declare dso_local i64 @cpumask_empty(i32*) #1

declare dso_local i32 @pr_warn_once(i8*) #1

declare dso_local i32 @cpumask_equal(i32*, i32) #1

declare dso_local i32 @cpumask_copy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
