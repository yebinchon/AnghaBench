; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_refcount_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_refcount_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_refcount_tree = type { %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { %struct.ocfs2_super* }
%struct.ocfs2_super = type { i32 }

@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_refcount_unlock(%struct.ocfs2_refcount_tree* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_refcount_tree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_lock_res*, align 8
  %7 = alloca %struct.ocfs2_super*, align 8
  store %struct.ocfs2_refcount_tree* %0, %struct.ocfs2_refcount_tree** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @DLM_LOCK_EX, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @DLM_LOCK_PR, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %3, align 8
  %17 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %16, i32 0, i32 0
  store %struct.ocfs2_lock_res* %17, %struct.ocfs2_lock_res** %6, align 8
  %18 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %19 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %18, i32 0, i32 0
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %19, align 8
  store %struct.ocfs2_super* %20, %struct.ocfs2_super** %7, align 8
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %22 = call i32 @ocfs2_mount_local(%struct.ocfs2_super* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %14
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %26 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ocfs2_cluster_unlock(%struct.ocfs2_super* %25, %struct.ocfs2_lock_res* %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %14
  ret void
}

declare dso_local i32 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_cluster_unlock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
