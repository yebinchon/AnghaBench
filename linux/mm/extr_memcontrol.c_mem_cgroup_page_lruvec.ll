; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_page_lruvec.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_page_lruvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.lruvec = type { %struct.pglist_data* }
%struct.page = type { %struct.mem_cgroup* }
%struct.pglist_data = type { %struct.lruvec }
%struct.mem_cgroup_per_node = type { %struct.lruvec }

@root_mem_cgroup = common dso_local global %struct.mem_cgroup* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lruvec* @mem_cgroup_page_lruvec(%struct.page* %0, %struct.pglist_data* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.pglist_data*, align 8
  %5 = alloca %struct.mem_cgroup_per_node*, align 8
  %6 = alloca %struct.mem_cgroup*, align 8
  %7 = alloca %struct.lruvec*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.pglist_data* %1, %struct.pglist_data** %4, align 8
  %8 = call i64 (...) @mem_cgroup_disabled()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.pglist_data*, %struct.pglist_data** %4, align 8
  %12 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %11, i32 0, i32 0
  store %struct.lruvec* %12, %struct.lruvec** %7, align 8
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 0
  %16 = load %struct.mem_cgroup*, %struct.mem_cgroup** %15, align 8
  store %struct.mem_cgroup* %16, %struct.mem_cgroup** %6, align 8
  %17 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %18 = icmp ne %struct.mem_cgroup* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load %struct.mem_cgroup*, %struct.mem_cgroup** @root_mem_cgroup, align 8
  store %struct.mem_cgroup* %20, %struct.mem_cgroup** %6, align 8
  br label %21

21:                                               ; preds = %19, %13
  %22 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call %struct.mem_cgroup_per_node* @mem_cgroup_page_nodeinfo(%struct.mem_cgroup* %22, %struct.page* %23)
  store %struct.mem_cgroup_per_node* %24, %struct.mem_cgroup_per_node** %5, align 8
  %25 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %5, align 8
  %26 = getelementptr inbounds %struct.mem_cgroup_per_node, %struct.mem_cgroup_per_node* %25, i32 0, i32 0
  store %struct.lruvec* %26, %struct.lruvec** %7, align 8
  br label %27

27:                                               ; preds = %21, %10
  %28 = load %struct.lruvec*, %struct.lruvec** %7, align 8
  %29 = getelementptr inbounds %struct.lruvec, %struct.lruvec* %28, i32 0, i32 0
  %30 = load %struct.pglist_data*, %struct.pglist_data** %29, align 8
  %31 = load %struct.pglist_data*, %struct.pglist_data** %4, align 8
  %32 = icmp ne %struct.pglist_data* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.pglist_data*, %struct.pglist_data** %4, align 8
  %38 = load %struct.lruvec*, %struct.lruvec** %7, align 8
  %39 = getelementptr inbounds %struct.lruvec, %struct.lruvec* %38, i32 0, i32 0
  store %struct.pglist_data* %37, %struct.pglist_data** %39, align 8
  br label %40

40:                                               ; preds = %36, %27
  %41 = load %struct.lruvec*, %struct.lruvec** %7, align 8
  ret %struct.lruvec* %41
}

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local %struct.mem_cgroup_per_node* @mem_cgroup_page_nodeinfo(%struct.mem_cgroup*, %struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
