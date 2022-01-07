; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_create_local_dquot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_create_local_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.TYPE_4__, %struct.super_block* }
%struct.TYPE_4__ = type { i32 }
%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_quota_chunk = type { i32, i32 }
%struct.ocfs2_dquot = type { i32, %struct.ocfs2_quota_chunk*, i32 }
%struct.TYPE_5__ = type { %struct.inode** }
%struct.TYPE_6__ = type { i32 }

@olq_alloc_dquot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_create_local_dquot(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_quota_chunk*, align 8
  %7 = alloca %struct.ocfs2_dquot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %11 = load %struct.dquot*, %struct.dquot** %2, align 8
  %12 = getelementptr inbounds %struct.dquot, %struct.dquot* %11, i32 0, i32 1
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %3, align 8
  %14 = load %struct.dquot*, %struct.dquot** %2, align 8
  %15 = getelementptr inbounds %struct.dquot, %struct.dquot* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  %18 = load %struct.super_block*, %struct.super_block** %3, align 8
  %19 = call %struct.TYPE_5__* @sb_dqopt(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.inode**, %struct.inode*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.inode*, %struct.inode** %21, i64 %23
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %5, align 8
  %26 = load %struct.dquot*, %struct.dquot** %2, align 8
  %27 = call %struct.ocfs2_dquot* @OCFS2_DQUOT(%struct.dquot* %26)
  store %struct.ocfs2_dquot* %27, %struct.ocfs2_dquot** %7, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = call i32 @down_write(i32* %30)
  %32 = load %struct.super_block*, %struct.super_block** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call %struct.ocfs2_quota_chunk* @ocfs2_find_free_entry(%struct.super_block* %32, i32 %33, i32* %8)
  store %struct.ocfs2_quota_chunk* %34, %struct.ocfs2_quota_chunk** %6, align 8
  %35 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %6, align 8
  %36 = icmp ne %struct.ocfs2_quota_chunk* %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %1
  %38 = load %struct.super_block*, %struct.super_block** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call %struct.ocfs2_quota_chunk* @ocfs2_extend_local_quota_file(%struct.super_block* %38, i32 %39, i32* %8)
  store %struct.ocfs2_quota_chunk* %40, %struct.ocfs2_quota_chunk** %6, align 8
  %41 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %6, align 8
  %42 = call i64 @IS_ERR(%struct.ocfs2_quota_chunk* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %6, align 8
  %46 = call i32 @PTR_ERR(%struct.ocfs2_quota_chunk* %45)
  store i32 %46, i32* %9, align 4
  br label %98

47:                                               ; preds = %37
  br label %56

48:                                               ; preds = %1
  %49 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %6, align 8
  %50 = call i64 @IS_ERR(%struct.ocfs2_quota_chunk* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %6, align 8
  %54 = call i32 @PTR_ERR(%struct.ocfs2_quota_chunk* %53)
  store i32 %54, i32* %9, align 4
  br label %98

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %47
  %57 = load %struct.super_block*, %struct.super_block** %3, align 8
  %58 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %6, align 8
  %59 = getelementptr inbounds %struct.ocfs2_quota_chunk, %struct.ocfs2_quota_chunk* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @ol_dqblk_off(%struct.super_block* %57, i32 %60, i32 %61)
  %63 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %7, align 8
  %64 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %6, align 8
  %66 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %7, align 8
  %67 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %66, i32 0, i32 1
  store %struct.ocfs2_quota_chunk* %65, %struct.ocfs2_quota_chunk** %67, align 8
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = load %struct.super_block*, %struct.super_block** %3, align 8
  %70 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %6, align 8
  %71 = getelementptr inbounds %struct.ocfs2_quota_chunk, %struct.ocfs2_quota_chunk* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @ol_dqblk_block(%struct.super_block* %69, i32 %72, i32 %73)
  %75 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %7, align 8
  %76 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %75, i32 0, i32 0
  %77 = call i32 @ocfs2_extent_map_get_blocks(%struct.inode* %68, i32 %74, i32* %76, i32* %10, i32* null)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.dquot*, %struct.dquot** %2, align 8
  %79 = call i32 @ocfs2_local_write_dquot(%struct.dquot* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %56
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @mlog_errno(i32 %83)
  br label %98

85:                                               ; preds = %56
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = load %struct.ocfs2_quota_chunk*, %struct.ocfs2_quota_chunk** %6, align 8
  %88 = getelementptr inbounds %struct.ocfs2_quota_chunk, %struct.ocfs2_quota_chunk* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @olq_alloc_dquot, align 4
  %91 = call i32 @ocfs2_modify_bh(%struct.inode* %86, i32 %89, i32 %90, i32* %8)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @mlog_errno(i32 %95)
  br label %98

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %94, %82, %52, %44
  %99 = load %struct.inode*, %struct.inode** %5, align 8
  %100 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %99)
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = call i32 @up_write(i32* %101)
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_5__* @sb_dqopt(%struct.super_block*) #1

declare dso_local %struct.ocfs2_dquot* @OCFS2_DQUOT(%struct.dquot*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_quota_chunk* @ocfs2_find_free_entry(%struct.super_block*, i32, i32*) #1

declare dso_local %struct.ocfs2_quota_chunk* @ocfs2_extend_local_quota_file(%struct.super_block*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.ocfs2_quota_chunk*) #1

declare dso_local i32 @PTR_ERR(%struct.ocfs2_quota_chunk*) #1

declare dso_local i32 @ol_dqblk_off(%struct.super_block*, i32, i32) #1

declare dso_local i32 @ocfs2_extent_map_get_blocks(%struct.inode*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ol_dqblk_block(%struct.super_block*, i32, i32) #1

declare dso_local i32 @ocfs2_local_write_dquot(%struct.dquot*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_modify_bh(%struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
