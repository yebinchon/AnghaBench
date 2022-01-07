; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_workingset.c_workingset_eviction.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_workingset.c_workingset_eviction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.pglist_data = type { i32 }
%struct.mem_cgroup = type { i32 }
%struct.lruvec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @workingset_eviction(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.pglist_data*, align 8
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.lruvec*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %8 = load %struct.page*, %struct.page** %2, align 8
  %9 = call %struct.pglist_data* @page_pgdat(%struct.page* %8)
  store %struct.pglist_data* %9, %struct.pglist_data** %3, align 8
  %10 = load %struct.page*, %struct.page** %2, align 8
  %11 = call %struct.mem_cgroup* @page_memcg(%struct.page* %10)
  store %struct.mem_cgroup* %11, %struct.mem_cgroup** %4, align 8
  %12 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %13 = call i32 @mem_cgroup_id(%struct.mem_cgroup* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.page*, %struct.page** %2, align 8
  %15 = call i32 @PageLRU(%struct.page* %14)
  %16 = load %struct.page*, %struct.page** %2, align 8
  %17 = call i32 @VM_BUG_ON_PAGE(i32 %15, %struct.page* %16)
  %18 = load %struct.page*, %struct.page** %2, align 8
  %19 = call i32 @page_count(%struct.page* %18)
  %20 = load %struct.page*, %struct.page** %2, align 8
  %21 = call i32 @VM_BUG_ON_PAGE(i32 %19, %struct.page* %20)
  %22 = load %struct.page*, %struct.page** %2, align 8
  %23 = call i32 @PageLocked(%struct.page* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.page*, %struct.page** %2, align 8
  %28 = call i32 @VM_BUG_ON_PAGE(i32 %26, %struct.page* %27)
  %29 = load %struct.pglist_data*, %struct.pglist_data** %3, align 8
  %30 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %31 = call %struct.lruvec* @mem_cgroup_lruvec(%struct.pglist_data* %29, %struct.mem_cgroup* %30)
  store %struct.lruvec* %31, %struct.lruvec** %7, align 8
  %32 = load %struct.lruvec*, %struct.lruvec** %7, align 8
  %33 = getelementptr inbounds %struct.lruvec, %struct.lruvec* %32, i32 0, i32 0
  %34 = call i64 @atomic_long_inc_return(i32* %33)
  store i64 %34, i64* %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.pglist_data*, %struct.pglist_data** %3, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.page*, %struct.page** %2, align 8
  %39 = call i32 @PageWorkingset(%struct.page* %38)
  %40 = call i8* @pack_shadow(i32 %35, %struct.pglist_data* %36, i64 %37, i32 %39)
  ret i8* %40
}

declare dso_local %struct.pglist_data* @page_pgdat(%struct.page*) #1

declare dso_local %struct.mem_cgroup* @page_memcg(%struct.page*) #1

declare dso_local i32 @mem_cgroup_id(%struct.mem_cgroup*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLRU(%struct.page*) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local %struct.lruvec* @mem_cgroup_lruvec(%struct.pglist_data*, %struct.mem_cgroup*) #1

declare dso_local i64 @atomic_long_inc_return(i32*) #1

declare dso_local i8* @pack_shadow(i32, %struct.pglist_data*, i64, i32) #1

declare dso_local i32 @PageWorkingset(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
