; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_invalidate_reclaim_iterators.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_invalidate_reclaim_iterators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }

@root_mem_cgroup = common dso_local global %struct.mem_cgroup* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_cgroup*)* @invalidate_reclaim_iterators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invalidate_reclaim_iterators(%struct.mem_cgroup* %0) #0 {
  %2 = alloca %struct.mem_cgroup*, align 8
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca %struct.mem_cgroup*, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %2, align 8
  %5 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  store %struct.mem_cgroup* %5, %struct.mem_cgroup** %3, align 8
  br label %6

6:                                                ; preds = %11, %1
  %7 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %8 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %9 = call i32 @__invalidate_reclaim_iterators(%struct.mem_cgroup* %7, %struct.mem_cgroup* %8)
  %10 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  store %struct.mem_cgroup* %10, %struct.mem_cgroup** %4, align 8
  br label %11

11:                                               ; preds = %6
  %12 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %13 = call %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup* %12)
  store %struct.mem_cgroup* %13, %struct.mem_cgroup** %3, align 8
  %14 = icmp ne %struct.mem_cgroup* %13, null
  br i1 %14, label %6, label %15

15:                                               ; preds = %11
  %16 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %17 = load %struct.mem_cgroup*, %struct.mem_cgroup** @root_mem_cgroup, align 8
  %18 = icmp ne %struct.mem_cgroup* %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.mem_cgroup*, %struct.mem_cgroup** @root_mem_cgroup, align 8
  %21 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %22 = call i32 @__invalidate_reclaim_iterators(%struct.mem_cgroup* %20, %struct.mem_cgroup* %21)
  br label %23

23:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @__invalidate_reclaim_iterators(%struct.mem_cgroup*, %struct.mem_cgroup*) #1

declare dso_local %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
