; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_change_ctime.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_change_ctime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, i32 }

@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*)* @ocfs2_change_ctime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_change_ctime(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_dinode*, align 8
  %8 = alloca %struct.TYPE_2__, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %10 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %12, %struct.ocfs2_dinode** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @OCFS2_SB(i32 %15)
  %17 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %18 = call i32* @ocfs2_start_trans(i32 %16, i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @IS_ERR(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @PTR_ERR(i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @mlog_errno(i32 %25)
  br label %71

27:                                               ; preds = %2
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = call i32 @INODE_CACHE(%struct.inode* %29)
  %31 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %32 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %33 = call i32 @ocfs2_journal_access_di(i32* %28, i32 %30, %struct.buffer_head* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  br label %64

39:                                               ; preds = %27
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = call i64 @current_time(%struct.inode* %42)
  %44 = bitcast %struct.TYPE_2__* %8 to i64*
  store i64 %43, i64* %44, align 4
  %45 = bitcast %struct.TYPE_2__* %41 to i8*
  %46 = bitcast %struct.TYPE_2__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 8, i1 false)
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cpu_to_le64(i32 %50)
  %52 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %53 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cpu_to_le32(i32 %57)
  %59 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %60 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %63 = call i32 @ocfs2_journal_dirty(i32* %61, %struct.buffer_head* %62)
  br label %64

64:                                               ; preds = %39, %36
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @OCFS2_SB(i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @ocfs2_commit_trans(i32 %68, i32* %69)
  br label %71

71:                                               ; preds = %64, %22
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32* @ocfs2_start_trans(i32, i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

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

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
