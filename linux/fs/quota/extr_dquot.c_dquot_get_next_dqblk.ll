; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_get_next_dqblk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_get_next_dqblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.super_block*, %struct.kqid*)* }
%struct.kqid = type { i32 }
%struct.qc_dqblk = type { i32 }
%struct.dquot = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_get_next_dqblk(%struct.super_block* %0, %struct.kqid* %1, %struct.qc_dqblk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.kqid*, align 8
  %7 = alloca %struct.qc_dqblk*, align 8
  %8 = alloca %struct.dquot*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.kqid* %1, %struct.kqid** %6, align 8
  store %struct.qc_dqblk* %2, %struct.qc_dqblk** %7, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.super_block*, %struct.kqid*)*, i32 (%struct.super_block*, %struct.kqid*)** %13, align 8
  %15 = icmp ne i32 (%struct.super_block*, %struct.kqid*)* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %50

19:                                               ; preds = %3
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.super_block*, %struct.kqid*)*, i32 (%struct.super_block*, %struct.kqid*)** %23, align 8
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = load %struct.kqid*, %struct.kqid** %6, align 8
  %27 = call i32 %24(%struct.super_block* %25, %struct.kqid* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %50

32:                                               ; preds = %19
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = load %struct.kqid*, %struct.kqid** %6, align 8
  %35 = getelementptr inbounds %struct.kqid, %struct.kqid* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.dquot* @dqget(%struct.super_block* %33, i32 %36)
  store %struct.dquot* %37, %struct.dquot** %8, align 8
  %38 = load %struct.dquot*, %struct.dquot** %8, align 8
  %39 = call i64 @IS_ERR(%struct.dquot* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load %struct.dquot*, %struct.dquot** %8, align 8
  %43 = call i32 @PTR_ERR(%struct.dquot* %42)
  store i32 %43, i32* %4, align 4
  br label %50

44:                                               ; preds = %32
  %45 = load %struct.dquot*, %struct.dquot** %8, align 8
  %46 = load %struct.qc_dqblk*, %struct.qc_dqblk** %7, align 8
  %47 = call i32 @do_get_dqblk(%struct.dquot* %45, %struct.qc_dqblk* %46)
  %48 = load %struct.dquot*, %struct.dquot** %8, align 8
  %49 = call i32 @dqput(%struct.dquot* %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %41, %30, %16
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.dquot* @dqget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dquot*) #1

declare dso_local i32 @PTR_ERR(%struct.dquot*) #1

declare dso_local i32 @do_get_dqblk(%struct.dquot*, %struct.qc_dqblk*) #1

declare dso_local i32 @dqput(%struct.dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
