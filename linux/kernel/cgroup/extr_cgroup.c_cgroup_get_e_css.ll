; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_get_e_css.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_get_e_css.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.cgroup_subsys_state** }
%struct.cgroup_subsys_state = type { i32 }
%struct.cgroup = type { i32 }
%struct.cgroup_subsys = type { i64 }

@init_css_set = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cgroup_subsys_state* @cgroup_get_e_css(%struct.cgroup* %0, %struct.cgroup_subsys* %1) #0 {
  %3 = alloca %struct.cgroup*, align 8
  %4 = alloca %struct.cgroup_subsys*, align 8
  %5 = alloca %struct.cgroup_subsys_state*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %3, align 8
  store %struct.cgroup_subsys* %1, %struct.cgroup_subsys** %4, align 8
  %6 = call i32 (...) @rcu_read_lock()
  br label %7

7:                                                ; preds = %21, %2
  %8 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %9 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %4, align 8
  %10 = call %struct.cgroup_subsys_state* @cgroup_css(%struct.cgroup* %8, %struct.cgroup_subsys* %9)
  store %struct.cgroup_subsys_state* %10, %struct.cgroup_subsys_state** %5, align 8
  %11 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %5, align 8
  %12 = icmp ne %struct.cgroup_subsys_state* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %5, align 8
  %15 = call i64 @css_tryget_online(%struct.cgroup_subsys_state* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %33

18:                                               ; preds = %13, %7
  %19 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %20 = call %struct.cgroup* @cgroup_parent(%struct.cgroup* %19)
  store %struct.cgroup* %20, %struct.cgroup** %3, align 8
  br label %21

21:                                               ; preds = %18
  %22 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %23 = icmp ne %struct.cgroup* %22, null
  br i1 %23, label %7, label %24

24:                                               ; preds = %21
  %25 = load %struct.cgroup_subsys_state**, %struct.cgroup_subsys_state*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_css_set, i32 0, i32 0), align 8
  %26 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %4, align 8
  %27 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %25, i64 %28
  %30 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %29, align 8
  store %struct.cgroup_subsys_state* %30, %struct.cgroup_subsys_state** %5, align 8
  %31 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %5, align 8
  %32 = call i32 @css_get(%struct.cgroup_subsys_state* %31)
  br label %33

33:                                               ; preds = %24, %17
  %34 = call i32 (...) @rcu_read_unlock()
  %35 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %5, align 8
  ret %struct.cgroup_subsys_state* %35
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cgroup_subsys_state* @cgroup_css(%struct.cgroup*, %struct.cgroup_subsys*) #1

declare dso_local i64 @css_tryget_online(%struct.cgroup_subsys_state*) #1

declare dso_local %struct.cgroup* @cgroup_parent(%struct.cgroup*) #1

declare dso_local i32 @css_get(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
