; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_orphan_scan_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_orphan_scan_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_orphan_scan_lvb = type { i64, i32 }

@EROFS = common dso_local global i32 0, align 4
@DLM_LOCK_EX = common dso_local global i32 0, align 4
@OCFS2_ORPHAN_LVB_VERSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_orphan_scan_lock(%struct.ocfs2_super* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.ocfs2_lock_res*, align 8
  %7 = alloca %struct.ocfs2_orphan_scan_lvb*, align 8
  %8 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %10 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EROFS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %61

15:                                               ; preds = %2
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %17 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %61

20:                                               ; preds = %15
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %22 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store %struct.ocfs2_lock_res* %23, %struct.ocfs2_lock_res** %6, align 8
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %25 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %26 = load i32, i32* @DLM_LOCK_EX, align 4
  %27 = call i32 @ocfs2_cluster_lock(%struct.ocfs2_super* %24, %struct.ocfs2_lock_res* %25, i32 %26, i32 0, i32 0)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %61

32:                                               ; preds = %20
  %33 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %34 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %33, i32 0, i32 0
  %35 = call %struct.ocfs2_orphan_scan_lvb* @ocfs2_dlm_lvb(i32* %34)
  store %struct.ocfs2_orphan_scan_lvb* %35, %struct.ocfs2_orphan_scan_lvb** %7, align 8
  %36 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %37 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %36, i32 0, i32 0
  %38 = call i64 @ocfs2_dlm_lvb_valid(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %32
  %41 = load %struct.ocfs2_orphan_scan_lvb*, %struct.ocfs2_orphan_scan_lvb** %7, align 8
  %42 = getelementptr inbounds %struct.ocfs2_orphan_scan_lvb, %struct.ocfs2_orphan_scan_lvb* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @OCFS2_ORPHAN_LVB_VERSION, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.ocfs2_orphan_scan_lvb*, %struct.ocfs2_orphan_scan_lvb** %7, align 8
  %48 = getelementptr inbounds %struct.ocfs2_orphan_scan_lvb, %struct.ocfs2_orphan_scan_lvb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @be32_to_cpu(i32 %49)
  %51 = load i64*, i64** %5, align 8
  store i64 %50, i64* %51, align 8
  br label %59

52:                                               ; preds = %40, %32
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %54 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  %58 = load i64*, i64** %5, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %52, %46
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %30, %19, %12
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_cluster_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32) #1

declare dso_local %struct.ocfs2_orphan_scan_lvb* @ocfs2_dlm_lvb(i32*) #1

declare dso_local i64 @ocfs2_dlm_lvb_valid(i32*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
