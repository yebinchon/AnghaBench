; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_dlm_destroy_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_dlm_destroy_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_lock_res = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.ocfs2_cluster_connection = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@ML_BASTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"lockres %.*s\0A\00", align 1
@USER_LOCK_IN_TEARDOWN = common dso_local global i32 0, align 4
@USER_LOCK_BUSY = common dso_local global i32 0, align 4
@USER_LOCK_ATTACHED = common dso_local global i32 0, align 4
@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ocfs2_dlm_unlock\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_dlm_destroy_lock(%struct.user_lock_res* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.user_lock_res*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_cluster_connection*, align 8
  store %struct.user_lock_res* %0, %struct.user_lock_res** %3, align 8
  %6 = load i32, i32* @EBUSY, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %9 = call %struct.ocfs2_cluster_connection* @cluster_connection_from_user_lockres(%struct.user_lock_res* %8)
  store %struct.ocfs2_cluster_connection* %9, %struct.ocfs2_cluster_connection** %5, align 8
  %10 = load i32, i32* @ML_BASTS, align 4
  %11 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %12 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %15 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mlog(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %19 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %18, i32 0, i32 2
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %22 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @USER_LOCK_IN_TEARDOWN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %29 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %28, i32 0, i32 2
  %30 = call i32 @spin_unlock(i32* %29)
  store i32 0, i32* %2, align 4
  br label %109

31:                                               ; preds = %1
  %32 = load i32, i32* @USER_LOCK_IN_TEARDOWN, align 4
  %33 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %34 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %44, %31
  %38 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %39 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @USER_LOCK_BUSY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %46 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %45, i32 0, i32 2
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %49 = call i32 @user_wait_on_busy_lock(%struct.user_lock_res* %48)
  %50 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %51 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %50, i32 0, i32 2
  %52 = call i32 @spin_lock(i32* %51)
  br label %37

53:                                               ; preds = %37
  %54 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %55 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %60 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58, %53
  %64 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %65 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %64, i32 0, i32 2
  %66 = call i32 @spin_unlock(i32* %65)
  br label %107

67:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  %68 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %69 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @USER_LOCK_ATTACHED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %67
  %75 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %76 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %75, i32 0, i32 2
  %77 = call i32 @spin_unlock(i32* %76)
  br label %107

78:                                               ; preds = %67
  %79 = load i32, i32* @USER_LOCK_ATTACHED, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %82 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* @USER_LOCK_BUSY, align 4
  %86 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %87 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %91 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %90, i32 0, i32 2
  %92 = call i32 @spin_unlock(i32* %91)
  %93 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %5, align 8
  %94 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %95 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %94, i32 0, i32 1
  %96 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %97 = call i32 @ocfs2_dlm_unlock(%struct.ocfs2_cluster_connection* %93, i32* %95, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %78
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %103 = call i32 @user_log_dlm_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %101, %struct.user_lock_res* %102)
  br label %107

104:                                              ; preds = %78
  %105 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %106 = call i32 @user_wait_on_busy_lock(%struct.user_lock_res* %105)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %104, %100, %74, %63
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %27
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.ocfs2_cluster_connection* @cluster_connection_from_user_lockres(%struct.user_lock_res*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @user_wait_on_busy_lock(%struct.user_lock_res*) #1

declare dso_local i32 @ocfs2_dlm_unlock(%struct.ocfs2_cluster_connection*, i32*, i32) #1

declare dso_local i32 @user_log_dlm_error(i8*, i32, %struct.user_lock_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
