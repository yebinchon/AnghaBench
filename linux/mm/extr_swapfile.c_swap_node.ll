; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_node.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { %struct.TYPE_7__*, %struct.block_device* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.block_device* }
%struct.block_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_info_struct*)* @swap_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_node(%struct.swap_info_struct* %0) #0 {
  %2 = alloca %struct.swap_info_struct*, align 8
  %3 = alloca %struct.block_device*, align 8
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %2, align 8
  %4 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  %5 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %4, i32 0, i32 1
  %6 = load %struct.block_device*, %struct.block_device** %5, align 8
  %7 = icmp ne %struct.block_device* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  %10 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %9, i32 0, i32 1
  %11 = load %struct.block_device*, %struct.block_device** %10, align 8
  store %struct.block_device* %11, %struct.block_device** %3, align 8
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  %14 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.block_device*, %struct.block_device** %20, align 8
  store %struct.block_device* %21, %struct.block_device** %3, align 8
  br label %22

22:                                               ; preds = %12, %8
  %23 = load %struct.block_device*, %struct.block_device** %3, align 8
  %24 = icmp ne %struct.block_device* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.block_device*, %struct.block_device** %3, align 8
  %27 = getelementptr inbounds %struct.block_device, %struct.block_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @NUMA_NO_NODE, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi i32 [ %30, %25 ], [ %32, %31 ]
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
