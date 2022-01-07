; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_file_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_file_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.hfsplus_inode_info = type { i32 }
%struct.hfsplus_sb_info = type { i32, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@HFSPLUS_I_CAT_DIRTY = common dso_local global i32 0, align 4
@HFSPLUS_I_EXT_DIRTY = common dso_local global i32 0, align 4
@HFSPLUS_I_ATTR_DIRTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"sync non-existent attributes tree\0A\00", align 1
@HFSPLUS_I_ALLOC_DIRTY = common dso_local global i32 0, align 4
@HFSPLUS_SB_NOBARRIER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_file_fsync(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.hfsplus_inode_info*, align 8
  %12 = alloca %struct.hfsplus_sb_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %10, align 8
  %20 = load %struct.inode*, %struct.inode** %10, align 8
  %21 = call %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode* %20)
  store %struct.hfsplus_inode_info* %21, %struct.hfsplus_inode_info** %11, align 8
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.TYPE_18__* %24)
  store %struct.hfsplus_sb_info* %25, %struct.hfsplus_sb_info** %12, align 8
  store i32 0, i32* %13, align 4
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @file_write_and_wait_range(%struct.file* %26, i32 %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %5, align 4
  br label %137

34:                                               ; preds = %4
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = call i32 @inode_lock(%struct.inode* %35)
  %37 = load %struct.inode*, %struct.inode** %10, align 8
  %38 = call i32 @sync_inode_metadata(%struct.inode* %37, i32 1)
  %39 = load i32, i32* @HFSPLUS_I_CAT_DIRTY, align 4
  %40 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %11, align 8
  %41 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %40, i32 0, i32 0
  %42 = call i64 @test_and_clear_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %12, align 8
  %46 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %45, i32 0, i32 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @filemap_write_and_wait(i32 %51)
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %44, %34
  %54 = load i32, i32* @HFSPLUS_I_EXT_DIRTY, align 4
  %55 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %11, align 8
  %56 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %55, i32 0, i32 0
  %57 = call i64 @test_and_clear_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %53
  %60 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %12, align 8
  %61 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %60, i32 0, i32 3
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @filemap_write_and_wait(i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %59
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %70, %59
  br label %73

73:                                               ; preds = %72, %53
  %74 = load i32, i32* @HFSPLUS_I_ATTR_DIRTY, align 4
  %75 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %11, align 8
  %76 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %75, i32 0, i32 0
  %77 = call i64 @test_and_clear_bit(i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %73
  %80 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %12, align 8
  %81 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %80, i32 0, i32 2
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = icmp ne %struct.TYPE_16__* %82, null
  br i1 %83, label %84, label %98

84:                                               ; preds = %79
  %85 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %12, align 8
  %86 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %85, i32 0, i32 2
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @filemap_write_and_wait(i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %95, %84
  br label %100

98:                                               ; preds = %79
  %99 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %97
  br label %101

101:                                              ; preds = %100, %73
  %102 = load i32, i32* @HFSPLUS_I_ALLOC_DIRTY, align 4
  %103 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %11, align 8
  %104 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %103, i32 0, i32 0
  %105 = call i64 @test_and_clear_bit(i32 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %101
  %108 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %12, align 8
  %109 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %108, i32 0, i32 1
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @filemap_write_and_wait(i32 %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %107
  %117 = load i32, i32* %14, align 4
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %116, %107
  br label %119

119:                                              ; preds = %118, %101
  %120 = load i32, i32* @HFSPLUS_SB_NOBARRIER, align 4
  %121 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %12, align 8
  %122 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %121, i32 0, i32 0
  %123 = call i32 @test_bit(i32 %120, i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %119
  %126 = load %struct.inode*, %struct.inode** %10, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 0
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = call i32 @blkdev_issue_flush(i32 %130, i32 %131, i32* null)
  br label %133

133:                                              ; preds = %125, %119
  %134 = load %struct.inode*, %struct.inode** %10, align 8
  %135 = call i32 @inode_unlock(%struct.inode* %134)
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %133, %32
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode*) #1

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.TYPE_18__*) #1

declare dso_local i32 @file_write_and_wait_range(%struct.file*, i32, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @sync_inode_metadata(%struct.inode*, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @blkdev_issue_flush(i32, i32, i32*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
