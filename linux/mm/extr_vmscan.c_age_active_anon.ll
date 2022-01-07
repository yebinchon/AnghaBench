; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_age_active_anon.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_age_active_anon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pglist_data = type { i32 }
%struct.scan_control = type { i32 }
%struct.mem_cgroup = type { i32 }
%struct.lruvec = type { i32 }

@total_swap_pages = common dso_local global i32 0, align 4
@SWAP_CLUSTER_MAX = common dso_local global i32 0, align 4
@LRU_ACTIVE_ANON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pglist_data*, %struct.scan_control*)* @age_active_anon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_active_anon(%struct.pglist_data* %0, %struct.scan_control* %1) #0 {
  %3 = alloca %struct.pglist_data*, align 8
  %4 = alloca %struct.scan_control*, align 8
  %5 = alloca %struct.mem_cgroup*, align 8
  %6 = alloca %struct.lruvec*, align 8
  store %struct.pglist_data* %0, %struct.pglist_data** %3, align 8
  store %struct.scan_control* %1, %struct.scan_control** %4, align 8
  %7 = load i32, i32* @total_swap_pages, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %32

10:                                               ; preds = %2
  %11 = call %struct.mem_cgroup* @mem_cgroup_iter(i32* null, %struct.mem_cgroup* null, i32* null)
  store %struct.mem_cgroup* %11, %struct.mem_cgroup** %5, align 8
  br label %12

12:                                               ; preds = %29, %10
  %13 = load %struct.pglist_data*, %struct.pglist_data** %3, align 8
  %14 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %15 = call %struct.lruvec* @mem_cgroup_lruvec(%struct.pglist_data* %13, %struct.mem_cgroup* %14)
  store %struct.lruvec* %15, %struct.lruvec** %6, align 8
  %16 = load %struct.lruvec*, %struct.lruvec** %6, align 8
  %17 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %18 = call i64 @inactive_list_is_low(%struct.lruvec* %16, i32 0, %struct.scan_control* %17, i32 1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load i32, i32* @SWAP_CLUSTER_MAX, align 4
  %22 = load %struct.lruvec*, %struct.lruvec** %6, align 8
  %23 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %24 = load i32, i32* @LRU_ACTIVE_ANON, align 4
  %25 = call i32 @shrink_active_list(i32 %21, %struct.lruvec* %22, %struct.scan_control* %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %12
  %27 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %28 = call %struct.mem_cgroup* @mem_cgroup_iter(i32* null, %struct.mem_cgroup* %27, i32* null)
  store %struct.mem_cgroup* %28, %struct.mem_cgroup** %5, align 8
  br label %29

29:                                               ; preds = %26
  %30 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %31 = icmp ne %struct.mem_cgroup* %30, null
  br i1 %31, label %12, label %32

32:                                               ; preds = %9, %29
  ret void
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_iter(i32*, %struct.mem_cgroup*, i32*) #1

declare dso_local %struct.lruvec* @mem_cgroup_lruvec(%struct.pglist_data*, %struct.mem_cgroup*) #1

declare dso_local i64 @inactive_list_is_low(%struct.lruvec*, i32, %struct.scan_control*, i32) #1

declare dso_local i32 @shrink_active_list(i32, %struct.lruvec*, %struct.scan_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
