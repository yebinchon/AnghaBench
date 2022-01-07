; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_ovs_flow_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_table.c_ovs_flow_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow = type { i32, i32, i32* }
%struct.sw_flow_stats = type { i32 }

@flow_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@flow_stats_cache = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sw_flow* @ovs_flow_alloc() #0 {
  %1 = alloca %struct.sw_flow*, align 8
  %2 = alloca %struct.sw_flow*, align 8
  %3 = alloca %struct.sw_flow_stats*, align 8
  %4 = load i32, i32* @flow_cache, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.sw_flow* @kmem_cache_zalloc(i32 %4, i32 %5)
  store %struct.sw_flow* %6, %struct.sw_flow** %2, align 8
  %7 = load %struct.sw_flow*, %struct.sw_flow** %2, align 8
  %8 = icmp ne %struct.sw_flow* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.sw_flow* @ERR_PTR(i32 %11)
  store %struct.sw_flow* %12, %struct.sw_flow** %1, align 8
  br label %53

13:                                               ; preds = %0
  %14 = load %struct.sw_flow*, %struct.sw_flow** %2, align 8
  %15 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 8
  %16 = load i32, i32* @flow_stats_cache, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* @__GFP_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @node_online(i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @NUMA_NO_NODE, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 0, %22 ], [ %24, %23 ]
  %27 = call %struct.sw_flow_stats* @kmem_cache_alloc_node(i32 %16, i32 %19, i32 %26)
  store %struct.sw_flow_stats* %27, %struct.sw_flow_stats** %3, align 8
  %28 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %3, align 8
  %29 = icmp ne %struct.sw_flow_stats* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %46

31:                                               ; preds = %25
  %32 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %3, align 8
  %33 = getelementptr inbounds %struct.sw_flow_stats, %struct.sw_flow_stats* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.sw_flow*, %struct.sw_flow** %2, align 8
  %36 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sw_flow_stats*, %struct.sw_flow_stats** %3, align 8
  %41 = call i32 @RCU_INIT_POINTER(i32 %39, %struct.sw_flow_stats* %40)
  %42 = load %struct.sw_flow*, %struct.sw_flow** %2, align 8
  %43 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %42, i32 0, i32 1
  %44 = call i32 @cpumask_set_cpu(i32 0, i32* %43)
  %45 = load %struct.sw_flow*, %struct.sw_flow** %2, align 8
  store %struct.sw_flow* %45, %struct.sw_flow** %1, align 8
  br label %53

46:                                               ; preds = %30
  %47 = load i32, i32* @flow_cache, align 4
  %48 = load %struct.sw_flow*, %struct.sw_flow** %2, align 8
  %49 = call i32 @kmem_cache_free(i32 %47, %struct.sw_flow* %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.sw_flow* @ERR_PTR(i32 %51)
  store %struct.sw_flow* %52, %struct.sw_flow** %1, align 8
  br label %53

53:                                               ; preds = %46, %31, %9
  %54 = load %struct.sw_flow*, %struct.sw_flow** %1, align 8
  ret %struct.sw_flow* %54
}

declare dso_local %struct.sw_flow* @kmem_cache_zalloc(i32, i32) #1

declare dso_local %struct.sw_flow* @ERR_PTR(i32) #1

declare dso_local %struct.sw_flow_stats* @kmem_cache_alloc_node(i32, i32, i32) #1

declare dso_local i64 @node_online(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.sw_flow_stats*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.sw_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
