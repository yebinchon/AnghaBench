; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_try_charge_delay.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_try_charge_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mm_struct = type { i32 }
%struct.mem_cgroup = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_cgroup_try_charge_delay(%struct.page* %0, %struct.mm_struct* %1, i32 %2, %struct.mem_cgroup** %3, i32 %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mem_cgroup**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mem_cgroup*, align 8
  %12 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %6, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mem_cgroup** %3, %struct.mem_cgroup*** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.mem_cgroup**, %struct.mem_cgroup*** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @mem_cgroup_try_charge(%struct.page* %13, %struct.mm_struct* %14, i32 %15, %struct.mem_cgroup** %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.mem_cgroup**, %struct.mem_cgroup*** %9, align 8
  %20 = load %struct.mem_cgroup*, %struct.mem_cgroup** %19, align 8
  store %struct.mem_cgroup* %20, %struct.mem_cgroup** %11, align 8
  %21 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %22 = load %struct.page*, %struct.page** %6, align 8
  %23 = call i32 @page_to_nid(%struct.page* %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @mem_cgroup_throttle_swaprate(%struct.mem_cgroup* %21, i32 %23, i32 %24)
  %26 = load i32, i32* %12, align 4
  ret i32 %26
}

declare dso_local i32 @mem_cgroup_try_charge(%struct.page*, %struct.mm_struct*, i32, %struct.mem_cgroup**, i32) #1

declare dso_local i32 @mem_cgroup_throttle_swaprate(%struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
