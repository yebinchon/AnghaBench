; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_write_u64.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_write_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.cftype = type { i32 }
%struct.cpuset = type { i32 }

@cpuset_rwsem = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CS_CPU_EXCLUSIVE = common dso_local global i32 0, align 4
@CS_MEM_EXCLUSIVE = common dso_local global i32 0, align 4
@CS_MEM_HARDWALL = common dso_local global i32 0, align 4
@CS_SCHED_LOAD_BALANCE = common dso_local global i32 0, align 4
@CS_MEMORY_MIGRATE = common dso_local global i32 0, align 4
@cpuset_memory_pressure_enabled = common dso_local global i32 0, align 4
@CS_SPREAD_PAGE = common dso_local global i32 0, align 4
@CS_SPREAD_SLAB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup_subsys_state*, %struct.cftype*, i32)* @cpuset_write_u64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuset_write_u64(%struct.cgroup_subsys_state* %0, %struct.cftype* %1, i32 %2) #0 {
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
  store i32 0, i32* %9, align 4
  %15 = call i32 (...) @get_online_cpus()
  %16 = call i32 @percpu_down_write(i32* @cpuset_rwsem)
  %17 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %18 = call i32 @is_cpuset_online(%struct.cpuset* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  br label %70

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %66 [
    i32 135, label %25
    i32 132, label %30
    i32 131, label %35
    i32 130, label %40
    i32 134, label %45
    i32 133, label %50
    i32 129, label %56
    i32 128, label %61
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @CS_CPU_EXCLUSIVE, align 4
  %27 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @update_flag(i32 %26, %struct.cpuset* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  br label %69

30:                                               ; preds = %23
  %31 = load i32, i32* @CS_MEM_EXCLUSIVE, align 4
  %32 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @update_flag(i32 %31, %struct.cpuset* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %69

35:                                               ; preds = %23
  %36 = load i32, i32* @CS_MEM_HARDWALL, align 4
  %37 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @update_flag(i32 %36, %struct.cpuset* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  br label %69

40:                                               ; preds = %23
  %41 = load i32, i32* @CS_SCHED_LOAD_BALANCE, align 4
  %42 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @update_flag(i32 %41, %struct.cpuset* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  br label %69

45:                                               ; preds = %23
  %46 = load i32, i32* @CS_MEMORY_MIGRATE, align 4
  %47 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @update_flag(i32 %46, %struct.cpuset* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %69

50:                                               ; preds = %23
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* @cpuset_memory_pressure_enabled, align 4
  br label %69

56:                                               ; preds = %23
  %57 = load i32, i32* @CS_SPREAD_PAGE, align 4
  %58 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @update_flag(i32 %57, %struct.cpuset* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  br label %69

61:                                               ; preds = %23
  %62 = load i32, i32* @CS_SPREAD_SLAB, align 4
  %63 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @update_flag(i32 %62, %struct.cpuset* %63, i32 %64)
  store i32 %65, i32* %9, align 4
  br label %69

66:                                               ; preds = %23
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %66, %61, %56, %50, %45, %40, %35, %30, %25
  br label %70

70:                                               ; preds = %69, %20
  %71 = call i32 @percpu_up_write(i32* @cpuset_rwsem)
  %72 = call i32 (...) @put_online_cpus()
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local %struct.cpuset* @css_cs(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @percpu_down_write(i32*) #1

declare dso_local i32 @is_cpuset_online(%struct.cpuset*) #1

declare dso_local i32 @update_flag(i32, %struct.cpuset*, i32) #1

declare dso_local i32 @percpu_up_write(i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
