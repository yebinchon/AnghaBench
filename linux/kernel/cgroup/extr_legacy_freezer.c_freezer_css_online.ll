; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_legacy_freezer.c_freezer_css_online.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_legacy_freezer.c_freezer_css_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.freezer = type { i32 }

@freezer_mutex = common dso_local global i32 0, align 4
@CGROUP_FREEZER_ONLINE = common dso_local global i32 0, align 4
@CGROUP_FREEZING = common dso_local global i32 0, align 4
@CGROUP_FREEZING_PARENT = common dso_local global i32 0, align 4
@CGROUP_FROZEN = common dso_local global i32 0, align 4
@system_freezing_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup_subsys_state*)* @freezer_css_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freezer_css_online(%struct.cgroup_subsys_state* %0) #0 {
  %2 = alloca %struct.cgroup_subsys_state*, align 8
  %3 = alloca %struct.freezer*, align 8
  %4 = alloca %struct.freezer*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %2, align 8
  %5 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %2, align 8
  %6 = call %struct.freezer* @css_freezer(%struct.cgroup_subsys_state* %5)
  store %struct.freezer* %6, %struct.freezer** %3, align 8
  %7 = load %struct.freezer*, %struct.freezer** %3, align 8
  %8 = call %struct.freezer* @parent_freezer(%struct.freezer* %7)
  store %struct.freezer* %8, %struct.freezer** %4, align 8
  %9 = call i32 @mutex_lock(i32* @freezer_mutex)
  %10 = load i32, i32* @CGROUP_FREEZER_ONLINE, align 4
  %11 = load %struct.freezer*, %struct.freezer** %3, align 8
  %12 = getelementptr inbounds %struct.freezer, %struct.freezer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.freezer*, %struct.freezer** %4, align 8
  %16 = icmp ne %struct.freezer* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = load %struct.freezer*, %struct.freezer** %4, align 8
  %19 = getelementptr inbounds %struct.freezer, %struct.freezer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CGROUP_FREEZING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load i32, i32* @CGROUP_FREEZING_PARENT, align 4
  %26 = load i32, i32* @CGROUP_FROZEN, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.freezer*, %struct.freezer** %3, align 8
  %29 = getelementptr inbounds %struct.freezer, %struct.freezer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = call i32 @atomic_inc(i32* @system_freezing_cnt)
  br label %33

33:                                               ; preds = %24, %17, %1
  %34 = call i32 @mutex_unlock(i32* @freezer_mutex)
  ret i32 0
}

declare dso_local %struct.freezer* @css_freezer(%struct.cgroup_subsys_state*) #1

declare dso_local %struct.freezer* @parent_freezer(%struct.freezer*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
