; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_css_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_css_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.cgroup_subsys_state }
%struct.cgroup_subsys_state = type { i32 }
%struct.cpuset = type { i32, %struct.cgroup_subsys_state, i32, i32, i32, i32 }

@top_cpuset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CS_SCHED_LOAD_BALANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup_subsys_state* (%struct.cgroup_subsys_state*)* @cpuset_css_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup_subsys_state* @cpuset_css_alloc(%struct.cgroup_subsys_state* %0) #0 {
  %2 = alloca %struct.cgroup_subsys_state*, align 8
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.cpuset*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %3, align 8
  %5 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  %6 = icmp ne %struct.cgroup_subsys_state* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.cgroup_subsys_state* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @top_cpuset, i32 0, i32 0), %struct.cgroup_subsys_state** %2, align 8
  br label %47

8:                                                ; preds = %1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.cpuset* @kzalloc(i32 24, i32 %9)
  store %struct.cpuset* %10, %struct.cpuset** %4, align 8
  %11 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %12 = icmp ne %struct.cpuset* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %15)
  store %struct.cgroup_subsys_state* %16, %struct.cgroup_subsys_state** %2, align 8
  br label %47

17:                                               ; preds = %8
  %18 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %19 = call i64 @alloc_cpumasks(%struct.cpuset* %18, i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %23 = call i32 @kfree(%struct.cpuset* %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %25)
  store %struct.cgroup_subsys_state* %26, %struct.cgroup_subsys_state** %2, align 8
  br label %47

27:                                               ; preds = %17
  %28 = load i32, i32* @CS_SCHED_LOAD_BALANCE, align 4
  %29 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %30 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %29, i32 0, i32 5
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  %32 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %33 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nodes_clear(i32 %34)
  %36 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %37 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nodes_clear(i32 %38)
  %40 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %41 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %40, i32 0, i32 2
  %42 = call i32 @fmeter_init(i32* %41)
  %43 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %44 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 4
  %45 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %46 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %45, i32 0, i32 1
  store %struct.cgroup_subsys_state* %46, %struct.cgroup_subsys_state** %2, align 8
  br label %47

47:                                               ; preds = %27, %21, %13, %7
  %48 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %2, align 8
  ret %struct.cgroup_subsys_state* %48
}

declare dso_local %struct.cpuset* @kzalloc(i32, i32) #1

declare dso_local %struct.cgroup_subsys_state* @ERR_PTR(i32) #1

declare dso_local i64 @alloc_cpumasks(%struct.cpuset*, i32*) #1

declare dso_local i32 @kfree(%struct.cpuset*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nodes_clear(i32) #1

declare dso_local i32 @fmeter_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
