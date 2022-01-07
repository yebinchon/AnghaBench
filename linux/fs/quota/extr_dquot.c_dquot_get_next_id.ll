; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_get_next_id.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_get_next_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.kqid = type { i64 }
%struct.quota_info = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 (%struct.super_block*, %struct.kqid*)* }

@ESRCH = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_get_next_id(%struct.super_block* %0, %struct.kqid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.kqid*, align 8
  %6 = alloca %struct.quota_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.kqid* %1, %struct.kqid** %5, align 8
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = call %struct.quota_info* @sb_dqopt(%struct.super_block* %7)
  store %struct.quota_info* %8, %struct.quota_info** %6, align 8
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = load %struct.kqid*, %struct.kqid** %5, align 8
  %11 = getelementptr inbounds %struct.kqid, %struct.kqid* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @sb_has_quota_active(%struct.super_block* %9, i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ESRCH, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.quota_info*, %struct.quota_info** %6, align 8
  %20 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %20, align 8
  %22 = load %struct.kqid*, %struct.kqid** %5, align 8
  %23 = getelementptr inbounds %struct.kqid, %struct.kqid* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.super_block*, %struct.kqid*)*, i32 (%struct.super_block*, %struct.kqid*)** %27, align 8
  %29 = icmp ne i32 (%struct.super_block*, %struct.kqid*)* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* @ENOSYS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %47

33:                                               ; preds = %18
  %34 = load %struct.quota_info*, %struct.quota_info** %6, align 8
  %35 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %35, align 8
  %37 = load %struct.kqid*, %struct.kqid** %5, align 8
  %38 = getelementptr inbounds %struct.kqid, %struct.kqid* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.super_block*, %struct.kqid*)*, i32 (%struct.super_block*, %struct.kqid*)** %42, align 8
  %44 = load %struct.super_block*, %struct.super_block** %4, align 8
  %45 = load %struct.kqid*, %struct.kqid** %5, align 8
  %46 = call i32 %43(%struct.super_block* %44, %struct.kqid* %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %33, %30, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.quota_info* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @sb_has_quota_active(%struct.super_block*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
