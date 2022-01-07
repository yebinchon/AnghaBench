; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_list_lru.c_list_lru_count_one.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_list_lru.c_list_lru_count_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { i32 }
%struct.mem_cgroup = type { i32 }
%struct.list_lru_one = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @list_lru_count_one(%struct.list_lru* %0, i32 %1, %struct.mem_cgroup* %2) #0 {
  %4 = alloca %struct.list_lru*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mem_cgroup*, align 8
  %7 = alloca %struct.list_lru_node*, align 8
  %8 = alloca %struct.list_lru_one*, align 8
  %9 = alloca i64, align 8
  store %struct.list_lru* %0, %struct.list_lru** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mem_cgroup* %2, %struct.mem_cgroup** %6, align 8
  %10 = load %struct.list_lru*, %struct.list_lru** %4, align 8
  %11 = getelementptr inbounds %struct.list_lru, %struct.list_lru* %10, i32 0, i32 0
  %12 = load %struct.list_lru_node*, %struct.list_lru_node** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.list_lru_node, %struct.list_lru_node* %12, i64 %14
  store %struct.list_lru_node* %15, %struct.list_lru_node** %7, align 8
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.list_lru_node*, %struct.list_lru_node** %7, align 8
  %18 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %19 = call i32 @memcg_cache_id(%struct.mem_cgroup* %18)
  %20 = call %struct.list_lru_one* @list_lru_from_memcg_idx(%struct.list_lru_node* %17, i32 %19)
  store %struct.list_lru_one* %20, %struct.list_lru_one** %8, align 8
  %21 = load %struct.list_lru_one*, %struct.list_lru_one** %8, align 8
  %22 = getelementptr inbounds %struct.list_lru_one, %struct.list_lru_one* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = call i32 (...) @rcu_read_unlock()
  %25 = load i64, i64* %9, align 8
  ret i64 %25
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.list_lru_one* @list_lru_from_memcg_idx(%struct.list_lru_node*, i32) #1

declare dso_local i32 @memcg_cache_id(%struct.mem_cgroup*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
