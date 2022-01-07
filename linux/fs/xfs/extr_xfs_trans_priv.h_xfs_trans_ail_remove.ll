; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_priv.h_xfs_trans_ail_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_priv.h_xfs_trans_ail_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_log_item = type { i32, %struct.xfs_ail* }
%struct.xfs_ail = type { i32 }

@XFS_LI_IN_AIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_log_item*, i32)* @xfs_trans_ail_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_trans_ail_remove(%struct.xfs_log_item* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_log_item*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_ail*, align 8
  store %struct.xfs_log_item* %0, %struct.xfs_log_item** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xfs_log_item*, %struct.xfs_log_item** %3, align 8
  %7 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %6, i32 0, i32 1
  %8 = load %struct.xfs_ail*, %struct.xfs_ail** %7, align 8
  store %struct.xfs_ail* %8, %struct.xfs_ail** %5, align 8
  %9 = load %struct.xfs_ail*, %struct.xfs_ail** %5, align 8
  %10 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* @XFS_LI_IN_AIL, align 4
  %13 = load %struct.xfs_log_item*, %struct.xfs_log_item** %3, align 8
  %14 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %13, i32 0, i32 0
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.xfs_ail*, %struct.xfs_ail** %5, align 8
  %19 = load %struct.xfs_log_item*, %struct.xfs_log_item** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @xfs_trans_ail_delete(%struct.xfs_ail* %18, %struct.xfs_log_item* %19, i32 %20)
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.xfs_ail*, %struct.xfs_ail** %5, align 8
  %24 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  br label %26

26:                                               ; preds = %22, %17
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @xfs_trans_ail_delete(%struct.xfs_ail*, %struct.xfs_log_item*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
