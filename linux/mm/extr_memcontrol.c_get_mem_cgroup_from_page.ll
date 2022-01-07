; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_get_mem_cgroup_from_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_get_mem_cgroup_from_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.page = type { %struct.mem_cgroup* }

@root_mem_cgroup = common dso_local global %struct.mem_cgroup* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mem_cgroup* @get_mem_cgroup_from_page(%struct.page* %0) #0 {
  %2 = alloca %struct.mem_cgroup*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.mem_cgroup*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = getelementptr inbounds %struct.page, %struct.page* %5, i32 0, i32 0
  %7 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  store %struct.mem_cgroup* %7, %struct.mem_cgroup** %4, align 8
  %8 = call i64 (...) @mem_cgroup_disabled()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %2, align 8
  br label %25

11:                                               ; preds = %1
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %14 = icmp ne %struct.mem_cgroup* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %17 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %16, i32 0, i32 0
  %18 = call i32 @css_tryget_online(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15, %11
  %21 = load %struct.mem_cgroup*, %struct.mem_cgroup** @root_mem_cgroup, align 8
  store %struct.mem_cgroup* %21, %struct.mem_cgroup** %4, align 8
  br label %22

22:                                               ; preds = %20, %15
  %23 = call i32 (...) @rcu_read_unlock()
  %24 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  store %struct.mem_cgroup* %24, %struct.mem_cgroup** %2, align 8
  br label %25

25:                                               ; preds = %22, %10
  %26 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  ret %struct.mem_cgroup* %26
}

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @css_tryget_online(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
