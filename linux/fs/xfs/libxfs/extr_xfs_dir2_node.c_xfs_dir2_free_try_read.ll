; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_free_try_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_free_try_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { i32 }
%struct.xfs_buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_trans*, %struct.xfs_inode*, i32, %struct.xfs_buf**)* @xfs_dir2_free_try_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dir2_free_try_read(%struct.xfs_trans* %0, %struct.xfs_inode* %1, i32 %2, %struct.xfs_buf** %3) #0 {
  %5 = alloca %struct.xfs_trans*, align 8
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_buf**, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %5, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.xfs_buf** %3, %struct.xfs_buf*** %8, align 8
  %9 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %10 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.xfs_buf**, %struct.xfs_buf*** %8, align 8
  %13 = call i32 @__xfs_dir3_free_read(%struct.xfs_trans* %9, %struct.xfs_inode* %10, i32 %11, i32 -2, %struct.xfs_buf** %12)
  ret i32 %13
}

declare dso_local i32 @__xfs_dir3_free_read(%struct.xfs_trans*, %struct.xfs_inode*, i32, i32, %struct.xfs_buf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
