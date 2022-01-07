; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_symlink_get_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_symlink_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.buffer_head = type { i32, i64, i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_12__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"block offset > PATH_MAX: %llu\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"block offset is outside the allocated size: %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"couldn't getblock for symlink!\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"couldn't kmap!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @ocfs2_symlink_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_symlink_get_block(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_dinode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.ocfs2_super*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = call %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_11__* %21)
  store %struct.ocfs2_super* %22, %struct.ocfs2_super** %14, align 8
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call %struct.TYPE_12__* @OCFS2_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @trace_ocfs2_symlink_get_block(i64 %26, i64 %28, %struct.buffer_head* %29, i32 %30)
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = call i32 @ocfs2_inode_is_fast_symlink(%struct.inode* %32)
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %35, %40
  %42 = load i32, i32* @PATH_MAX, align 4
  %43 = add nsw i32 %42, 1
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %4
  %46 = load i32, i32* @ML_ERROR, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = call i32 (i32, i8*, ...) @mlog(i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %172

50:                                               ; preds = %4
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = call i32 @ocfs2_read_inode_block(%struct.inode* %51, %struct.buffer_head** %12)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @mlog_errno(i32 %56)
  br label %172

58:                                               ; preds = %50
  %59 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %62, %struct.ocfs2_dinode** %11, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %69 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = call i64 @ocfs2_clusters_to_blocks(%struct.TYPE_11__* %67, i32 %71)
  %73 = icmp sge i64 %64, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %58
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* @ML_ERROR, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = call i32 (i32, i8*, ...) @mlog(i32 %77, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  br label %172

81:                                               ; preds = %58
  %82 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %83 = call i32 @buffer_uptodate(%struct.buffer_head* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %155, label %85

85:                                               ; preds = %81
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = call i64 @ocfs2_inode_is_new(%struct.inode* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %155

89:                                               ; preds = %85
  %90 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %91 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le64_to_cpu(i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %16, align 8
  %102 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %103 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %16, align 8
  %106 = call %struct.buffer_head* @sb_getblk(i32 %104, i64 %105)
  store %struct.buffer_head* %106, %struct.buffer_head** %13, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %108 = icmp ne %struct.buffer_head* %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %89
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* @ML_ERROR, align 4
  %113 = call i32 (i32, i8*, ...) @mlog(i32 %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %172

114:                                              ; preds = %89
  %115 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %116 = call i64 @buffer_jbd(%struct.buffer_head* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %152

118:                                              ; preds = %114
  %119 = load %struct.inode*, %struct.inode** %5, align 8
  %120 = call i64 @ocfs2_inode_is_new(%struct.inode* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %152

122:                                              ; preds = %118
  %123 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %124 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i8* @kmap_atomic(i32 %125)
  store i8* %126, i8** %15, align 8
  %127 = load i8*, i8** %15, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* @ML_ERROR, align 4
  %131 = call i32 (i32, i8*, ...) @mlog(i32 %130, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %172

132:                                              ; preds = %122
  %133 = load i8*, i8** %15, align 8
  %134 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %135 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = mul nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr i8, i8* %133, i64 %139
  %141 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %142 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %145 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @memcpy(i8* %140, i64 %143, i32 %146)
  %148 = load i8*, i8** %15, align 8
  %149 = call i32 @kunmap_atomic(i8* %148)
  %150 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %151 = call i32 @set_buffer_uptodate(%struct.buffer_head* %150)
  br label %152

152:                                              ; preds = %132, %118, %114
  %153 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %154 = call i32 @brelse(%struct.buffer_head* %153)
  br label %155

155:                                              ; preds = %152, %85, %81
  %156 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %157 = load %struct.inode*, %struct.inode** %5, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 0
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %161 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @le64_to_cpu(i32 %167)
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %168, %169
  %171 = call i32 @map_bh(%struct.buffer_head* %156, %struct.TYPE_11__* %159, i32 %170)
  store i32 0, i32* %9, align 4
  br label %172

172:                                              ; preds = %155, %129, %109, %74, %55, %45
  %173 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %174 = call i32 @brelse(%struct.buffer_head* %173)
  %175 = load i32, i32* %9, align 4
  ret i32 %175
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_11__*) #1

declare dso_local i32 @trace_ocfs2_symlink_get_block(i64, i64, %struct.buffer_head*, i32) #1

declare dso_local %struct.TYPE_12__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_inode_is_fast_symlink(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i64 @ocfs2_inode_is_new(%struct.inode*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(i32, i64) #1

declare dso_local i64 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
