; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_super_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_super_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32 }

@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_super_lock(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @DLM_LOCK_EX, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @DLM_LOCK_PR, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %18 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %17, i32 0, i32 0
  store %struct.ocfs2_lock_res* %18, %struct.ocfs2_lock_res** %8, align 8
  %19 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %20 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @EROFS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %66

25:                                               ; preds = %15
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %27 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %64

30:                                               ; preds = %25
  %31 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %32 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ocfs2_cluster_lock(%struct.ocfs2_super* %31, %struct.ocfs2_lock_res* %32, i32 %33, i32 0, i32 0)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @mlog_errno(i32 %38)
  br label %64

40:                                               ; preds = %30
  %41 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %42 = call i32 @ocfs2_should_refresh_lock_res(%struct.ocfs2_lock_res* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %47 = call i32 @ocfs2_refresh_slot_info(%struct.ocfs2_super* %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ocfs2_complete_lock_res_refresh(%struct.ocfs2_lock_res* %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %55 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ocfs2_cluster_unlock(%struct.ocfs2_super* %54, %struct.ocfs2_lock_res* %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @mlog_errno(i32 %58)
  br label %60

60:                                               ; preds = %53, %45
  %61 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %62 = call i32 @ocfs2_track_lock_refresh(%struct.ocfs2_lock_res* %61)
  br label %63

63:                                               ; preds = %60, %40
  br label %64

64:                                               ; preds = %63, %37, %29
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %22
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_cluster_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_should_refresh_lock_res(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_refresh_slot_info(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_complete_lock_res_refresh(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_cluster_unlock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_track_lock_refresh(%struct.ocfs2_lock_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
