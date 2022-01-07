; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_priv.h_xfs_set_li_failed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_priv.h_xfs_set_li_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_log_item = type { %struct.xfs_buf*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_buf = type { i32 }

@XFS_LI_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_log_item*, %struct.xfs_buf*)* @xfs_set_li_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_set_li_failed(%struct.xfs_log_item* %0, %struct.xfs_buf* %1) #0 {
  %3 = alloca %struct.xfs_log_item*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_log_item* %0, %struct.xfs_log_item** %3, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %4, align 8
  %5 = load %struct.xfs_log_item*, %struct.xfs_log_item** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load i32, i32* @XFS_LI_FAILED, align 4
  %11 = load %struct.xfs_log_item*, %struct.xfs_log_item** %3, align 8
  %12 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %11, i32 0, i32 1
  %13 = call i32 @test_and_set_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %17 = call i32 @xfs_buf_hold(%struct.xfs_buf* %16)
  %18 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %19 = load %struct.xfs_log_item*, %struct.xfs_log_item** %3, align 8
  %20 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %19, i32 0, i32 0
  store %struct.xfs_buf* %18, %struct.xfs_buf** %20, align 8
  br label %21

21:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @xfs_buf_hold(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
