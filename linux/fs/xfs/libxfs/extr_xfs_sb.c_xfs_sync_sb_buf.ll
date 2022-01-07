; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_sync_sb_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_sync_sb_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_sync_sb_buf(%struct.xfs_mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_trans*, align 8
  %5 = alloca %struct.xfs_buf*, align 8
  %6 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %8 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %9 = call %struct.TYPE_2__* @M_RES(%struct.xfs_mount* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %7, i32* %10, i32 0, i32 0, i32 0, %struct.xfs_trans** %4)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %19 = call %struct.xfs_buf* @xfs_trans_getsb(%struct.xfs_trans* %17, %struct.xfs_mount* %18)
  store %struct.xfs_buf* %19, %struct.xfs_buf** %5, align 8
  %20 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %21 = call i32 @xfs_log_sb(%struct.xfs_trans* %20)
  %22 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %23 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %24 = call i32 @xfs_trans_bhold(%struct.xfs_trans* %22, %struct.xfs_buf* %23)
  %25 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %26 = call i32 @xfs_trans_set_sync(%struct.xfs_trans* %25)
  %27 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %28 = call i32 @xfs_trans_commit(%struct.xfs_trans* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %35

32:                                               ; preds = %16
  %33 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %34 = call i32 @xfs_bwrite(%struct.xfs_buf* %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %31
  %36 = load %struct.xfs_buf*, %struct.xfs_buf** %5, align 8
  %37 = call i32 @xfs_buf_relse(%struct.xfs_buf* %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_2__* @M_RES(%struct.xfs_mount*) #1

declare dso_local %struct.xfs_buf* @xfs_trans_getsb(%struct.xfs_trans*, %struct.xfs_mount*) #1

declare dso_local i32 @xfs_log_sb(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_trans_bhold(%struct.xfs_trans*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_trans_set_sync(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_bwrite(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
