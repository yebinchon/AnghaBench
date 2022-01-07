; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_workingset.c_workingset_activation.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_workingset.c_workingset_activation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mem_cgroup = type { i32 }
%struct.lruvec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workingset_activation(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca %struct.lruvec*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.page*, %struct.page** %2, align 8
  %7 = call %struct.mem_cgroup* @page_memcg_rcu(%struct.page* %6)
  store %struct.mem_cgroup* %7, %struct.mem_cgroup** %3, align 8
  %8 = call i32 (...) @mem_cgroup_disabled()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %12 = icmp ne %struct.mem_cgroup* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  br label %22

14:                                               ; preds = %10, %1
  %15 = load %struct.page*, %struct.page** %2, align 8
  %16 = call i32 @page_pgdat(%struct.page* %15)
  %17 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %18 = call %struct.lruvec* @mem_cgroup_lruvec(i32 %16, %struct.mem_cgroup* %17)
  store %struct.lruvec* %18, %struct.lruvec** %4, align 8
  %19 = load %struct.lruvec*, %struct.lruvec** %4, align 8
  %20 = getelementptr inbounds %struct.lruvec, %struct.lruvec* %19, i32 0, i32 0
  %21 = call i32 @atomic_long_inc(i32* %20)
  br label %22

22:                                               ; preds = %14, %13
  %23 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mem_cgroup* @page_memcg_rcu(%struct.page*) #1

declare dso_local i32 @mem_cgroup_disabled(...) #1

declare dso_local %struct.lruvec* @mem_cgroup_lruvec(i32, %struct.mem_cgroup*) #1

declare dso_local i32 @page_pgdat(%struct.page*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
