; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_super.c_ocfs2_disable_quotas.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_super.c_ocfs2_disable_quotas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.super_block* }
%struct.super_block = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.inode = type { i32 }
%struct.ocfs2_mem_dqinfo = type { i32 }
%struct.TYPE_4__ = type { %struct.ocfs2_mem_dqinfo* }

@OCFS2_MAXQUOTAS = common dso_local global i32 0, align 4
@DQUOT_USAGE_ENABLED = common dso_local global i32 0, align 4
@DQUOT_LIMITS_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*)* @ocfs2_disable_quotas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_disable_quotas(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 0
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %5, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %50, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @OCFS2_MAXQUOTAS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %10
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @sb_has_quota_loaded(%struct.super_block* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %50

20:                                               ; preds = %14
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call %struct.TYPE_4__* @sb_dqinfo(%struct.super_block* %21, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %24, align 8
  store %struct.ocfs2_mem_dqinfo* %25, %struct.ocfs2_mem_dqinfo** %6, align 8
  %26 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %6, align 8
  %27 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %26, i32 0, i32 0
  %28 = call i32 @cancel_delayed_work_sync(i32* %27)
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.inode* @igrab(i32 %36)
  store %struct.inode* %37, %struct.inode** %4, align 8
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @DQUOT_USAGE_ENABLED, align 4
  %41 = load i32, i32* @DQUOT_LIMITS_ENABLED, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @dquot_disable(%struct.super_block* %38, i32 %39, i32 %42)
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = icmp ne %struct.inode* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %20
  br label %50

47:                                               ; preds = %20
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = call i32 @iput(%struct.inode* %48)
  br label %50

50:                                               ; preds = %47, %46, %19
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %10

53:                                               ; preds = %10
  ret void
}

declare dso_local i32 @sb_has_quota_loaded(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_4__* @sb_dqinfo(%struct.super_block*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local %struct.inode* @igrab(i32) #1

declare dso_local i32 @dquot_disable(%struct.super_block*, i32, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
