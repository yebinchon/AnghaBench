; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c___hfsplus_ext_cache_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c___hfsplus_ext_cache_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_find_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.hfsplus_inode_info = type { i32, i64, i64, i32, i32 }

@HFSPLUS_EXT_DIRTY = common dso_local global i32 0, align 4
@HFSPLUS_TYPE_RSRC = common dso_local global i32 0, align 4
@HFSPLUS_TYPE_DATA = common dso_local global i32 0, align 4
@HFSPLUS_EXT_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfs_find_data*, %struct.inode*, i32)* @__hfsplus_ext_cache_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hfsplus_ext_cache_extent(%struct.hfs_find_data* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfs_find_data*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfsplus_inode_info*, align 8
  %9 = alloca i32, align 4
  store %struct.hfs_find_data* %0, %struct.hfs_find_data** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = call %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode* %10)
  store %struct.hfsplus_inode_info* %11, %struct.hfsplus_inode_info** %8, align 8
  %12 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %13 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %12, i32 0, i32 4
  %14 = call i32 @mutex_is_locked(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %20 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HFSPLUS_EXT_DIRTY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %28 = call i32 @__hfsplus_ext_write_extent(%struct.inode* %26, %struct.hfs_find_data* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %86

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %36 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %37 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = call i64 @HFSPLUS_IS_RSRC(%struct.inode* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* @HFSPLUS_TYPE_RSRC, align 4
  br label %50

48:                                               ; preds = %34
  %49 = load i32, i32* @HFSPLUS_TYPE_DATA, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = call i32 @__hfsplus_ext_read_extent(%struct.hfs_find_data* %35, i32 %38, i32 %41, i32 %42, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %50
  %56 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %57 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @be32_to_cpu(i32 %61)
  %63 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %64 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %66 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @hfsplus_ext_block_count(i32 %67)
  %69 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %70 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  br label %84

71:                                               ; preds = %50
  %72 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %73 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %75 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* @HFSPLUS_EXT_DIRTY, align 4
  %77 = load i32, i32* @HFSPLUS_EXT_NEW, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %8, align 8
  %81 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %71, %55
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %31
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @__hfsplus_ext_write_extent(%struct.inode*, %struct.hfs_find_data*) #1

declare dso_local i32 @__hfsplus_ext_read_extent(%struct.hfs_find_data*, i32, i32, i32, i32) #1

declare dso_local i64 @HFSPLUS_IS_RSRC(%struct.inode*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @hfsplus_ext_block_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
