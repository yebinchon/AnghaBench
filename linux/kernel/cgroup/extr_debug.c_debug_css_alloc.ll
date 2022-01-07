; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_debug.c_debug_css_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_debug.c_debug_css_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup_subsys_state* (%struct.cgroup_subsys_state*)* @debug_css_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup_subsys_state* @debug_css_alloc(%struct.cgroup_subsys_state* %0) #0 {
  %2 = alloca %struct.cgroup_subsys_state*, align 8
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.cgroup_subsys_state*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.cgroup_subsys_state* @kzalloc(i32 4, i32 %5)
  store %struct.cgroup_subsys_state* %6, %struct.cgroup_subsys_state** %4, align 8
  %7 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %8 = icmp ne %struct.cgroup_subsys_state* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %11)
  store %struct.cgroup_subsys_state* %12, %struct.cgroup_subsys_state** %2, align 8
  br label %15

13:                                               ; preds = %1
  %14 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  store %struct.cgroup_subsys_state* %14, %struct.cgroup_subsys_state** %2, align 8
  br label %15

15:                                               ; preds = %13, %9
  %16 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %2, align 8
  ret %struct.cgroup_subsys_state* %16
}

declare dso_local %struct.cgroup_subsys_state* @kzalloc(i32, i32) #1

declare dso_local %struct.cgroup_subsys_state* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
