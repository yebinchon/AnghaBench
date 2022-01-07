; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c___mod_lruvec_slab_state.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c___mod_lruvec_slab_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.page = type { i32 }
%struct.lruvec = type { i32 }

@root_mem_cgroup = common dso_local global %struct.mem_cgroup* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mod_lruvec_slab_state(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mem_cgroup*, align 8
  %10 = alloca %struct.lruvec*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct.page* @virt_to_head_page(i8* %11)
  store %struct.page* %12, %struct.page** %7, align 8
  %13 = load %struct.page*, %struct.page** %7, align 8
  %14 = call i32* @page_pgdat(%struct.page* %13)
  store i32* %14, i32** %8, align 8
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load %struct.page*, %struct.page** %7, align 8
  %17 = call %struct.mem_cgroup* @memcg_from_slab_page(%struct.page* %16)
  store %struct.mem_cgroup* %17, %struct.mem_cgroup** %9, align 8
  %18 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %19 = icmp ne %struct.mem_cgroup* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %22 = load %struct.mem_cgroup*, %struct.mem_cgroup** @root_mem_cgroup, align 8
  %23 = icmp eq %struct.mem_cgroup* %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %3
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @__mod_node_page_state(i32* %25, i32 %26, i32 %27)
  br label %37

29:                                               ; preds = %20
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %32 = call %struct.lruvec* @mem_cgroup_lruvec(i32* %30, %struct.mem_cgroup* %31)
  store %struct.lruvec* %32, %struct.lruvec** %10, align 8
  %33 = load %struct.lruvec*, %struct.lruvec** %10, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @__mod_lruvec_state(%struct.lruvec* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %24
  %38 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i32* @page_pgdat(%struct.page*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mem_cgroup* @memcg_from_slab_page(%struct.page*) #1

declare dso_local i32 @__mod_node_page_state(i32*, i32, i32) #1

declare dso_local %struct.lruvec* @mem_cgroup_lruvec(i32*, %struct.mem_cgroup*) #1

declare dso_local i32 @__mod_lruvec_state(%struct.lruvec*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
