; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_unlock_ast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlmfs/extr_userdlm.c_user_unlock_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dlm_lksb = type { i32 }
%struct.user_lock_res = type { i32, i32, i32, i8*, i8*, i32, i32 }

@ML_BASTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"UNLOCK AST fired for lockres %.*s, flags 0x%x\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"dlm returns status %d\0A\00", align 1
@USER_LOCK_IN_TEARDOWN = common dso_local global i32 0, align 4
@USER_LOCK_IN_CANCEL = common dso_local global i32 0, align 4
@DLM_LOCK_IV = common dso_local global i8* null, align 8
@DLM_CANCELGRANT = common dso_local global i32 0, align 4
@USER_LOCK_BLOCKED = common dso_local global i32 0, align 4
@USER_LOCK_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_dlm_lksb*, i32)* @user_unlock_ast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @user_unlock_ast(%struct.ocfs2_dlm_lksb* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_dlm_lksb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.user_lock_res*, align 8
  store %struct.ocfs2_dlm_lksb* %0, %struct.ocfs2_dlm_lksb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %3, align 8
  %7 = call %struct.user_lock_res* @user_lksb_to_lock_res(%struct.ocfs2_dlm_lksb* %6)
  store %struct.user_lock_res* %7, %struct.user_lock_res** %5, align 8
  %8 = load i32, i32* @ML_BASTS, align 4
  %9 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %10 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %13 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %16 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i32, i8*, i32, ...) @mlog(i32 %8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @ML_ERROR, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i32, i8*, i32, ...) @mlog(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %27 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %26, i32 0, i32 2
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %30 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @USER_LOCK_IN_TEARDOWN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %25
  %36 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %37 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @USER_LOCK_IN_CANCEL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = load i8*, i8** @DLM_LOCK_IV, align 8
  %44 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %45 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  br label %96

46:                                               ; preds = %35, %25
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @DLM_CANCELGRANT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %52 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @USER_LOCK_IN_CANCEL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load i32, i32* @USER_LOCK_IN_CANCEL, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %63 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %103

66:                                               ; preds = %46
  %67 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %68 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @USER_LOCK_IN_CANCEL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUG_ON(i32 %74)
  %76 = load i8*, i8** @DLM_LOCK_IV, align 8
  %77 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %78 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @USER_LOCK_IN_CANCEL, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %82 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %86 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @USER_LOCK_BLOCKED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %66
  %92 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %93 = call i32 @__user_dlm_queue_lockres(%struct.user_lock_res* %92)
  br label %94

94:                                               ; preds = %91, %66
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95, %42
  %97 = load i32, i32* @USER_LOCK_BUSY, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %100 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %96, %50
  %104 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %105 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %104, i32 0, i32 2
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load %struct.user_lock_res*, %struct.user_lock_res** %5, align 8
  %108 = getelementptr inbounds %struct.user_lock_res, %struct.user_lock_res* %107, i32 0, i32 1
  %109 = call i32 @wake_up(i32* %108)
  ret void
}

declare dso_local %struct.user_lock_res* @user_lksb_to_lock_res(%struct.ocfs2_dlm_lksb*) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__user_dlm_queue_lockres(%struct.user_lock_res*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
