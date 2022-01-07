; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_truncate_inline.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_truncate_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_5__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32, i32, i8*, i8*, i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ocfs2_inline_data }
%struct.ocfs2_inline_data = type { i64 }
%struct.TYPE_6__ = type { i32, i64 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"Inline data flags for inode %llu don't agree! Disk: 0x%x, Memory: 0x%x, Superblock: 0x%x\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_truncate_inline(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ocfs2_super*, align 8
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca %struct.ocfs2_inline_data*, align 8
  %17 = alloca %struct.TYPE_5__, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ocfs2_super* @OCFS2_SB(i32 %20)
  store %struct.ocfs2_super* %21, %struct.ocfs2_super** %14, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %25, %struct.ocfs2_dinode** %15, align 8
  %26 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %27 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.ocfs2_inline_data* %28, %struct.ocfs2_inline_data** %16, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = call i32 @i_size_read(%struct.inode* %30)
  %32 = icmp ugt i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = call i32 @i_size_read(%struct.inode* %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %5
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ugt i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %36
  %50 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %51 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %59 = call i32 @ocfs2_supports_inline_data(%struct.ocfs2_super* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %83, label %61

61:                                               ; preds = %57, %49, %36
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %70 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @le16_to_cpu(i32 %71)
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %78 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ocfs2_error(i32 %64, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i64 %68, i32 %72, i32 %76, i32 %79)
  %81 = load i32, i32* @EROFS, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %11, align 4
  br label %173

83:                                               ; preds = %57
  %84 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %85 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %86 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %84, i32 %85)
  store i32* %86, i32** %13, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = call i64 @IS_ERR(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @PTR_ERR(i32* %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @mlog_errno(i32 %93)
  br label %173

95:                                               ; preds = %83
  %96 = load i32*, i32** %13, align 8
  %97 = load %struct.inode*, %struct.inode** %6, align 8
  %98 = call i32 @INODE_CACHE(%struct.inode* %97)
  %99 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %100 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %101 = call i32 @ocfs2_journal_access_di(i32* %96, i32 %98, %struct.buffer_head* %99, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @mlog_errno(i32 %105)
  br label %169

107:                                              ; preds = %95
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %8, align 4
  %110 = sub i32 %108, %109
  store i32 %110, i32* %12, align 4
  %111 = load %struct.ocfs2_inline_data*, %struct.ocfs2_inline_data** %16, align 8
  %112 = getelementptr inbounds %struct.ocfs2_inline_data, %struct.ocfs2_inline_data* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @memset(i64 %116, i32 0, i32 %117)
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %107
  %122 = load %struct.inode*, %struct.inode** %6, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @i_size_write(%struct.inode* %122, i32 %123)
  %125 = load i32, i32* %8, align 4
  %126 = call i8* @cpu_to_le64(i32 %125)
  %127 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %128 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %127, i32 0, i32 4
  store i8* %126, i8** %128, align 8
  br label %129

129:                                              ; preds = %121, %107
  %130 = load %struct.inode*, %struct.inode** %6, align 8
  %131 = call i32 @ocfs2_inode_sector_count(%struct.inode* %130)
  %132 = load %struct.inode*, %struct.inode** %6, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load %struct.inode*, %struct.inode** %6, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 0
  %136 = load %struct.inode*, %struct.inode** %6, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 1
  %138 = load %struct.inode*, %struct.inode** %6, align 8
  %139 = call i64 @current_time(%struct.inode* %138)
  %140 = bitcast %struct.TYPE_5__* %17 to i64*
  store i64 %139, i64* %140, align 4
  %141 = bitcast %struct.TYPE_5__* %137 to i8*
  %142 = bitcast %struct.TYPE_5__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %141, i8* align 4 %142, i64 8, i1 false)
  %143 = bitcast %struct.TYPE_5__* %135 to i8*
  %144 = bitcast %struct.TYPE_5__* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %143, i8* align 4 %144, i64 8, i1 false)
  %145 = load %struct.inode*, %struct.inode** %6, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @cpu_to_le64(i32 %148)
  %150 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %151 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %150, i32 0, i32 2
  store i8* %149, i8** %151, align 8
  %152 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %153 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %152, i32 0, i32 3
  store i8* %149, i8** %153, align 8
  %154 = load %struct.inode*, %struct.inode** %6, align 8
  %155 = getelementptr inbounds %struct.inode, %struct.inode* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @cpu_to_le32(i32 %157)
  %159 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %160 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %162 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %161, i32 0, i32 1
  store i32 %158, i32* %162, align 4
  %163 = load i32*, i32** %13, align 8
  %164 = load %struct.inode*, %struct.inode** %6, align 8
  %165 = call i32 @ocfs2_update_inode_fsync_trans(i32* %163, %struct.inode* %164, i32 1)
  %166 = load i32*, i32** %13, align 8
  %167 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %168 = call i32 @ocfs2_journal_dirty(i32* %166, %struct.buffer_head* %167)
  br label %169

169:                                              ; preds = %129, %104
  %170 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %171 = load i32*, i32** %13, align 8
  %172 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %170, i32* %171)
  br label %173

173:                                              ; preds = %169, %90, %61
  %174 = load i32, i32* %11, align 4
  ret i32 %174
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_supports_inline_data(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i64 @current_time(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
