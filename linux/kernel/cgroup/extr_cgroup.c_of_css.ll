; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_of_css.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_of_css.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.kernfs_open_file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.cgroup* }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32* }
%struct.cftype = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cgroup_subsys_state* @of_css(%struct.kernfs_open_file* %0) #0 {
  %2 = alloca %struct.cgroup_subsys_state*, align 8
  %3 = alloca %struct.kernfs_open_file*, align 8
  %4 = alloca %struct.cgroup*, align 8
  %5 = alloca %struct.cftype*, align 8
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %3, align 8
  %6 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %3, align 8
  %7 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  store %struct.cgroup* %12, %struct.cgroup** %4, align 8
  %13 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %3, align 8
  %14 = call %struct.cftype* @of_cft(%struct.kernfs_open_file* %13)
  store %struct.cftype* %14, %struct.cftype** %5, align 8
  %15 = load %struct.cftype*, %struct.cftype** %5, align 8
  %16 = getelementptr inbounds %struct.cftype, %struct.cftype* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %21 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.cftype*, %struct.cftype** %5, align 8
  %24 = getelementptr inbounds %struct.cftype, %struct.cftype* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %22, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.cgroup_subsys_state* @rcu_dereference_raw(i32 %29)
  store %struct.cgroup_subsys_state* %30, %struct.cgroup_subsys_state** %2, align 8
  br label %34

31:                                               ; preds = %1
  %32 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %33 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %32, i32 0, i32 0
  store %struct.cgroup_subsys_state* %33, %struct.cgroup_subsys_state** %2, align 8
  br label %34

34:                                               ; preds = %31, %19
  %35 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %2, align 8
  ret %struct.cgroup_subsys_state* %35
}

declare dso_local %struct.cftype* @of_cft(%struct.kernfs_open_file*) #1

declare dso_local %struct.cgroup_subsys_state* @rcu_dereference_raw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
