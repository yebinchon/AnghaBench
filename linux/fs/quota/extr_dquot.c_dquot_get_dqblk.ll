; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_get_dqblk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_get_dqblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.qc_dqblk = type { i32 }
%struct.kqid = type { i32 }
%struct.dquot = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_get_dqblk(%struct.super_block* %0, i32 %1, %struct.qc_dqblk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kqid, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.qc_dqblk*, align 8
  %8 = alloca %struct.dquot*, align 8
  %9 = getelementptr inbounds %struct.kqid, %struct.kqid* %5, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.qc_dqblk* %2, %struct.qc_dqblk** %7, align 8
  %10 = load %struct.super_block*, %struct.super_block** %6, align 8
  %11 = getelementptr inbounds %struct.kqid, %struct.kqid* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.dquot* @dqget(%struct.super_block* %10, i32 %12)
  store %struct.dquot* %13, %struct.dquot** %8, align 8
  %14 = load %struct.dquot*, %struct.dquot** %8, align 8
  %15 = call i64 @IS_ERR(%struct.dquot* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.dquot*, %struct.dquot** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.dquot* %18)
  store i32 %19, i32* %4, align 4
  br label %26

20:                                               ; preds = %3
  %21 = load %struct.dquot*, %struct.dquot** %8, align 8
  %22 = load %struct.qc_dqblk*, %struct.qc_dqblk** %7, align 8
  %23 = call i32 @do_get_dqblk(%struct.dquot* %21, %struct.qc_dqblk* %22)
  %24 = load %struct.dquot*, %struct.dquot** %8, align 8
  %25 = call i32 @dqput(%struct.dquot* %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %4, align 4
  ret i32 %27
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
