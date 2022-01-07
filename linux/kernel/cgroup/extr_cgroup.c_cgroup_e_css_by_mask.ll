; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_e_css_by_mask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_e_css_by_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.cgroup = type { %struct.cgroup_subsys_state }
%struct.cgroup_subsys = type { i32 }

@cgroup_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup_subsys_state* (%struct.cgroup*, %struct.cgroup_subsys*)* @cgroup_e_css_by_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup_subsys_state* @cgroup_e_css_by_mask(%struct.cgroup* %0, %struct.cgroup_subsys* %1) #0 {
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.cgroup*, align 8
  %5 = alloca %struct.cgroup_subsys*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %4, align 8
  store %struct.cgroup_subsys* %1, %struct.cgroup_subsys** %5, align 8
  %6 = call i32 @lockdep_assert_held(i32* @cgroup_mutex)
  %7 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %8 = icmp ne %struct.cgroup_subsys* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %11 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %10, i32 0, i32 0
  store %struct.cgroup_subsys_state* %11, %struct.cgroup_subsys_state** %3, align 8
  br label %34

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %29, %12
  %14 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %15 = call i32 @cgroup_ss_mask(%struct.cgroup* %14)
  %16 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %17 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %15, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %30

23:                                               ; preds = %13
  %24 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %25 = call %struct.cgroup* @cgroup_parent(%struct.cgroup* %24)
  store %struct.cgroup* %25, %struct.cgroup** %4, align 8
  %26 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %27 = icmp ne %struct.cgroup* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store %struct.cgroup_subsys_state* null, %struct.cgroup_subsys_state** %3, align 8
  br label %34

29:                                               ; preds = %23
  br label %13

30:                                               ; preds = %13
  %31 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %32 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %5, align 8
  %33 = call %struct.cgroup_subsys_state* @cgroup_css(%struct.cgroup* %31, %struct.cgroup_subsys* %32)
  store %struct.cgroup_subsys_state* %33, %struct.cgroup_subsys_state** %3, align 8
  br label %34

34:                                               ; preds = %30, %28, %9
  %35 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  ret %struct.cgroup_subsys_state* %35
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @cgroup_ss_mask(%struct.cgroup*) #1

declare dso_local %struct.cgroup* @cgroup_parent(%struct.cgroup*) #1

declare dso_local %struct.cgroup_subsys_state* @cgroup_css(%struct.cgroup*, %struct.cgroup_subsys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
