; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_replay_truncate_records.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_replay_truncate_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i64, %struct.buffer_head*, %struct.inode* }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_truncate_rec = type { i32, i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ocfs2_truncate_log }
%struct.ocfs2_truncate_log = type { %struct.ocfs2_truncate_rec*, i32 }
%struct.TYPE_4__ = type { i64 }

@OCFS2_TRUNCATE_LOG_FLUSH_ONE_REC = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*)* @ocfs2_replay_truncate_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_replay_truncate_records(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ocfs2_truncate_rec, align 4
  %12 = alloca %struct.ocfs2_dinode*, align 8
  %13 = alloca %struct.ocfs2_truncate_log*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %18 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %17, i32 0, i32 2
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %14, align 8
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %21 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %20, i32 0, i32 1
  %22 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  store %struct.buffer_head* %22, %struct.buffer_head** %15, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %26, %struct.ocfs2_dinode** %12, align 8
  %27 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %28 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store %struct.ocfs2_truncate_log* %29, %struct.ocfs2_truncate_log** %13, align 8
  %30 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %13, align 8
  %31 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @le16_to_cpu(i32 %32)
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %113, %3
  %36 = load i32, i32* %8, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %119

38:                                               ; preds = %35
  %39 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %40 = load i32, i32* @OCFS2_TRUNCATE_LOG_FLUSH_ONE_REC, align 4
  %41 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %39, i32 %40)
  store i32* %41, i32** %16, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = call i64 @IS_ERR(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32*, i32** %16, align 8
  %47 = call i32 @PTR_ERR(i32* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %122

50:                                               ; preds = %38
  %51 = load i32*, i32** %16, align 8
  %52 = load %struct.inode*, %struct.inode** %14, align 8
  %53 = call i32 @INODE_CACHE(%struct.inode* %52)
  %54 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %55 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %56 = call i32 @ocfs2_journal_access_di(i32* %51, i32 %53, %struct.buffer_head* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %122

62:                                               ; preds = %50
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @cpu_to_le16(i32 %63)
  %65 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %13, align 8
  %66 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %69 = call i32 @ocfs2_journal_dirty(i32* %67, %struct.buffer_head* %68)
  %70 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %13, align 8
  %71 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %70, i32 0, i32 0
  %72 = load %struct.ocfs2_truncate_rec*, %struct.ocfs2_truncate_rec** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ocfs2_truncate_rec, %struct.ocfs2_truncate_rec* %72, i64 %74
  %76 = bitcast %struct.ocfs2_truncate_rec* %11 to i8*
  %77 = bitcast %struct.ocfs2_truncate_rec* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 8, i1 false)
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.ocfs2_truncate_rec, %struct.ocfs2_truncate_rec* %11, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le32_to_cpu(i32 %82)
  %84 = call i64 @ocfs2_clusters_to_blocks(i32 %80, i32 %83)
  store i64 %84, i64* %10, align 8
  %85 = getelementptr inbounds %struct.ocfs2_truncate_rec, %struct.ocfs2_truncate_rec* %11, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32_to_cpu(i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i64, i64* %10, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %62
  %91 = load %struct.inode*, %struct.inode** %14, align 8
  %92 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %91)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = getelementptr inbounds %struct.ocfs2_truncate_rec, %struct.ocfs2_truncate_rec* %11, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le32_to_cpu(i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @trace_ocfs2_replay_truncate_records(i64 %94, i32 %95, i32 %98, i32 %99)
  %101 = load i32*, i32** %16, align 8
  %102 = load %struct.inode*, %struct.inode** %5, align 8
  %103 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @ocfs2_free_clusters(i32* %101, %struct.inode* %102, %struct.buffer_head* %103, i64 %104, i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %90
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  br label %122

112:                                              ; preds = %90
  br label %113

113:                                              ; preds = %112, %62
  %114 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %115 = load i32*, i32** %16, align 8
  %116 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %114, i32* %115)
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %8, align 4
  br label %35

119:                                              ; preds = %35
  %120 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %121 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %119, %109, %59, %45
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @trace_ocfs2_replay_truncate_records(i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_free_clusters(i32*, %struct.inode*, %struct.buffer_head*, i64, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
