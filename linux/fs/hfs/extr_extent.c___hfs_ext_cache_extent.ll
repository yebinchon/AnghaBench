; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_extent.c___hfs_ext_cache_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_extent.c___hfs_ext_cache_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_find_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i32 }

@HFS_FLG_EXT_DIRTY = common dso_local global i32 0, align 4
@HFS_FK_RSRC = common dso_local global i32 0, align 4
@HFS_FK_DATA = common dso_local global i32 0, align 4
@HFS_FLG_EXT_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfs_find_data*, %struct.inode*, i32)* @__hfs_ext_cache_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hfs_ext_cache_extent(%struct.hfs_find_data* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfs_find_data*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfs_find_data* %0, %struct.hfs_find_data** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.inode*, %struct.inode** %6, align 8
  %10 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @HFS_FLG_EXT_DIRTY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %19 = call i32 @__hfs_ext_write_extent(%struct.inode* %17, %struct.hfs_find_data* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %84

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call i64 @HFS_IS_RSRC(%struct.inode* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* @HFS_FK_RSRC, align 4
  br label %42

40:                                               ; preds = %25
  %41 = load i32, i32* @HFS_FK_DATA, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = call i32 @__hfs_ext_read_extent(%struct.hfs_find_data* %26, i32 %30, i32 %33, i32 %34, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %42
  %48 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %49 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @be16_to_cpu(i32 %53)
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i64 %54, i64* %57, align 8
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @hfs_ext_block_count(i32 %61)
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i64 %62, i64* %65, align 8
  br label %82

66:                                               ; preds = %42
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @HFS_FLG_EXT_DIRTY, align 4
  %74 = load i32, i32* @HFS_FLG_EXT_NEW, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %76
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %66, %47
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %22
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.TYPE_6__* @HFS_I(%struct.inode*) #1

declare dso_local i32 @__hfs_ext_write_extent(%struct.inode*, %struct.hfs_find_data*) #1

declare dso_local i32 @__hfs_ext_read_extent(%struct.hfs_find_data*, i32, i32, i32, i32) #1

declare dso_local i64 @HFS_IS_RSRC(%struct.inode*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @hfs_ext_block_count(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
