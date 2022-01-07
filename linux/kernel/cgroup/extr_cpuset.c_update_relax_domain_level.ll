; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_update_relax_domain_level.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_update_relax_domain_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@sched_domain_level_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuset*, i32)* @update_relax_domain_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_relax_domain_level(%struct.cpuset* %0, i32 %1) #0 {
  %3 = alloca %struct.cpuset*, align 8
  %4 = alloca i32, align 4
  store %struct.cpuset* %0, %struct.cpuset** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %7 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %5, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %13 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %15 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cpumask_empty(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %10
  %20 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %21 = call i64 @is_sched_load_balance(%struct.cpuset* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (...) @rebuild_sched_domains_locked()
  br label %25

25:                                               ; preds = %23, %19, %10
  br label %26

26:                                               ; preds = %25, %2
  ret i32 0
}

declare dso_local i32 @cpumask_empty(i32) #1

declare dso_local i64 @is_sched_load_balance(%struct.cpuset*) #1

declare dso_local i32 @rebuild_sched_domains_locked(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
