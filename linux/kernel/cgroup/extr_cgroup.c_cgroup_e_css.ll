; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_e_css.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_e_css.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.cgroup_subsys_state** }
%struct.cgroup_subsys_state = type { i32 }
%struct.cgroup = type { i32 }
%struct.cgroup_subsys = type { i64 }

@init_css_set = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cgroup_subsys_state* @cgroup_e_css(%struct.cgroup* %0, %struct.cgroup_subsys* %1) #0 {
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.cgroup*, align 8
  %5 = alloca %struct.cgroup_subsys*, align 8
  %6 = alloca %struct.cgroup_subsys_state*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %4, align 8
  store %struct.cgroup_subsys* %1, %struct.cgroup_subsys** %5, align 8
  br label %7

7:                                                ; preds = %18, %2
  %8 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %9 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %10 = call %struct.cgroup_subsys_state* @cgroup_css(%struct.cgroup* %8, %struct.cgroup_subsys* %9)
  store %struct.cgroup_subsys_state* %10, %struct.cgroup_subsys_state** %6, align 8
  %11 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %6, align 8
  %12 = icmp ne %struct.cgroup_subsys_state* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %6, align 8
  store %struct.cgroup_subsys_state* %14, %struct.cgroup_subsys_state** %3, align 8
  br label %28

15:                                               ; preds = %7
  %16 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %17 = call %struct.cgroup* @cgroup_parent(%struct.cgroup* %16)
  store %struct.cgroup* %17, %struct.cgroup** %4, align 8
  br label %18

18:                                               ; preds = %15
  %19 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %20 = icmp ne %struct.cgroup* %19, null
  br i1 %20, label %7, label %21

21:                                               ; preds = %18
  %22 = load %struct.cgroup_subsys_state**, %struct.cgroup_subsys_state*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_css_set, i32 0, i32 0), align 8
  %23 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %24 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %22, i64 %25
  %27 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %26, align 8
  store %struct.cgroup_subsys_state* %27, %struct.cgroup_subsys_state** %3, align 8
  br label %28

28:                                               ; preds = %21, %13
  %29 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  ret %struct.cgroup_subsys_state* %29
}

declare dso_local %struct.cgroup_subsys_state* @cgroup_css(%struct.cgroup*, %struct.cgroup_subsys*) #1

declare dso_local %struct.cgroup* @cgroup_parent(%struct.cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
