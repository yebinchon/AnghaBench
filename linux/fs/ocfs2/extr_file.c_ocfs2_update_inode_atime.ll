; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_update_inode_atime.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_update_inode_atime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32, i32 }

@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_update_inode_atime(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca %struct.TYPE_2__, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ocfs2_super* @OCFS2_SB(i32 %12)
  store %struct.ocfs2_super* %13, %struct.ocfs2_super** %6, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %17, %struct.ocfs2_dinode** %8, align 8
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %19 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %20 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %18, i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @IS_ERR(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @PTR_ERR(i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @mlog_errno(i32 %27)
  br label %73

29:                                               ; preds = %2
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = call i32 @INODE_CACHE(%struct.inode* %31)
  %33 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %34 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %35 = call i32 @ocfs2_journal_access_di(i32* %30, i32 %32, %struct.buffer_head* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %69

41:                                               ; preds = %29
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = call i64 @current_time(%struct.inode* %44)
  %46 = bitcast %struct.TYPE_2__* %9 to i64*
  store i64 %45, i64* %46, align 4
  %47 = bitcast %struct.TYPE_2__* %43 to i8*
  %48 = bitcast %struct.TYPE_2__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 8, i1 false)
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cpu_to_le64(i32 %52)
  %54 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %55 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cpu_to_le32(i32 %59)
  %61 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %62 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = call i32 @ocfs2_update_inode_fsync_trans(i32* %63, %struct.inode* %64, i32 0)
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %68 = call i32 @ocfs2_journal_dirty(i32* %66, %struct.buffer_head* %67)
  br label %69

69:                                               ; preds = %41, %38
  %70 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %70, i32* %71)
  br label %73

73:                                               ; preds = %69, %24
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i64 @current_time(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le64(i32) #1

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
