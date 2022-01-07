; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_sk_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_sk_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32, i32 }
%struct.sock = type { %struct.mem_cgroup* }

@mem_cgroup_sockets_enabled = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@root_mem_cgroup = common dso_local global %struct.mem_cgroup* null, align 8
@memory_cgrp_subsys = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_cgroup_sk_alloc(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.mem_cgroup*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load i32, i32* @mem_cgroup_sockets_enabled, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %48

7:                                                ; preds = %1
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %11 = icmp ne %struct.mem_cgroup* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load %struct.mem_cgroup*, %struct.mem_cgroup** %14, align 8
  %16 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %15, i32 0, i32 0
  %17 = call i32 @css_get(i32* %16)
  br label %48

18:                                               ; preds = %7
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load i32, i32* @current, align 4
  %21 = call %struct.mem_cgroup* @mem_cgroup_from_task(i32 %20)
  store %struct.mem_cgroup* %21, %struct.mem_cgroup** %3, align 8
  %22 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %23 = load %struct.mem_cgroup*, %struct.mem_cgroup** @root_mem_cgroup, align 8
  %24 = icmp eq %struct.mem_cgroup* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %46

26:                                               ; preds = %18
  %27 = load i32, i32* @memory_cgrp_subsys, align 4
  %28 = call i32 @cgroup_subsys_on_dfl(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %32 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %46

36:                                               ; preds = %30, %26
  %37 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %38 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %37, i32 0, i32 0
  %39 = call i64 @css_tryget_online(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %43 = load %struct.sock*, %struct.sock** %2, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  store %struct.mem_cgroup* %42, %struct.mem_cgroup** %44, align 8
  br label %45

45:                                               ; preds = %41, %36
  br label %46

46:                                               ; preds = %45, %35, %25
  %47 = call i32 (...) @rcu_read_unlock()
  br label %48

48:                                               ; preds = %46, %12, %6
  ret void
}

declare dso_local i32 @css_get(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_task(i32) #1

declare dso_local i32 @cgroup_subsys_on_dfl(i32) #1

declare dso_local i64 @css_tryget_online(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
