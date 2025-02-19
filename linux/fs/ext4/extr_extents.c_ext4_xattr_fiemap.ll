; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_xattr_fiemap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_xattr_fiemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.fiemap_extent_info = type { i32 }
%struct.ext4_iloc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }

@FIEMAP_EXTENT_LAST = common dso_local global i32 0, align 4
@EXT4_STATE_XATTR = common dso_local global i32 0, align 4
@EXT4_GOOD_OLD_INODE_SIZE = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_DATA_INLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.fiemap_extent_info*)* @ext4_xattr_fiemap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_fiemap(%struct.inode* %0, %struct.fiemap_extent_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.fiemap_extent_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_iloc, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.fiemap_extent_info* %1, %struct.fiemap_extent_info** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @FIEMAP_EXTENT_LAST, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = load i32, i32* @EXT4_STATE_XATTR, align 4
  %21 = call i64 @ext4_test_inode_state(%struct.inode* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %2
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call i32 @ext4_get_inode_loc(%struct.inode* %24, %struct.ext4_iloc* %11)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %91

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %11, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 %35, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = call %struct.TYPE_8__* @EXT4_I(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %38, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = call %struct.TYPE_6__* @EXT4_SB(%struct.TYPE_7__* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @FIEMAP_EXTENT_DATA_INLINE, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %11, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i32 @brelse(%struct.TYPE_5__* %59)
  br label %74

61:                                               ; preds = %2
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = call %struct.TYPE_8__* @EXT4_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* %9, align 4
  %68 = shl i32 %66, %67
  store i32 %68, i32* %6, align 4
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %61, %30
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info* %78, i32 0, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %77, %74
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  br label %89

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ]
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %28
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local %struct.TYPE_8__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @EXT4_SB(%struct.TYPE_7__*) #1

declare dso_local i32 @brelse(%struct.TYPE_5__*) #1

declare dso_local i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
