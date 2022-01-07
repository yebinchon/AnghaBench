; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_guarantee_online_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_guarantee_online_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i32 }
%struct.cpumask = type { i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuset*, %struct.cpumask*)* @guarantee_online_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guarantee_online_cpus(%struct.cpuset* %0, %struct.cpumask* %1) #0 {
  %3 = alloca %struct.cpuset*, align 8
  %4 = alloca %struct.cpumask*, align 8
  store %struct.cpuset* %0, %struct.cpuset** %3, align 8
  store %struct.cpumask* %1, %struct.cpumask** %4, align 8
  br label %5

5:                                                ; preds = %26, %2
  %6 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %7 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @cpu_online_mask, align 4
  %10 = call i32 @cpumask_intersects(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %27

13:                                               ; preds = %5
  %14 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %15 = call %struct.cpuset* @parent_cs(%struct.cpuset* %14)
  store %struct.cpuset* %15, %struct.cpuset** %3, align 8
  %16 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %17 = icmp ne %struct.cpuset* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %24 = load i32, i32* @cpu_online_mask, align 4
  %25 = call i32 @cpumask_copy(%struct.cpumask* %23, i32 %24)
  br label %34

26:                                               ; preds = %13
  br label %5

27:                                               ; preds = %5
  %28 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %29 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %30 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @cpu_online_mask, align 4
  %33 = call i32 @cpumask_and(%struct.cpumask* %28, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @cpumask_intersects(i32, i32) #1

declare dso_local %struct.cpuset* @parent_cs(%struct.cpuset*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpumask_copy(%struct.cpumask*, i32) #1

declare dso_local i32 @cpumask_and(%struct.cpumask*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
