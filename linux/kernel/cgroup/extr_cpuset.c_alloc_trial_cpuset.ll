; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_alloc_trial_cpuset.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_alloc_trial_cpuset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpuset* (%struct.cpuset*)* @alloc_trial_cpuset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpuset* @alloc_trial_cpuset(%struct.cpuset* %0) #0 {
  %2 = alloca %struct.cpuset*, align 8
  %3 = alloca %struct.cpuset*, align 8
  %4 = alloca %struct.cpuset*, align 8
  store %struct.cpuset* %0, %struct.cpuset** %3, align 8
  %5 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.cpuset* @kmemdup(%struct.cpuset* %5, i32 8, i32 %6)
  store %struct.cpuset* %7, %struct.cpuset** %4, align 8
  %8 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %9 = icmp ne %struct.cpuset* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.cpuset* null, %struct.cpuset** %2, align 8
  br label %34

11:                                               ; preds = %1
  %12 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %13 = call i64 @alloc_cpumasks(%struct.cpuset* %12, i32* null)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %17 = call i32 @kfree(%struct.cpuset* %16)
  store %struct.cpuset* null, %struct.cpuset** %2, align 8
  br label %34

18:                                               ; preds = %11
  %19 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %20 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %23 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cpumask_copy(i32 %21, i32 %24)
  %26 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %27 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %30 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cpumask_copy(i32 %28, i32 %31)
  %33 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  store %struct.cpuset* %33, %struct.cpuset** %2, align 8
  br label %34

34:                                               ; preds = %18, %15, %10
  %35 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  ret %struct.cpuset* %35
}

declare dso_local %struct.cpuset* @kmemdup(%struct.cpuset*, i32, i32) #1

declare dso_local i64 @alloc_cpumasks(%struct.cpuset*, i32*) #1

declare dso_local i32 @kfree(%struct.cpuset*) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
