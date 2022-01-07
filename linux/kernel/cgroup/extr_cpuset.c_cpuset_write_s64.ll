; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_write_s64.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_write_s64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.cftype = type { i32 }
%struct.cpuset = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@cpuset_rwsem = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup_subsys_state*, %struct.cftype*, i32)* @cpuset_write_s64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuset_write_s64(%struct.cgroup_subsys_state* %0, %struct.cftype* %1, i32 %2) #0 {
  %4 = alloca %struct.cgroup_subsys_state*, align 8
  %5 = alloca %struct.cftype*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpuset*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %4, align 8
  store %struct.cftype* %1, %struct.cftype** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %11 = call %struct.cpuset* @css_cs(%struct.cgroup_subsys_state* %10)
  store %struct.cpuset* %11, %struct.cpuset** %7, align 8
  %12 = load %struct.cftype*, %struct.cftype** %5, align 8
  %13 = getelementptr inbounds %struct.cftype, %struct.cftype* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = call i32 (...) @get_online_cpus()
  %18 = call i32 @percpu_down_write(i32* @cpuset_rwsem)
  %19 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %20 = call i32 @is_cpuset_online(%struct.cpuset* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %33

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %29 [
    i32 128, label %25
  ]

25:                                               ; preds = %23
  %26 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @update_relax_domain_level(%struct.cpuset* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  br label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %29, %25
  br label %33

33:                                               ; preds = %32, %22
  %34 = call i32 @percpu_up_write(i32* @cpuset_rwsem)
  %35 = call i32 (...) @put_online_cpus()
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

declare dso_local %struct.cpuset* @css_cs(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @percpu_down_write(i32*) #1

declare dso_local i32 @is_cpuset_online(%struct.cpuset*) #1

declare dso_local i32 @update_relax_domain_level(%struct.cpuset*, i32) #1

declare dso_local i32 @percpu_up_write(i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
