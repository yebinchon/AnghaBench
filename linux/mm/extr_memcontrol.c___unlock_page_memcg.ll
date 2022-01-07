; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c___unlock_page_memcg.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c___unlock_page_memcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i64, i32, i32* }

@current = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__unlock_page_memcg(%struct.mem_cgroup* %0) #0 {
  %2 = alloca %struct.mem_cgroup*, align 8
  %3 = alloca i64, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %2, align 8
  %4 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %5 = icmp ne %struct.mem_cgroup* %4, null
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %8 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = load i32*, i32** @current, align 8
  %11 = icmp eq i32* %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %14 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %3, align 8
  %16 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %17 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %19 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %21 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %20, i32 0, i32 1
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  br label %24

24:                                               ; preds = %12, %6, %1
  %25 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
