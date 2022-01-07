; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_css_next_descendant_post.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_css_next_descendant_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { %struct.cgroup_subsys_state* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cgroup_subsys_state* @css_next_descendant_post(%struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state* %1) #0 {
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.cgroup_subsys_state*, align 8
  %5 = alloca %struct.cgroup_subsys_state*, align 8
  %6 = alloca %struct.cgroup_subsys_state*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %4, align 8
  store %struct.cgroup_subsys_state* %1, %struct.cgroup_subsys_state** %5, align 8
  %7 = call i32 (...) @cgroup_assert_mutex_or_rcu_locked()
  %8 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %9 = icmp ne %struct.cgroup_subsys_state* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %5, align 8
  %12 = call %struct.cgroup_subsys_state* @css_leftmost_descendant(%struct.cgroup_subsys_state* %11)
  store %struct.cgroup_subsys_state* %12, %struct.cgroup_subsys_state** %3, align 8
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %15 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %5, align 8
  %16 = icmp eq %struct.cgroup_subsys_state* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.cgroup_subsys_state* null, %struct.cgroup_subsys_state** %3, align 8
  br label %33

18:                                               ; preds = %13
  %19 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %20 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %21 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %20, i32 0, i32 0
  %22 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %21, align 8
  %23 = call %struct.cgroup_subsys_state* @css_next_child(%struct.cgroup_subsys_state* %19, %struct.cgroup_subsys_state* %22)
  store %struct.cgroup_subsys_state* %23, %struct.cgroup_subsys_state** %6, align 8
  %24 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %6, align 8
  %25 = icmp ne %struct.cgroup_subsys_state* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %6, align 8
  %28 = call %struct.cgroup_subsys_state* @css_leftmost_descendant(%struct.cgroup_subsys_state* %27)
  store %struct.cgroup_subsys_state* %28, %struct.cgroup_subsys_state** %3, align 8
  br label %33

29:                                               ; preds = %18
  %30 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %31 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %30, i32 0, i32 0
  %32 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %31, align 8
  store %struct.cgroup_subsys_state* %32, %struct.cgroup_subsys_state** %3, align 8
  br label %33

33:                                               ; preds = %29, %26, %17, %10
  %34 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  ret %struct.cgroup_subsys_state* %34
}

declare dso_local i32 @cgroup_assert_mutex_or_rcu_locked(...) #1

declare dso_local %struct.cgroup_subsys_state* @css_leftmost_descendant(%struct.cgroup_subsys_state*) #1

declare dso_local %struct.cgroup_subsys_state* @css_next_child(%struct.cgroup_subsys_state*, %struct.cgroup_subsys_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
