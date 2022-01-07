; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_summary.c_sum_link_node_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_summary.c_sum_link_node_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_raw_node_ref = type { i32 }
%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_eraseblock = type { i32, i64 }
%struct.jffs2_inode_cache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.jffs2_raw_node_ref* (%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, i32, i32, %struct.jffs2_inode_cache*)* @sum_link_node_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.jffs2_raw_node_ref* @sum_link_node_ref(%struct.jffs2_sb_info* %0, %struct.jffs2_eraseblock* %1, i32 %2, i32 %3, %struct.jffs2_inode_cache* %4) #0 {
  %6 = alloca %struct.jffs2_sb_info*, align 8
  %7 = alloca %struct.jffs2_eraseblock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.jffs2_inode_cache*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %6, align 8
  store %struct.jffs2_eraseblock* %1, %struct.jffs2_eraseblock** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.jffs2_inode_cache* %4, %struct.jffs2_inode_cache** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = and i32 %11, -4
  %13 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %14 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %17 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %15, %18
  %20 = icmp sgt i32 %12, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %5
  %22 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %23 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, -4
  %26 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %27 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %30 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %28, %31
  %33 = sub nsw i32 %25, %32
  %34 = call i32 @jffs2_scan_dirty_space(%struct.jffs2_sb_info* %22, %struct.jffs2_eraseblock* %23, i32 %33)
  br label %35

35:                                               ; preds = %21, %5
  %36 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %37 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %38 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %7, align 8
  %39 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %10, align 8
  %46 = call %struct.jffs2_raw_node_ref* @jffs2_link_node_ref(%struct.jffs2_sb_info* %36, %struct.jffs2_eraseblock* %37, i64 %43, i32 %44, %struct.jffs2_inode_cache* %45)
  ret %struct.jffs2_raw_node_ref* %46
}

declare dso_local i32 @jffs2_scan_dirty_space(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, i32) #1

declare dso_local %struct.jffs2_raw_node_ref* @jffs2_link_node_ref(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, i64, i32, %struct.jffs2_inode_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
