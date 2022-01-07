; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.h_jffs2_raw_ref_to_ic.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.h_jffs2_raw_ref_to_ic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_inode_cache = type { i32 }
%struct.jffs2_raw_node_ref = type { %struct.jffs2_raw_node_ref* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.jffs2_inode_cache* (%struct.jffs2_raw_node_ref*)* @jffs2_raw_ref_to_ic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.jffs2_inode_cache* @jffs2_raw_ref_to_ic(%struct.jffs2_raw_node_ref* %0) #0 {
  %2 = alloca %struct.jffs2_raw_node_ref*, align 8
  store %struct.jffs2_raw_node_ref* %0, %struct.jffs2_raw_node_ref** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %2, align 8
  %5 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %4, i32 0, i32 0
  %6 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %5, align 8
  %7 = icmp ne %struct.jffs2_raw_node_ref* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %2, align 8
  %10 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %9, i32 0, i32 0
  %11 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %10, align 8
  store %struct.jffs2_raw_node_ref* %11, %struct.jffs2_raw_node_ref** %2, align 8
  br label %3

12:                                               ; preds = %3
  %13 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %2, align 8
  %14 = bitcast %struct.jffs2_raw_node_ref* %13 to %struct.jffs2_inode_cache*
  ret %struct.jffs2_inode_cache* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
