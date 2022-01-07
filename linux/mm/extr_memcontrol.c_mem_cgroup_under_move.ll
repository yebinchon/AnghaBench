; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_under_move.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_under_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.mem_cgroup*, %struct.mem_cgroup* }
%struct.mem_cgroup = type { i32 }

@mc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_cgroup*)* @mem_cgroup_under_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_under_move(%struct.mem_cgroup* %0) #0 {
  %2 = alloca %struct.mem_cgroup*, align 8
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mc, i32 0, i32 0))
  %7 = load %struct.mem_cgroup*, %struct.mem_cgroup** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mc, i32 0, i32 2), align 8
  store %struct.mem_cgroup* %7, %struct.mem_cgroup** %3, align 8
  %8 = load %struct.mem_cgroup*, %struct.mem_cgroup** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mc, i32 0, i32 1), align 8
  store %struct.mem_cgroup* %8, %struct.mem_cgroup** %4, align 8
  %9 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %10 = icmp ne %struct.mem_cgroup* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %14 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %15 = call i64 @mem_cgroup_is_descendant(%struct.mem_cgroup* %13, %struct.mem_cgroup* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %19 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %20 = call i64 @mem_cgroup_is_descendant(%struct.mem_cgroup* %18, %struct.mem_cgroup* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ true, %12 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %11
  %26 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mc, i32 0, i32 0))
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @mem_cgroup_is_descendant(%struct.mem_cgroup*, %struct.mem_cgroup*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
