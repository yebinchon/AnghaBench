; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_css_next_descendant_pre.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_css_next_descendant_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { %struct.cgroup_subsys_state* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cgroup_subsys_state* @css_next_descendant_pre(%struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state* %1) #0 {
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.cgroup_subsys_state*, align 8
  %5 = alloca %struct.cgroup_subsys_state*, align 8
  %6 = alloca %struct.cgroup_subsys_state*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %4, align 8
  store %struct.cgroup_subsys_state* %1, %struct.cgroup_subsys_state** %5, align 8
  %7 = call i32 (...) @cgroup_assert_mutex_or_rcu_locked()
  %8 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %9 = icmp ne %struct.cgroup_subsys_state* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %5, align 8
  store %struct.cgroup_subsys_state* %11, %struct.cgroup_subsys_state** %3, align 8
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %14 = call %struct.cgroup_subsys_state* @css_next_child(%struct.cgroup_subsys_state* null, %struct.cgroup_subsys_state* %13)
  store %struct.cgroup_subsys_state* %14, %struct.cgroup_subsys_state** %6, align 8
  %15 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %6, align 8
  %16 = icmp ne %struct.cgroup_subsys_state* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %6, align 8
  store %struct.cgroup_subsys_state* %18, %struct.cgroup_subsys_state** %3, align 8
  br label %39

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %34, %19
  %21 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %22 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %5, align 8
  %23 = icmp ne %struct.cgroup_subsys_state* %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %26 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %27 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %26, i32 0, i32 0
  %28 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %27, align 8
  %29 = call %struct.cgroup_subsys_state* @css_next_child(%struct.cgroup_subsys_state* %25, %struct.cgroup_subsys_state* %28)
  store %struct.cgroup_subsys_state* %29, %struct.cgroup_subsys_state** %6, align 8
  %30 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %6, align 8
  %31 = icmp ne %struct.cgroup_subsys_state* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %6, align 8
  store %struct.cgroup_subsys_state* %33, %struct.cgroup_subsys_state** %3, align 8
  br label %39

34:                                               ; preds = %24
  %35 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %36 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %35, i32 0, i32 0
  %37 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %36, align 8
  store %struct.cgroup_subsys_state* %37, %struct.cgroup_subsys_state** %4, align 8
  br label %20

38:                                               ; preds = %20
  store %struct.cgroup_subsys_state* null, %struct.cgroup_subsys_state** %3, align 8
  br label %39

39:                                               ; preds = %38, %32, %17, %10
  %40 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  ret %struct.cgroup_subsys_state* %40
}

declare dso_local i32 @cgroup_assert_mutex_or_rcu_locked(...) #1

declare dso_local %struct.cgroup_subsys_state* @css_next_child(%struct.cgroup_subsys_state*, %struct.cgroup_subsys_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
