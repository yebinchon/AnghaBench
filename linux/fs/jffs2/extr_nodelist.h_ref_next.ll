; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.h_ref_next.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.h_ref_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_raw_node_ref = type { i64, %struct.jffs2_raw_node_ref* }

@REF_LINK_NODE = common dso_local global i64 0, align 8
@REF_EMPTY_NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.jffs2_raw_node_ref* (%struct.jffs2_raw_node_ref*)* @ref_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.jffs2_raw_node_ref* @ref_next(%struct.jffs2_raw_node_ref* %0) #0 {
  %2 = alloca %struct.jffs2_raw_node_ref*, align 8
  %3 = alloca %struct.jffs2_raw_node_ref*, align 8
  store %struct.jffs2_raw_node_ref* %0, %struct.jffs2_raw_node_ref** %3, align 8
  %4 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %3, align 8
  %5 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %4, i32 1
  store %struct.jffs2_raw_node_ref* %5, %struct.jffs2_raw_node_ref** %3, align 8
  %6 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %3, align 8
  %7 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @REF_LINK_NODE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %3, align 8
  %13 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %12, i32 0, i32 1
  %14 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %13, align 8
  store %struct.jffs2_raw_node_ref* %14, %struct.jffs2_raw_node_ref** %3, align 8
  %15 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %3, align 8
  %16 = icmp ne %struct.jffs2_raw_node_ref* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %3, align 8
  store %struct.jffs2_raw_node_ref* %18, %struct.jffs2_raw_node_ref** %2, align 8
  br label %29

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %3, align 8
  %22 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REF_EMPTY_NODE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store %struct.jffs2_raw_node_ref* null, %struct.jffs2_raw_node_ref** %2, align 8
  br label %29

27:                                               ; preds = %20
  %28 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %3, align 8
  store %struct.jffs2_raw_node_ref* %28, %struct.jffs2_raw_node_ref** %2, align 8
  br label %29

29:                                               ; preds = %27, %26, %17
  %30 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %2, align 8
  ret %struct.jffs2_raw_node_ref* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
