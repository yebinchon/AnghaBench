; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_alloc_workqueue_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_alloc_workqueue_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_attrs = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@cpu_possible_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.workqueue_attrs* @alloc_workqueue_attrs() #0 {
  %1 = alloca %struct.workqueue_attrs*, align 8
  %2 = alloca %struct.workqueue_attrs*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.workqueue_attrs* @kzalloc(i32 4, i32 %3)
  store %struct.workqueue_attrs* %4, %struct.workqueue_attrs** %2, align 8
  %5 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %2, align 8
  %6 = icmp ne %struct.workqueue_attrs* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %22

8:                                                ; preds = %0
  %9 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %2, align 8
  %10 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32 @alloc_cpumask_var(i32* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  br label %22

15:                                               ; preds = %8
  %16 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %2, align 8
  %17 = getelementptr inbounds %struct.workqueue_attrs, %struct.workqueue_attrs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @cpu_possible_mask, align 4
  %20 = call i32 @cpumask_copy(i32 %18, i32 %19)
  %21 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %2, align 8
  store %struct.workqueue_attrs* %21, %struct.workqueue_attrs** %1, align 8
  br label %25

22:                                               ; preds = %14, %7
  %23 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %2, align 8
  %24 = call i32 @free_workqueue_attrs(%struct.workqueue_attrs* %23)
  store %struct.workqueue_attrs* null, %struct.workqueue_attrs** %1, align 8
  br label %25

25:                                               ; preds = %22, %15
  %26 = load %struct.workqueue_attrs*, %struct.workqueue_attrs** %1, align 8
  ret %struct.workqueue_attrs* %26
}

declare dso_local %struct.workqueue_attrs* @kzalloc(i32, i32) #1

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

declare dso_local i32 @free_workqueue_attrs(%struct.workqueue_attrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
