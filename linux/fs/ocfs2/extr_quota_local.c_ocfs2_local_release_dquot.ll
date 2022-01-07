; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_local_release_dquot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_local_release_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.super_block*, %struct.TYPE_8__ }
%struct.super_block = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ocfs2_dquot = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.ocfs2_local_disk_chunk = type { i32, i32 }
%struct.TYPE_11__ = type { i32* }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_local_release_dquot(i32* %0, %struct.dquot* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dquot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_dquot*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.ocfs2_local_disk_chunk*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.dquot* %1, %struct.dquot** %4, align 8
  %11 = load %struct.dquot*, %struct.dquot** %4, align 8
  %12 = getelementptr inbounds %struct.dquot, %struct.dquot* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.dquot*, %struct.dquot** %4, align 8
  %16 = call %struct.ocfs2_dquot* @OCFS2_DQUOT(%struct.dquot* %15)
  store %struct.ocfs2_dquot* %16, %struct.ocfs2_dquot** %7, align 8
  %17 = load %struct.dquot*, %struct.dquot** %4, align 8
  %18 = getelementptr inbounds %struct.dquot, %struct.dquot* %17, i32 0, i32 0
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %8, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.super_block*, %struct.super_block** %8, align 8
  %22 = call %struct.TYPE_11__* @sb_dqopt(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @INODE_CACHE(i32 %28)
  %30 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %7, align 8
  %31 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %36 = call i32 @ocfs2_journal_access_dq(i32* %20, i32 %29, %struct.TYPE_10__* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  br label %88

42:                                               ; preds = %2
  %43 = load %struct.super_block*, %struct.super_block** %8, align 8
  %44 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %7, align 8
  %45 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %7, align 8
  %50 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ol_dqblk_chunk_off(%struct.super_block* %43, i32 %48, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %7, align 8
  %54 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.ocfs2_local_disk_chunk*
  store %struct.ocfs2_local_disk_chunk* %60, %struct.ocfs2_local_disk_chunk** %9, align 8
  %61 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %7, align 8
  %62 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = call i32 @lock_buffer(%struct.TYPE_10__* %65)
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.ocfs2_local_disk_chunk*, %struct.ocfs2_local_disk_chunk** %9, align 8
  %69 = getelementptr inbounds %struct.ocfs2_local_disk_chunk, %struct.ocfs2_local_disk_chunk* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ocfs2_clear_bit_unaligned(i32 %67, i32 %70)
  %72 = load %struct.ocfs2_local_disk_chunk*, %struct.ocfs2_local_disk_chunk** %9, align 8
  %73 = getelementptr inbounds %struct.ocfs2_local_disk_chunk, %struct.ocfs2_local_disk_chunk* %72, i32 0, i32 0
  %74 = call i32 @le32_add_cpu(i32* %73, i32 1)
  %75 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %7, align 8
  %76 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = call i32 @unlock_buffer(%struct.TYPE_10__* %79)
  %81 = load i32*, i32** %3, align 8
  %82 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %7, align 8
  %83 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = call i32 @ocfs2_journal_dirty(i32* %81, %struct.TYPE_10__* %86)
  br label %88

88:                                               ; preds = %42, %39
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.ocfs2_dquot* @OCFS2_DQUOT(%struct.dquot*) #1

declare dso_local i32 @ocfs2_journal_access_dq(i32*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @INODE_CACHE(i32) #1

declare dso_local %struct.TYPE_11__* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ol_dqblk_chunk_off(%struct.super_block*, i32, i32) #1

declare dso_local i32 @lock_buffer(%struct.TYPE_10__*) #1

declare dso_local i32 @ocfs2_clear_bit_unaligned(i32, i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @unlock_buffer(%struct.TYPE_10__*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
