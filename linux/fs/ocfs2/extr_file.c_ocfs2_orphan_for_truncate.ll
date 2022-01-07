; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_orphan_for_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_orphan_for_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { %struct.TYPE_2__, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, i32, i8*, i8*, i8* }

@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i32)* @ocfs2_orphan_for_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_orphan_for_truncate(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ocfs2_dinode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_2__, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @ocfs2_cow_file_pos(%struct.inode* %15, %struct.buffer_head* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @mlog_errno(i32 %22)
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %118

25:                                               ; preds = %4
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %27 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %28 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %26, i32 %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i64 @IS_ERR(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @PTR_ERR(i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @mlog_errno(i32 %35)
  br label %116

37:                                               ; preds = %25
  %38 = load i32*, i32** %11, align 8
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call i32 @INODE_CACHE(%struct.inode* %39)
  %41 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %42 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %43 = call i32 @ocfs2_journal_access_di(i32* %38, i32 %40, %struct.buffer_head* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  br label %112

49:                                               ; preds = %37
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @ocfs2_align_bytes_to_clusters(i32 %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @ocfs2_zero_range_for_truncate(%struct.inode* %55, i32* %56, i32 %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %112

65:                                               ; preds = %49
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @i_size_write(%struct.inode* %66, i32 %67)
  %69 = load %struct.inode*, %struct.inode** %7, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 1
  %73 = load %struct.inode*, %struct.inode** %7, align 8
  %74 = call i64 @current_time(%struct.inode* %73)
  %75 = bitcast %struct.TYPE_2__* %14 to i64*
  store i64 %74, i64* %75, align 4
  %76 = bitcast %struct.TYPE_2__* %72 to i8*
  %77 = bitcast %struct.TYPE_2__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 8, i1 false)
  %78 = bitcast %struct.TYPE_2__* %70 to i8*
  %79 = bitcast %struct.TYPE_2__* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 8, i1 false)
  %80 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %83, %struct.ocfs2_dinode** %12, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i8* @cpu_to_le64(i32 %84)
  %86 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %87 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  %88 = load %struct.inode*, %struct.inode** %7, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @cpu_to_le64(i32 %91)
  %93 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %94 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %96 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %95, i32 0, i32 3
  store i8* %92, i8** %96, align 8
  %97 = load %struct.inode*, %struct.inode** %7, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @cpu_to_le32(i32 %100)
  %102 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %103 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %105 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %104, i32 0, i32 1
  store i32 %101, i32* %105, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = load %struct.inode*, %struct.inode** %7, align 8
  %108 = call i32 @ocfs2_update_inode_fsync_trans(i32* %106, %struct.inode* %107, i32 0)
  %109 = load i32*, i32** %11, align 8
  %110 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %111 = call i32 @ocfs2_journal_dirty(i32* %109, %struct.buffer_head* %110)
  br label %112

112:                                              ; preds = %65, %62, %46
  %113 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %113, i32* %114)
  br label %116

116:                                              ; preds = %112, %32
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %21
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @ocfs2_cow_file_pos(%struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_align_bytes_to_clusters(i32, i32) #1

declare dso_local i32 @ocfs2_zero_range_for_truncate(%struct.inode*, i32*, i32, i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i64 @current_time(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @cpu_to_le64(i32) #1

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
