; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_workingset.c_workingset_refault.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_workingset.c_workingset_refault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.pglist_data = type { i32 }
%struct.mem_cgroup = type { i32 }
%struct.lruvec = type { i32 }

@LRU_ACTIVE_FILE = common dso_local global i32 0, align 4
@MAX_NR_ZONES = common dso_local global i32 0, align 4
@EVICTION_MASK = common dso_local global i64 0, align 8
@WORKINGSET_REFAULT = common dso_local global i32 0, align 4
@WORKINGSET_ACTIVATE = common dso_local global i32 0, align 4
@WORKINGSET_RESTORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workingset_refault(%struct.page* %0, i8* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pglist_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mem_cgroup*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lruvec*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @unpack_shadow(i8* %14, i32* %13, %struct.pglist_data** %6, i64* %9, i32* %12)
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load i32, i32* %13, align 4
  %18 = call %struct.mem_cgroup* @mem_cgroup_from_id(i32 %17)
  store %struct.mem_cgroup* %18, %struct.mem_cgroup** %8, align 8
  %19 = call i32 (...) @mem_cgroup_disabled()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %23 = icmp ne %struct.mem_cgroup* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %66

25:                                               ; preds = %21, %2
  %26 = load %struct.pglist_data*, %struct.pglist_data** %6, align 8
  %27 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %28 = call %struct.lruvec* @mem_cgroup_lruvec(%struct.pglist_data* %26, %struct.mem_cgroup* %27)
  store %struct.lruvec* %28, %struct.lruvec** %10, align 8
  %29 = load %struct.lruvec*, %struct.lruvec** %10, align 8
  %30 = getelementptr inbounds %struct.lruvec, %struct.lruvec* %29, i32 0, i32 0
  %31 = call i64 @atomic_long_read(i32* %30)
  store i64 %31, i64* %11, align 8
  %32 = load %struct.lruvec*, %struct.lruvec** %10, align 8
  %33 = load i32, i32* @LRU_ACTIVE_FILE, align 4
  %34 = load i32, i32* @MAX_NR_ZONES, align 4
  %35 = call i64 @lruvec_lru_size(%struct.lruvec* %32, i32 %33, i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %9, align 8
  %38 = sub i64 %36, %37
  %39 = load i64, i64* @EVICTION_MASK, align 8
  %40 = and i64 %38, %39
  store i64 %40, i64* %5, align 8
  %41 = load %struct.lruvec*, %struct.lruvec** %10, align 8
  %42 = load i32, i32* @WORKINGSET_REFAULT, align 4
  %43 = call i32 @inc_lruvec_state(%struct.lruvec* %41, i32 %42)
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %25
  br label %66

48:                                               ; preds = %25
  %49 = load %struct.page*, %struct.page** %3, align 8
  %50 = call i32 @SetPageActive(%struct.page* %49)
  %51 = load %struct.lruvec*, %struct.lruvec** %10, align 8
  %52 = getelementptr inbounds %struct.lruvec, %struct.lruvec* %51, i32 0, i32 0
  %53 = call i32 @atomic_long_inc(i32* %52)
  %54 = load %struct.lruvec*, %struct.lruvec** %10, align 8
  %55 = load i32, i32* @WORKINGSET_ACTIVATE, align 4
  %56 = call i32 @inc_lruvec_state(%struct.lruvec* %54, i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %48
  %60 = load %struct.page*, %struct.page** %3, align 8
  %61 = call i32 @SetPageWorkingset(%struct.page* %60)
  %62 = load %struct.lruvec*, %struct.lruvec** %10, align 8
  %63 = load i32, i32* @WORKINGSET_RESTORE, align 4
  %64 = call i32 @inc_lruvec_state(%struct.lruvec* %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %48
  br label %66

66:                                               ; preds = %65, %47, %24
  %67 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @unpack_shadow(i8*, i32*, %struct.pglist_data**, i64*, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_id(i32) #1

declare dso_local i32 @mem_cgroup_disabled(...) #1

declare dso_local %struct.lruvec* @mem_cgroup_lruvec(%struct.pglist_data*, %struct.mem_cgroup*) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i64 @lruvec_lru_size(%struct.lruvec*, i32, i32) #1

declare dso_local i32 @inc_lruvec_state(%struct.lruvec*, i32) #1

declare dso_local i32 @SetPageActive(%struct.page*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @SetPageWorkingset(%struct.page*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
