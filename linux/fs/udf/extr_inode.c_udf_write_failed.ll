; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_write_failed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_write_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i64 }
%struct.udf_inode_info = type { i64, i32 }

@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.address_space*, i64)* @udf_write_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_write_failed(%struct.address_space* %0, i64 %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.udf_inode_info*, align 8
  %7 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.address_space*, %struct.address_space** %3, align 8
  %9 = getelementptr inbounds %struct.address_space, %struct.address_space* %8, i32 0, i32 0
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %11)
  store %struct.udf_inode_info* %12, %struct.udf_inode_info** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %2
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @truncate_pagecache(%struct.inode* %20, i64 %21)
  %23 = load %struct.udf_inode_info*, %struct.udf_inode_info** %6, align 8
  %24 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load %struct.udf_inode_info*, %struct.udf_inode_info** %6, align 8
  %30 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %29, i32 0, i32 1
  %31 = call i32 @down_write(i32* %30)
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = call i32 @udf_clear_extent_cache(%struct.inode* %32)
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call i32 @udf_truncate_extents(%struct.inode* %34)
  %36 = load %struct.udf_inode_info*, %struct.udf_inode_info** %6, align 8
  %37 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %36, i32 0, i32 1
  %38 = call i32 @up_write(i32* %37)
  br label %39

39:                                               ; preds = %28, %19
  br label %40

40:                                               ; preds = %39, %2
  ret void
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i64) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @udf_clear_extent_cache(%struct.inode*) #1

declare dso_local i32 @udf_truncate_extents(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
