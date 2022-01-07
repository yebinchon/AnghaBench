; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_readinode.c_jffs2_first_valid_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_readinode.c_jffs2_first_valid_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_raw_node_ref = type { %struct.jffs2_raw_node_ref* }

@.str = private unnamed_addr constant [40 x i8] c"node at 0x%08x is obsoleted. Ignoring.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.jffs2_raw_node_ref* (%struct.jffs2_raw_node_ref*)* @jffs2_first_valid_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.jffs2_raw_node_ref* @jffs2_first_valid_node(%struct.jffs2_raw_node_ref* %0) #0 {
  %2 = alloca %struct.jffs2_raw_node_ref*, align 8
  %3 = alloca %struct.jffs2_raw_node_ref*, align 8
  store %struct.jffs2_raw_node_ref* %0, %struct.jffs2_raw_node_ref** %3, align 8
  br label %4

4:                                                ; preds = %20, %1
  %5 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %3, align 8
  %6 = icmp ne %struct.jffs2_raw_node_ref* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %3, align 8
  %9 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %8, i32 0, i32 0
  %10 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %9, align 8
  %11 = icmp ne %struct.jffs2_raw_node_ref* %10, null
  br label %12

12:                                               ; preds = %7, %4
  %13 = phi i1 [ false, %4 ], [ %11, %7 ]
  br i1 %13, label %14, label %27

14:                                               ; preds = %12
  %15 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %3, align 8
  %16 = call i32 @ref_obsolete(%struct.jffs2_raw_node_ref* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %3, align 8
  store %struct.jffs2_raw_node_ref* %19, %struct.jffs2_raw_node_ref** %2, align 8
  br label %28

20:                                               ; preds = %14
  %21 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %3, align 8
  %22 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %21)
  %23 = call i32 @dbg_noderef(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %3, align 8
  %25 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %24, i32 0, i32 0
  %26 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %25, align 8
  store %struct.jffs2_raw_node_ref* %26, %struct.jffs2_raw_node_ref** %3, align 8
  br label %4

27:                                               ; preds = %12
  store %struct.jffs2_raw_node_ref* null, %struct.jffs2_raw_node_ref** %2, align 8
  br label %28

28:                                               ; preds = %27, %18
  %29 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %2, align 8
  ret %struct.jffs2_raw_node_ref* %29
}

declare dso_local i32 @ref_obsolete(%struct.jffs2_raw_node_ref*) #1

declare dso_local i32 @dbg_noderef(i8*, i32) #1

declare dso_local i32 @ref_offset(%struct.jffs2_raw_node_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
