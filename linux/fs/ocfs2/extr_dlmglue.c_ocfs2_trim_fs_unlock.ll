; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_trim_fs_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_trim_fs_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_trim_fs_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ocfs2_trim_fs_lvb = type { i8*, i8*, i8*, i8*, i32, i32, i32 }

@OCFS2_TRIMFS_LVB_VERSION = common dso_local global i32 0, align 4
@DLM_LOCK_EX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_trim_fs_unlock(%struct.ocfs2_super* %0, %struct.ocfs2_trim_fs_info* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_trim_fs_info*, align 8
  %5 = alloca %struct.ocfs2_trim_fs_lvb*, align 8
  %6 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_trim_fs_info* %1, %struct.ocfs2_trim_fs_info** %4, align 8
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 0
  store %struct.ocfs2_lock_res* %8, %struct.ocfs2_lock_res** %6, align 8
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %10 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %63

13:                                               ; preds = %2
  %14 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %4, align 8
  %15 = icmp ne %struct.ocfs2_trim_fs_info* %14, null
  br i1 %15, label %16, label %58

16:                                               ; preds = %13
  %17 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %18 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %17, i32 0, i32 0
  %19 = call %struct.ocfs2_trim_fs_lvb* @ocfs2_dlm_lvb(i32* %18)
  store %struct.ocfs2_trim_fs_lvb* %19, %struct.ocfs2_trim_fs_lvb** %5, align 8
  %20 = load i32, i32* @OCFS2_TRIMFS_LVB_VERSION, align 4
  %21 = load %struct.ocfs2_trim_fs_lvb*, %struct.ocfs2_trim_fs_lvb** %5, align 8
  %22 = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, %struct.ocfs2_trim_fs_lvb* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %4, align 8
  %24 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ocfs2_trim_fs_lvb*, %struct.ocfs2_trim_fs_lvb** %5, align 8
  %27 = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, %struct.ocfs2_trim_fs_lvb* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %4, align 8
  %29 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cpu_to_be32(i32 %30)
  %32 = load %struct.ocfs2_trim_fs_lvb*, %struct.ocfs2_trim_fs_lvb** %5, align 8
  %33 = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, %struct.ocfs2_trim_fs_lvb* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %4, align 8
  %35 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_be64(i32 %36)
  %38 = load %struct.ocfs2_trim_fs_lvb*, %struct.ocfs2_trim_fs_lvb** %5, align 8
  %39 = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, %struct.ocfs2_trim_fs_lvb* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %4, align 8
  %41 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_be64(i32 %42)
  %44 = load %struct.ocfs2_trim_fs_lvb*, %struct.ocfs2_trim_fs_lvb** %5, align 8
  %45 = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, %struct.ocfs2_trim_fs_lvb* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %4, align 8
  %47 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @cpu_to_be64(i32 %48)
  %50 = load %struct.ocfs2_trim_fs_lvb*, %struct.ocfs2_trim_fs_lvb** %5, align 8
  %51 = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, %struct.ocfs2_trim_fs_lvb* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %4, align 8
  %53 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_be64(i32 %54)
  %56 = load %struct.ocfs2_trim_fs_lvb*, %struct.ocfs2_trim_fs_lvb** %5, align 8
  %57 = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, %struct.ocfs2_trim_fs_lvb* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %16, %13
  %59 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %60 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %61 = load i32, i32* @DLM_LOCK_EX, align 4
  %62 = call i32 @ocfs2_cluster_unlock(%struct.ocfs2_super* %59, %struct.ocfs2_lock_res* %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %12
  ret void
}

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local %struct.ocfs2_trim_fs_lvb* @ocfs2_dlm_lvb(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @ocfs2_cluster_unlock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
