; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_map_blocks = type { i64, i32 }

@EXT4_GET_BLOCKS_CREATE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ext4_getblk() return bh = NULL\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i8*, i32)* @ext4_xattr_inode_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_inode_write(i32* %0, %struct.inode* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ext4_map_blocks, align 8
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  store i64 0, i64* %11, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 %24, %25
  %27 = sub nsw i32 %26, 1
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %27, %30
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %32

32:                                               ; preds = %72, %4
  br label %33

33:                                               ; preds = %74, %32
  %34 = load i32, i32* %16, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %37, %38
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i1 [ false, %33 ], [ %39, %36 ]
  br i1 %41, label %42, label %75

42:                                               ; preds = %40
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %11, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %11, align 8
  %47 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %18, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %13, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %13, align 4
  %51 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %18, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = load i32, i32* @EXT4_GET_BLOCKS_CREATE, align 4
  %55 = call i32 @ext4_map_blocks(i32* %52, %struct.inode* %53, %struct.ext4_map_blocks* %18, i32 %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %42
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = call i32 @ext4_mark_inode_dirty(i32* %59, %struct.inode* %60)
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* @ENOSPC, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = call i64 @ext4_should_retry_alloc(%struct.TYPE_2__* %69, i32* %17)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %16, align 4
  br label %32

73:                                               ; preds = %66, %58
  br label %75

74:                                               ; preds = %42
  br label %33

75:                                               ; preds = %73, %40
  %76 = load i32, i32* %16, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %5, align 4
  br label %171

80:                                               ; preds = %75
  store i64 0, i64* %11, align 8
  br label %81

81:                                               ; preds = %131, %80
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %153

85:                                               ; preds = %81
  %86 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %87 = icmp ne %struct.buffer_head* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %90 = call i32 @brelse(%struct.buffer_head* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %15, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32, i32* %12, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %12, align 4
  br label %103

99:                                               ; preds = %91
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %15, align 4
  %102 = sub nsw i32 %100, %101
  br label %103

103:                                              ; preds = %99, %97
  %104 = phi i32 [ %98, %97 ], [ %102, %99 ]
  store i32 %104, i32* %14, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = load %struct.inode*, %struct.inode** %7, align 8
  %107 = load i64, i64* %11, align 8
  %108 = call %struct.buffer_head* @ext4_getblk(i32* %105, %struct.inode* %106, i64 %107, i32 0)
  store %struct.buffer_head* %108, %struct.buffer_head** %10, align 8
  %109 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %110 = call i64 @IS_ERR(%struct.buffer_head* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %114 = call i32 @PTR_ERR(%struct.buffer_head* %113)
  store i32 %114, i32* %5, align 4
  br label %171

115:                                              ; preds = %103
  %116 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %117 = icmp ne %struct.buffer_head* %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %115
  %119 = call i32 @WARN_ON_ONCE(i32 1)
  %120 = load %struct.inode*, %struct.inode** %7, align 8
  %121 = call i32 @EXT4_ERROR_INODE(%struct.inode* %120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %122 = load i32, i32* @EFSCORRUPTED, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %171

124:                                              ; preds = %115
  %125 = load i32*, i32** %6, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %127 = call i32 @ext4_journal_get_write_access(i32* %125, %struct.buffer_head* %126)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %167

131:                                              ; preds = %124
  %132 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %133 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i8*, i8** %8, align 8
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @memcpy(i32 %134, i8* %135, i32 %136)
  %138 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %139 = call i32 @set_buffer_uptodate(%struct.buffer_head* %138)
  %140 = load i32*, i32** %6, align 8
  %141 = load %struct.inode*, %struct.inode** %7, align 8
  %142 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %143 = call i32 @ext4_handle_dirty_metadata(i32* %140, %struct.inode* %141, %struct.buffer_head* %142)
  %144 = load i32, i32* %14, align 4
  %145 = load i8*, i8** %8, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr i8, i8* %145, i64 %146
  store i8* %147, i8** %8, align 8
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %15, align 4
  %151 = load i64, i64* %11, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %11, align 8
  br label %81

153:                                              ; preds = %81
  %154 = load %struct.inode*, %struct.inode** %7, align 8
  %155 = call i32 @inode_lock(%struct.inode* %154)
  %156 = load %struct.inode*, %struct.inode** %7, align 8
  %157 = load i32, i32* %15, align 4
  %158 = call i32 @i_size_write(%struct.inode* %156, i32 %157)
  %159 = load %struct.inode*, %struct.inode** %7, align 8
  %160 = load i32, i32* %15, align 4
  %161 = call i32 @ext4_update_i_disksize(%struct.inode* %159, i32 %160)
  %162 = load %struct.inode*, %struct.inode** %7, align 8
  %163 = call i32 @inode_unlock(%struct.inode* %162)
  %164 = load i32*, i32** %6, align 8
  %165 = load %struct.inode*, %struct.inode** %7, align 8
  %166 = call i32 @ext4_mark_inode_dirty(i32* %164, %struct.inode* %165)
  br label %167

167:                                              ; preds = %153, %130
  %168 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %169 = call i32 @brelse(%struct.buffer_head* %168)
  %170 = load i32, i32* %16, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %167, %118, %112, %78
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @ext4_map_blocks(i32*, %struct.inode*, %struct.ext4_map_blocks*, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i64 @ext4_should_retry_alloc(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @ext4_getblk(i32*, %struct.inode*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @ext4_update_i_disksize(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
