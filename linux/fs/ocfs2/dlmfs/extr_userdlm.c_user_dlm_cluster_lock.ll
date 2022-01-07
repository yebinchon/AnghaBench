; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_dlm_cluster_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_dlm_cluster_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_lock_res = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ocfs2_cluster_connection = type { i32 }

@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"lockres %.*s: invalid request!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ML_BASTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"lockres %.*s, level %d, flags = 0x%x\0A\00", align 1
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@USER_LOCK_BUSY = common dso_local global i32 0, align 4
@USER_LOCK_BLOCKED = common dso_local global i32 0, align 4
@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@DLM_LOCK_IV = common dso_local global i32 0, align 4
@DLM_LKF_CONVERT = common dso_local global i32 0, align 4
@DLM_LOCK_NL = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"ocfs2_dlm_lock\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_dlm_cluster_lock(%struct.user_lock_res* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.user_lock_res*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_cluster_connection*, align 8
  store %struct.user_lock_res* %0, %struct.user_lock_res** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %11 = call %struct.ocfs2_cluster_connection* @cluster_connection_from_user_lockres(%struct.user_lock_res* %10)
  store %struct.ocfs2_cluster_connection* %11, %struct.ocfs2_cluster_connection** %9, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DLM_LOCK_EX, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @DLM_LOCK_PR, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load i32, i32* @ML_ERROR, align 4
  %21 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %22 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %25 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %170

30:                                               ; preds = %15, %3
  %31 = load i32, i32* @ML_BASTS, align 4
  %32 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %33 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %36 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %160, %82, %64, %30
  %42 = load i32, i32* @current, align 4
  %43 = call i64 @signal_pending(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @ERESTARTSYS, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %170

48:                                               ; preds = %41
  %49 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %50 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %49, i32 0, i32 3
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %53 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @USER_LOCK_BUSY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %48
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %61 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %66 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %65, i32 0, i32 3
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %69 = call i32 @user_wait_on_busy_lock(%struct.user_lock_res* %68)
  br label %41

70:                                               ; preds = %58, %48
  %71 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %72 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @USER_LOCK_BLOCKED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %70
  %78 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @user_may_continue_on_blocked_lock(%struct.user_lock_res* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %77
  %83 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %84 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %83, i32 0, i32 3
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %87 = call i32 @user_wait_on_blocked_lock(%struct.user_lock_res* %86)
  br label %41

88:                                               ; preds = %77, %70
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %91 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %89, %92
  br i1 %93, label %94, label %163

94:                                               ; preds = %88
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %8, align 4
  %98 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %99 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @DLM_LOCK_IV, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %105 = load i32, i32* %8, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %103, %94
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %110 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @USER_LOCK_BUSY, align 4
  %112 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %113 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %117 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %116, i32 0, i32 3
  %118 = call i32 @spin_unlock(i32* %117)
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @DLM_LOCK_IV, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @BUG_ON(i32 %122)
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @DLM_LOCK_NL, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @BUG_ON(i32 %127)
  %129 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %9, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %132 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %131, i32 0, i32 6
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %135 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %138 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ocfs2_dlm_lock(%struct.ocfs2_cluster_connection* %129, i32 %130, i32* %132, i32 %133, i32 %136, i32 %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %107
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %143
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @EAGAIN, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp ne i32 %149, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %156 = call i32 @user_log_dlm_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %154, %struct.user_lock_res* %155)
  br label %157

157:                                              ; preds = %153, %148, %143
  %158 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %159 = call i32 @user_recover_from_dlm_error(%struct.user_lock_res* %158)
  br label %170

160:                                              ; preds = %107
  %161 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %162 = call i32 @user_wait_on_busy_lock(%struct.user_lock_res* %161)
  br label %41

163:                                              ; preds = %88
  %164 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @user_dlm_inc_holders(%struct.user_lock_res* %164, i32 %165)
  %167 = load %struct.user_lock_res*, %struct.user_lock_res** %4, align 8
  %168 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %167, i32 0, i32 3
  %169 = call i32 @spin_unlock(i32* %168)
  store i32 0, i32* %7, align 4
  br label %170

170:                                              ; preds = %163, %157, %45, %19
  %171 = load i32, i32* %7, align 4
  ret i32 %171
}

declare dso_local %struct.ocfs2_cluster_connection* @cluster_connection_from_user_lockres(%struct.user_lock_res*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, ...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @user_wait_on_busy_lock(%struct.user_lock_res*) #1

declare dso_local i32 @user_may_continue_on_blocked_lock(%struct.user_lock_res*, i32) #1

declare dso_local i32 @user_wait_on_blocked_lock(%struct.user_lock_res*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_dlm_lock(%struct.ocfs2_cluster_connection*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @user_log_dlm_error(i8*, i32, %struct.user_lock_res*) #1

declare dso_local i32 @user_recover_from_dlm_error(%struct.user_lock_res*) #1

declare dso_local i32 @user_dlm_inc_holders(%struct.user_lock_res*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
