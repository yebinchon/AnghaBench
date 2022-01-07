; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_cgroup.c_lookup_swap_cgroup.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_cgroup.c_lookup_swap_cgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_cgroup_ctrl = type { i32 }
%struct.swap_cgroup = type { i32 }

@swap_cgroup_ctrl = common dso_local global %struct.swap_cgroup_ctrl* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.swap_cgroup* (i32, %struct.swap_cgroup_ctrl**)* @lookup_swap_cgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.swap_cgroup* @lookup_swap_cgroup(i32 %0, %struct.swap_cgroup_ctrl** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.swap_cgroup_ctrl**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.swap_cgroup_ctrl*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.swap_cgroup_ctrl** %1, %struct.swap_cgroup_ctrl*** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @swp_offset(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** @swap_cgroup_ctrl, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @swp_type(i32 %10)
  %12 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %9, i64 %11
  store %struct.swap_cgroup_ctrl* %12, %struct.swap_cgroup_ctrl** %6, align 8
  %13 = load %struct.swap_cgroup_ctrl**, %struct.swap_cgroup_ctrl*** %4, align 8
  %14 = icmp ne %struct.swap_cgroup_ctrl** %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %6, align 8
  %17 = load %struct.swap_cgroup_ctrl**, %struct.swap_cgroup_ctrl*** %4, align 8
  store %struct.swap_cgroup_ctrl* %16, %struct.swap_cgroup_ctrl** %17, align 8
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.swap_cgroup* @__lookup_swap_cgroup(%struct.swap_cgroup_ctrl* %19, i32 %20)
  ret %struct.swap_cgroup* %21
}

declare dso_local i32 @swp_offset(i32) #1

declare dso_local i64 @swp_type(i32) #1

declare dso_local %struct.swap_cgroup* @__lookup_swap_cgroup(%struct.swap_cgroup_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
