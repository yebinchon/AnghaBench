; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c_hfsplus_ext_read_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c_hfsplus_ext_read_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.hfsplus_inode_info = type { i64, i64 }
%struct.hfs_find_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64)* @hfsplus_ext_read_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_ext_read_extent(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hfsplus_inode_info*, align 8
  %7 = alloca %struct.hfs_find_data, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode* %9)
  store %struct.hfsplus_inode_info* %10, %struct.hfsplus_inode_info** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %6, align 8
  %13 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %6, align 8
  %19 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %6, align 8
  %22 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = icmp slt i64 %17, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %44

27:                                               ; preds = %16, %2
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_2__* @HFSPLUS_SB(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @hfs_find_init(i32 %33, %struct.hfs_find_data* %7)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %27
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @__hfsplus_ext_cache_extent(%struct.hfs_find_data* %7, %struct.inode* %38, i64 %39)
  store i32 %40, i32* %8, align 4
  %41 = call i32 @hfs_find_exit(%struct.hfs_find_data* %7)
  br label %42

42:                                               ; preds = %37, %27
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %26
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_2__* @HFSPLUS_SB(i32) #1

declare dso_local i32 @__hfsplus_ext_cache_extent(%struct.hfs_find_data*, %struct.inode*, i64) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
