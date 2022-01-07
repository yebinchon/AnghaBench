; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_local_write_dquot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_local_write_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.TYPE_3__, %struct.super_block* }
%struct.TYPE_3__ = type { i64 }
%struct.super_block = type { i32 }
%struct.ocfs2_dquot = type { i32 }
%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { %struct.inode** }

@olq_set_dquot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_local_write_dquot(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ocfs2_dquot*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %8 = load %struct.dquot*, %struct.dquot** %2, align 8
  %9 = getelementptr inbounds %struct.dquot, %struct.dquot* %8, i32 0, i32 1
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %3, align 8
  %11 = load %struct.dquot*, %struct.dquot** %2, align 8
  %12 = call %struct.ocfs2_dquot* @OCFS2_DQUOT(%struct.dquot* %11)
  store %struct.ocfs2_dquot* %12, %struct.ocfs2_dquot** %4, align 8
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = call %struct.TYPE_4__* @sb_dqopt(%struct.super_block* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.inode**, %struct.inode*** %15, align 8
  %17 = load %struct.dquot*, %struct.dquot** %2, align 8
  %18 = getelementptr inbounds %struct.dquot, %struct.dquot* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.inode*, %struct.inode** %16, i64 %20
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %6, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %4, align 8
  %25 = getelementptr inbounds %struct.ocfs2_dquot, %struct.ocfs2_dquot* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ocfs2_read_quota_phys_block(%struct.inode* %23, i32 %26, %struct.buffer_head** %5)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @mlog_errno(i32 %31)
  br label %45

33:                                               ; preds = %1
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %36 = load i32, i32* @olq_set_dquot, align 4
  %37 = load %struct.ocfs2_dquot*, %struct.ocfs2_dquot** %4, align 8
  %38 = call i32 @ocfs2_modify_bh(%struct.inode* %34, %struct.buffer_head* %35, i32 %36, %struct.ocfs2_dquot* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %45

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %41, %30
  %46 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %47 = call i32 @brelse(%struct.buffer_head* %46)
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local %struct.ocfs2_dquot* @OCFS2_DQUOT(%struct.dquot*) #1

declare dso_local %struct.TYPE_4__* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @ocfs2_read_quota_phys_block(%struct.inode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_modify_bh(%struct.inode*, %struct.buffer_head*, i32, %struct.ocfs2_dquot*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
