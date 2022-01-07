; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_priv.h_xfs_clear_li_failed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_priv.h_xfs_clear_li_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_log_item = type { %struct.xfs_buf*, i32, %struct.TYPE_2__* }
%struct.xfs_buf = type { i32 }
%struct.TYPE_2__ = type { i32 }

@XFS_LI_IN_AIL = common dso_local global i32 0, align 4
@XFS_LI_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_log_item*)* @xfs_clear_li_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_clear_li_failed(%struct.xfs_log_item* %0) #0 {
  %2 = alloca %struct.xfs_log_item*, align 8
  %3 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_log_item* %0, %struct.xfs_log_item** %2, align 8
  %4 = load %struct.xfs_log_item*, %struct.xfs_log_item** %2, align 8
  %5 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %4, i32 0, i32 0
  %6 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  store %struct.xfs_buf* %6, %struct.xfs_buf** %3, align 8
  %7 = load i32, i32* @XFS_LI_IN_AIL, align 4
  %8 = load %struct.xfs_log_item*, %struct.xfs_log_item** %2, align 8
  %9 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %8, i32 0, i32 1
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.xfs_log_item*, %struct.xfs_log_item** %2, align 8
  %13 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load i32, i32* @XFS_LI_FAILED, align 4
  %18 = load %struct.xfs_log_item*, %struct.xfs_log_item** %2, align 8
  %19 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %18, i32 0, i32 1
  %20 = call i64 @test_and_clear_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.xfs_log_item*, %struct.xfs_log_item** %2, align 8
  %24 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %23, i32 0, i32 0
  store %struct.xfs_buf* null, %struct.xfs_buf** %24, align 8
  %25 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %26 = call i32 @xfs_buf_rele(%struct.xfs_buf* %25)
  br label %27

27:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @xfs_buf_rele(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
