; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_downconvert_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_downconvert_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DLM_LKF_CONVERT = common dso_local global i32 0, align 4
@ML_BASTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"lockres %s, level %d => %d\0A\00", align 1
@LOCK_TYPE_USES_LVB = common dso_local global i32 0, align 4
@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@OCFS2_LOCK_ID_MAX_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"ocfs2_dlm_lock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32)* @ocfs2_downconvert_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_downconvert_lock(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca %struct.ocfs2_lock_res*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @DLM_LKF_CONVERT, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* @ML_BASTS, align 4
  %15 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %16 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %19 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @mlog(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %21)
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %24 = call i64 @ocfs2_userspace_stack(%struct.ocfs2_super* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %5
  %27 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %28 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LOCK_TYPE_USES_LVB, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %26, %5
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %45 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %49 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %48, i32 0, i32 1
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %52 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* @OCFS2_LOCK_ID_MAX_LEN, align 8
  %55 = sub nsw i64 %54, 1
  %56 = call i32 @ocfs2_dlm_lock(i32 %46, i32 %47, i32* %49, i32 %50, i32 %53, i64 %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %60 = call i32 @lockres_clear_pending(%struct.ocfs2_lock_res* %57, i32 %58, %struct.ocfs2_super* %59)
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %43
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %66 = call i32 @ocfs2_log_dlm_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %64, %struct.ocfs2_lock_res* %65)
  %67 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %68 = call i32 @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res* %67, i32 1)
  br label %70

69:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %69, %63
  %71 = load i32, i32* %11, align 4
  ret i32 %71
}

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @ocfs2_userspace_stack(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_dlm_lock(i32, i32, i32*, i32, i32, i64) #1

declare dso_local i32 @lockres_clear_pending(%struct.ocfs2_lock_res*, i32, %struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_log_dlm_error(i8*, i32, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
