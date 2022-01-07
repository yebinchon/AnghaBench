; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_write_dquot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_write_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_3__ = type { i32 }

@init_user_ns = common dso_local global i32 0, align 4
@OCFS2_QWRITE_CREDITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*)* @ocfs2_write_dquot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_write_dquot(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %6 = load %struct.dquot*, %struct.dquot** %2, align 8
  %7 = getelementptr inbounds %struct.dquot, %struct.dquot* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ocfs2_super* @OCFS2_SB(i32 %8)
  store %struct.ocfs2_super* %9, %struct.ocfs2_super** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.dquot*, %struct.dquot** %2, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @from_kqid(i32* @init_user_ns, i32 %13)
  %15 = load %struct.dquot*, %struct.dquot** %2, align 8
  %16 = getelementptr inbounds %struct.dquot, %struct.dquot* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @trace_ocfs2_write_dquot(i32 %14, i32 %18)
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %21 = load i32, i32* @OCFS2_QWRITE_CREDITS, align 4
  %22 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %20, i32 %21)
  store i32* %22, i32** %3, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @IS_ERR(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @PTR_ERR(i32* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @mlog_errno(i32 %29)
  br label %49

31:                                               ; preds = %1
  %32 = load %struct.dquot*, %struct.dquot** %2, align 8
  %33 = getelementptr inbounds %struct.dquot, %struct.dquot* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_3__* @sb_dqopt(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @down_write(i32* %36)
  %38 = load %struct.dquot*, %struct.dquot** %2, align 8
  %39 = call i32 @ocfs2_local_write_dquot(%struct.dquot* %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.dquot*, %struct.dquot** %2, align 8
  %41 = getelementptr inbounds %struct.dquot, %struct.dquot* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_3__* @sb_dqopt(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @up_write(i32* %44)
  %46 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %46, i32* %47)
  br label %49

49:                                               ; preds = %31, %26
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @trace_ocfs2_write_dquot(i32, i32) #1

declare dso_local i32 @from_kqid(i32*, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_3__* @sb_dqopt(i32) #1

declare dso_local i32 @ocfs2_local_write_dquot(%struct.dquot*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
