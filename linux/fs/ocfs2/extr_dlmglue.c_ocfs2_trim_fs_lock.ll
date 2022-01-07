; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_trim_fs_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_trim_fs_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_trim_fs_info = type { i32, i8*, i8*, i8*, i8*, i32, i32 }
%struct.ocfs2_trim_fs_lvb = type { i64, i32, i32, i32, i32, i32, i32 }

@EROFS = common dso_local global i32 0, align 4
@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@OCFS2_TRIMFS_LVB_VERSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_trim_fs_lock(%struct.ocfs2_super* %0, %struct.ocfs2_trim_fs_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca %struct.ocfs2_trim_fs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_trim_fs_lvb*, align 8
  %10 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store %struct.ocfs2_trim_fs_info* %1, %struct.ocfs2_trim_fs_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %12 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %11, i32 0, i32 0
  store %struct.ocfs2_lock_res* %12, %struct.ocfs2_lock_res** %10, align 8
  %13 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %6, align 8
  %14 = icmp ne %struct.ocfs2_trim_fs_info* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %6, align 8
  %17 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %20 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EROFS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %112

25:                                               ; preds = %18
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %27 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %112

30:                                               ; preds = %25
  %31 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %32 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %33 = load i32, i32* @DLM_LOCK_EX, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  br label %39

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = call i32 @ocfs2_cluster_lock(%struct.ocfs2_super* %31, %struct.ocfs2_lock_res* %32, i32 %33, i32 %40, i32 0)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @mlog_errno(i32 %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %112

54:                                               ; preds = %39
  %55 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %6, align 8
  %56 = icmp ne %struct.ocfs2_trim_fs_info* %55, null
  br i1 %56, label %57, label %110

57:                                               ; preds = %54
  %58 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %59 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %58, i32 0, i32 0
  %60 = call %struct.ocfs2_trim_fs_lvb* @ocfs2_dlm_lvb(i32* %59)
  store %struct.ocfs2_trim_fs_lvb* %60, %struct.ocfs2_trim_fs_lvb** %9, align 8
  %61 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %10, align 8
  %62 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %61, i32 0, i32 0
  %63 = call i64 @ocfs2_dlm_lvb_valid(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %109

65:                                               ; preds = %57
  %66 = load %struct.ocfs2_trim_fs_lvb*, %struct.ocfs2_trim_fs_lvb** %9, align 8
  %67 = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, %struct.ocfs2_trim_fs_lvb* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @OCFS2_TRIMFS_LVB_VERSION, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %109

71:                                               ; preds = %65
  %72 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %6, align 8
  %73 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.ocfs2_trim_fs_lvb*, %struct.ocfs2_trim_fs_lvb** %9, align 8
  %75 = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, %struct.ocfs2_trim_fs_lvb* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %6, align 8
  %78 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ocfs2_trim_fs_lvb*, %struct.ocfs2_trim_fs_lvb** %9, align 8
  %80 = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, %struct.ocfs2_trim_fs_lvb* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @be32_to_cpu(i32 %81)
  %83 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %6, align 8
  %84 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ocfs2_trim_fs_lvb*, %struct.ocfs2_trim_fs_lvb** %9, align 8
  %86 = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, %struct.ocfs2_trim_fs_lvb* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @be64_to_cpu(i32 %87)
  %89 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %6, align 8
  %90 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load %struct.ocfs2_trim_fs_lvb*, %struct.ocfs2_trim_fs_lvb** %9, align 8
  %92 = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, %struct.ocfs2_trim_fs_lvb* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @be64_to_cpu(i32 %93)
  %95 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %6, align 8
  %96 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load %struct.ocfs2_trim_fs_lvb*, %struct.ocfs2_trim_fs_lvb** %9, align 8
  %98 = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, %struct.ocfs2_trim_fs_lvb* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @be64_to_cpu(i32 %99)
  %101 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %6, align 8
  %102 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ocfs2_trim_fs_lvb*, %struct.ocfs2_trim_fs_lvb** %9, align 8
  %104 = getelementptr inbounds %struct.ocfs2_trim_fs_lvb, %struct.ocfs2_trim_fs_lvb* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i8* @be64_to_cpu(i32 %105)
  %107 = load %struct.ocfs2_trim_fs_info*, %struct.ocfs2_trim_fs_info** %6, align 8
  %108 = getelementptr inbounds %struct.ocfs2_trim_fs_info, %struct.ocfs2_trim_fs_info* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %71, %65, %57
  br label %110

110:                                              ; preds = %109, %54
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %52, %29, %22
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_cluster_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.ocfs2_trim_fs_lvb* @ocfs2_dlm_lvb(i32*) #1

declare dso_local i64 @ocfs2_dlm_lvb_valid(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i8* @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
