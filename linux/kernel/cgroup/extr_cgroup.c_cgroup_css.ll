; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_css.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_css.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32* }
%struct.cgroup_subsys = type { i64 }

@cgroup_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup_subsys_state* (%struct.cgroup*, %struct.cgroup_subsys*)* @cgroup_css to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup_subsys_state* @cgroup_css(%struct.cgroup* %0, %struct.cgroup_subsys* %1) #0 {
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.cgroup*, align 8
  %5 = alloca %struct.cgroup_subsys*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %4, align 8
  store %struct.cgroup_subsys* %1, %struct.cgroup_subsys** %5, align 8
  %6 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %7 = icmp ne %struct.cgroup_subsys* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %10 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %13 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @lockdep_is_held(i32* @cgroup_mutex)
  %18 = call %struct.cgroup_subsys_state* @rcu_dereference_check(i32 %16, i32 %17)
  store %struct.cgroup_subsys_state* %18, %struct.cgroup_subsys_state** %3, align 8
  br label %22

19:                                               ; preds = %2
  %20 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %21 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %20, i32 0, i32 0
  store %struct.cgroup_subsys_state* %21, %struct.cgroup_subsys_state** %3, align 8
  br label %22

22:                                               ; preds = %19, %8
  %23 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  ret %struct.cgroup_subsys_state* %23
}

declare dso_local %struct.cgroup_subsys_state* @rcu_dereference_check(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
