; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_write_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_write_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_mem_dqinfo = type { i32 }
%struct.TYPE_2__ = type { %struct.ocfs2_mem_dqinfo* }

@OCFS2_QINFO_WRITE_CREDITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @ocfs2_write_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_write_info(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_2__* @sb_dqinfo(%struct.super_block* %8, i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %11, align 8
  store %struct.ocfs2_mem_dqinfo* %12, %struct.ocfs2_mem_dqinfo** %7, align 8
  %13 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %7, align 8
  %14 = call i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo* %13, i32 1)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.super_block*, %struct.super_block** %3, align 8
  %20 = call i32 @OCFS2_SB(%struct.super_block* %19)
  %21 = load i32, i32* @OCFS2_QINFO_WRITE_CREDITS, align 4
  %22 = call i32* @ocfs2_start_trans(i32 %20, i32 %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @IS_ERR(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @PTR_ERR(i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @mlog_errno(i32 %29)
  br label %39

31:                                               ; preds = %18
  %32 = load %struct.super_block*, %struct.super_block** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @dquot_commit_info(%struct.super_block* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.super_block*, %struct.super_block** %3, align 8
  %36 = call i32 @OCFS2_SB(%struct.super_block* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @ocfs2_commit_trans(i32 %36, i32* %37)
  br label %39

39:                                               ; preds = %31, %26
  %40 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %7, align 8
  %41 = call i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo* %40, i32 1)
  br label %42

42:                                               ; preds = %39, %17
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @mlog_errno(i32 %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_2__* @sb_dqinfo(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32* @ocfs2_start_trans(i32, i32) #1

declare dso_local i32 @OCFS2_SB(%struct.super_block*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @dquot_commit_info(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(i32, i32*) #1

declare dso_local i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
