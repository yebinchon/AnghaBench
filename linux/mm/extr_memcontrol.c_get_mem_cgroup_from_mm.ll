; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_get_mem_cgroup_from_mm.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_get_mem_cgroup_from_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.mm_struct = type { i32 }

@root_mem_cgroup = common dso_local global %struct.mem_cgroup* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mem_cgroup* @get_mem_cgroup_from_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mem_cgroup*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.mem_cgroup*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %5 = call i64 (...) @mem_cgroup_disabled()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %2, align 8
  br label %44

8:                                                ; preds = %1
  %9 = call i32 (...) @rcu_read_lock()
  br label %10

10:                                               ; preds = %35, %8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %12 = icmp ne %struct.mm_struct* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load %struct.mem_cgroup*, %struct.mem_cgroup** @root_mem_cgroup, align 8
  store %struct.mem_cgroup* %18, %struct.mem_cgroup** %4, align 8
  br label %34

19:                                               ; preds = %10
  %20 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rcu_dereference(i32 %22)
  %24 = call %struct.mem_cgroup* @mem_cgroup_from_task(i32 %23)
  store %struct.mem_cgroup* %24, %struct.mem_cgroup** %4, align 8
  %25 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %26 = icmp ne %struct.mem_cgroup* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load %struct.mem_cgroup*, %struct.mem_cgroup** @root_mem_cgroup, align 8
  store %struct.mem_cgroup* %32, %struct.mem_cgroup** %4, align 8
  br label %33

33:                                               ; preds = %31, %19
  br label %34

34:                                               ; preds = %33, %17
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %37 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %36, i32 0, i32 0
  %38 = call i32 @css_tryget_online(i32* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %10, label %41

41:                                               ; preds = %35
  %42 = call i32 (...) @rcu_read_unlock()
  %43 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  store %struct.mem_cgroup* %43, %struct.mem_cgroup** %2, align 8
  br label %44

44:                                               ; preds = %41, %7
  %45 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  ret %struct.mem_cgroup* %45
}

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_task(i32) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i32 @css_tryget_online(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
