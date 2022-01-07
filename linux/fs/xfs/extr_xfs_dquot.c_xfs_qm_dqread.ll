; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_dquot = type { i32 }
%struct.xfs_buf = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_mount*, i32, i32, i32, %struct.xfs_dquot**)* @xfs_qm_dqread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_qm_dqread(%struct.xfs_mount* %0, i32 %1, i32 %2, i32 %3, %struct.xfs_dquot** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_dquot**, align 8
  %12 = alloca %struct.xfs_dquot*, align 8
  %13 = alloca %struct.xfs_buf*, align 8
  %14 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.xfs_dquot** %4, %struct.xfs_dquot*** %11, align 8
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.xfs_dquot* @xfs_dquot_alloc(%struct.xfs_mount* %15, i32 %16, i32 %17)
  store %struct.xfs_dquot* %18, %struct.xfs_dquot** %12, align 8
  %19 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %20 = call i32 @trace_xfs_dqread(%struct.xfs_dquot* %19)
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %22 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %23 = call i32 @xfs_dquot_disk_read(%struct.xfs_mount* %21, %struct.xfs_dquot* %22, %struct.xfs_buf** %13)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %33 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %34 = call i32 @xfs_qm_dqread_alloc(%struct.xfs_mount* %32, %struct.xfs_dquot* %33, %struct.xfs_buf** %13)
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %31, %28, %5
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %51

39:                                               ; preds = %35
  %40 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %41 = call i32 @xfs_buf_islocked(%struct.xfs_buf* %40)
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %44 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %45 = call i32 @xfs_dquot_from_disk(%struct.xfs_dquot* %43, %struct.xfs_buf* %44)
  %46 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %47 = call i32 @xfs_buf_relse(%struct.xfs_buf* %46)
  %48 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %49 = load %struct.xfs_dquot**, %struct.xfs_dquot*** %11, align 8
  store %struct.xfs_dquot* %48, %struct.xfs_dquot** %49, align 8
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %6, align 4
  br label %58

51:                                               ; preds = %38
  %52 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %53 = call i32 @trace_xfs_dqread_fail(%struct.xfs_dquot* %52)
  %54 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %55 = call i32 @xfs_qm_dqdestroy(%struct.xfs_dquot* %54)
  %56 = load %struct.xfs_dquot**, %struct.xfs_dquot*** %11, align 8
  store %struct.xfs_dquot* null, %struct.xfs_dquot** %56, align 8
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %51, %39
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.xfs_dquot* @xfs_dquot_alloc(%struct.xfs_mount*, i32, i32) #1

declare dso_local i32 @trace_xfs_dqread(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_dquot_disk_read(%struct.xfs_mount*, %struct.xfs_dquot*, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_qm_dqread_alloc(%struct.xfs_mount*, %struct.xfs_dquot*, %struct.xfs_buf**) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_buf_islocked(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_dquot_from_disk(%struct.xfs_dquot*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

declare dso_local i32 @trace_xfs_dqread_fail(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_qm_dqdestroy(%struct.xfs_dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
