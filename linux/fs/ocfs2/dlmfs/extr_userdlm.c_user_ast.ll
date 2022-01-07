; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_ast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dlm_lksb = type { i32 }
%struct.user_lock_res = type { i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@ML_BASTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"AST fired for lockres %.*s, level %d => %d\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"lksb status value of %u on lockres %.*s\0A\00", align 1
@DLM_LOCK_IV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Lockres %.*s, requested ivmode. flags 0x%x\0A\00", align 1
@DLM_LOCK_NL = common dso_local global i32 0, align 4
@USER_LOCK_BLOCKED = common dso_local global i32 0, align 4
@USER_LOCK_ATTACHED = common dso_local global i32 0, align 4
@USER_LOCK_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_dlm_lksb*)* @user_ast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @user_ast(%struct.ocfs2_dlm_lksb* %0) #0 {
  %2 = alloca %struct.ocfs2_dlm_lksb*, align 8
  %3 = alloca %struct.user_lock_res*, align 8
  %4 = alloca i32, align 4
  store %struct.ocfs2_dlm_lksb* %0, %struct.ocfs2_dlm_lksb** %2, align 8
  %5 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %2, align 8
  %6 = call %struct.user_lock_res* @user_lksb_to_lock_res(%struct.ocfs2_dlm_lksb* %5)
  store %struct.user_lock_res* %6, %struct.user_lock_res** %3, align 8
  %7 = load i32, i32* @ML_BASTS, align 4
  %8 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %9 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %12 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %15 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %18 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i32, i8*, i32, i32, i64, ...) @mlog(i32 %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i64 %16, i64 %19)
  %21 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %22 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %21, i32 0, i32 3
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %25 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %24, i32 0, i32 8
  %26 = call i32 @ocfs2_dlm_lock_status(i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %1
  %30 = load i32, i32* @ML_ERROR, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %33 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %36 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = call i32 (i32, i8*, i32, i32, i64, ...) @mlog(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34, i64 %38)
  %40 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %41 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %40, i32 0, i32 3
  %42 = call i32 @spin_unlock(i32* %41)
  br label %113

43:                                               ; preds = %1
  %44 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %45 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DLM_LOCK_IV, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %51 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %54 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %57 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mlog_bug_on_msg(i32 %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %55, i32 %58)
  %60 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %61 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %64 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %43
  %68 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %69 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %72 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @user_highest_compat_lock_level(i32 %73)
  %75 = icmp sle i64 %70, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %67
  %77 = load i32, i32* @DLM_LOCK_NL, align 4
  %78 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %79 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @USER_LOCK_BLOCKED, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %83 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %76, %67
  br label %87

87:                                               ; preds = %86, %43
  %88 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %89 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %92 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* @DLM_LOCK_IV, align 8
  %94 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %95 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* @USER_LOCK_ATTACHED, align 4
  %97 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %98 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* @USER_LOCK_BUSY, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %104 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %108 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %107, i32 0, i32 3
  %109 = call i32 @spin_unlock(i32* %108)
  %110 = load %struct.user_lock_res*, %struct.user_lock_res** %3, align 8
  %111 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %110, i32 0, i32 2
  %112 = call i32 @wake_up(i32* %111)
  br label %113

113:                                              ; preds = %87, %29
  ret void
}

declare dso_local %struct.user_lock_res* @user_lksb_to_lock_res(%struct.ocfs2_dlm_lksb*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i64, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ocfs2_dlm_lock_status(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @user_highest_compat_lock_level(i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
