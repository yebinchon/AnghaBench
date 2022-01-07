; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c___hfsplus_ext_write_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c___hfsplus_ext_write_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.hfs_find_data = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.hfsplus_inode_info = type { i32, i32, i32, i32, i32 }

@HFSPLUS_TYPE_RSRC = common dso_local global i32 0, align 4
@HFSPLUS_TYPE_DATA = common dso_local global i32 0, align 4
@hfs_find_rec_by_key = common dso_local global i32 0, align 4
@HFSPLUS_EXT_NEW = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@HFSPLUS_EXT_DIRTY = common dso_local global i32 0, align 4
@HFSPLUS_I_EXT_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.hfs_find_data*)* @__hfsplus_ext_write_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hfsplus_ext_write_extent(%struct.inode* %0, %struct.hfs_find_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.hfs_find_data*, align 8
  %6 = alloca %struct.hfsplus_inode_info*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.hfs_find_data* %1, %struct.hfs_find_data** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode* %8)
  store %struct.hfsplus_inode_info* %9, %struct.hfsplus_inode_info** %6, align 8
  %10 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %6, align 8
  %11 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %10, i32 0, i32 4
  %12 = call i32 @mutex_is_locked(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %18 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %6, align 8
  %24 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call i64 @HFSPLUS_IS_RSRC(%struct.inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @HFSPLUS_TYPE_RSRC, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @HFSPLUS_TYPE_DATA, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = call i32 @hfsplus_ext_build_key(i32 %19, i32 %22, i32 %25, i32 %34)
  %36 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %37 = load i32, i32* @hfs_find_rec_by_key, align 4
  %38 = call i32 @hfs_brec_find(%struct.hfs_find_data* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %6, align 8
  %40 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HFSPLUS_EXT_NEW, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %81

45:                                               ; preds = %33
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %111

52:                                               ; preds = %45
  %53 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %54 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %57 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  %62 = call i32 @hfs_bmap_reserve(%struct.TYPE_2__* %55, i64 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %111

67:                                               ; preds = %52
  %68 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %69 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %6, align 8
  %70 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %68, i32 %71, i32 4)
  %73 = load i32, i32* @HFSPLUS_EXT_DIRTY, align 4
  %74 = load i32, i32* @HFSPLUS_EXT_NEW, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %6, align 8
  %78 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %106

81:                                               ; preds = %33
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %111

86:                                               ; preds = %81
  %87 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %88 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %6, align 8
  %91 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %94 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.hfs_find_data*, %struct.hfs_find_data** %5, align 8
  %97 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @hfs_bnode_write(i32 %89, i32 %92, i32 %95, i32 %98)
  %100 = load i32, i32* @HFSPLUS_EXT_DIRTY, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %6, align 8
  %103 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %86, %67
  %107 = load i32, i32* @HFSPLUS_I_EXT_DIRTY, align 4
  %108 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %6, align 8
  %109 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %108, i32 0, i32 1
  %110 = call i32 @set_bit(i32 %107, i32* %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %106, %84, %65, %50
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @hfsplus_ext_build_key(i32, i32, i32, i32) #1

declare dso_local i64 @HFSPLUS_IS_RSRC(%struct.inode*) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*, i32) #1

declare dso_local i32 @hfs_bmap_reserve(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @hfs_brec_insert(%struct.hfs_find_data*, i32, i32) #1

declare dso_local i32 @hfs_bnode_write(i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
