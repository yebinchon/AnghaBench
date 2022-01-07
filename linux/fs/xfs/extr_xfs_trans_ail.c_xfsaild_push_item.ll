; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_ail.c_xfsaild_push_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_ail.c_xfsaild_push_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ail = type { i32, i32 }
%struct.xfs_log_item = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xfs_log_item*, i32*)* }

@XFS_ERRTAG_LOG_ITEM_PIN = common dso_local global i32 0, align 4
@XFS_ITEM_PINNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_ail*, %struct.xfs_log_item*)* @xfsaild_push_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfsaild_push_item(%struct.xfs_ail* %0, %struct.xfs_log_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_ail*, align 8
  %5 = alloca %struct.xfs_log_item*, align 8
  store %struct.xfs_ail* %0, %struct.xfs_ail** %4, align 8
  store %struct.xfs_log_item* %1, %struct.xfs_log_item** %5, align 8
  %6 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @XFS_ERRTAG_LOG_ITEM_PIN, align 4
  %10 = call i64 @XFS_TEST_ERROR(i32 0, i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @XFS_ITEM_PINNED, align 4
  store i32 %13, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.xfs_log_item*, %struct.xfs_log_item** %5, align 8
  %16 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.xfs_log_item*, i32*)*, i32 (%struct.xfs_log_item*, i32*)** %18, align 8
  %20 = icmp ne i32 (%struct.xfs_log_item*, i32*)* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @XFS_ITEM_PINNED, align 4
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %14
  %24 = load %struct.xfs_log_item*, %struct.xfs_log_item** %5, align 8
  %25 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.xfs_log_item*, i32*)*, i32 (%struct.xfs_log_item*, i32*)** %27, align 8
  %29 = load %struct.xfs_log_item*, %struct.xfs_log_item** %5, align 8
  %30 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %31 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %30, i32 0, i32 0
  %32 = call i32 %28(%struct.xfs_log_item* %29, i32* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %23, %21, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @XFS_TEST_ERROR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
