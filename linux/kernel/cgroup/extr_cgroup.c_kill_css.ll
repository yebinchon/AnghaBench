; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_kill_css.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_kill_css.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32, i32 }

@cgroup_mutex = common dso_local global i32 0, align 4
@CSS_DYING = common dso_local global i32 0, align 4
@css_killed_ref_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup_subsys_state*)* @kill_css to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill_css(%struct.cgroup_subsys_state* %0) #0 {
  %2 = alloca %struct.cgroup_subsys_state*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %2, align 8
  %3 = call i32 @lockdep_assert_held(i32* @cgroup_mutex)
  %4 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %2, align 8
  %5 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CSS_DYING, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %25

11:                                               ; preds = %1
  %12 = load i32, i32* @CSS_DYING, align 4
  %13 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %2, align 8
  %14 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %2, align 8
  %18 = call i32 @css_clear_dir(%struct.cgroup_subsys_state* %17)
  %19 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %2, align 8
  %20 = call i32 @css_get(%struct.cgroup_subsys_state* %19)
  %21 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %2, align 8
  %22 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %21, i32 0, i32 1
  %23 = load i32, i32* @css_killed_ref_fn, align 4
  %24 = call i32 @percpu_ref_kill_and_confirm(i32* %22, i32 %23)
  br label %25

25:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @css_clear_dir(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @css_get(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @percpu_ref_kill_and_confirm(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
