; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_memcg_set_shrinker_bit.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_memcg_set_shrinker_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.memcg_shrinker_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memcg_set_shrinker_bit(%struct.mem_cgroup* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.memcg_shrinker_map*, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %3
  %11 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %12 = icmp ne %struct.mem_cgroup* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %15 = call i32 @mem_cgroup_is_root(%struct.mem_cgroup* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %13
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %20 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.memcg_shrinker_map* @rcu_dereference(i32 %27)
  store %struct.memcg_shrinker_map* %28, %struct.memcg_shrinker_map** %7, align 8
  %29 = call i32 (...) @smp_mb__before_atomic()
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.memcg_shrinker_map*, %struct.memcg_shrinker_map** %7, align 8
  %32 = getelementptr inbounds %struct.memcg_shrinker_map, %struct.memcg_shrinker_map* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @set_bit(i32 %30, i32 %33)
  %35 = call i32 (...) @rcu_read_unlock()
  br label %36

36:                                               ; preds = %17, %13, %10, %3
  ret void
}

declare dso_local i32 @mem_cgroup_is_root(%struct.mem_cgroup*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.memcg_shrinker_map* @rcu_dereference(i32) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
