; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_cancel_convert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_cancel_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { i32, i32 }

@DLM_LKF_CANCEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ocfs2_dlm_unlock\00", align 1
@ML_BASTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"lockres %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*)* @ocfs2_cancel_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_cancel_convert(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_lock_res*, align 8
  %5 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %4, align 8
  %6 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %10 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %9, i32 0, i32 1
  %11 = load i32, i32* @DLM_LKF_CANCEL, align 4
  %12 = call i32 @ocfs2_dlm_unlock(i32 %8, i32* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %18 = call i32 @ocfs2_log_dlm_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %16, %struct.ocfs2_lock_res* %17)
  %19 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %20 = call i32 @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res* %19, i32 0)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load i32, i32* @ML_BASTS, align 4
  %23 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %24 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mlog(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @ocfs2_dlm_unlock(i32, i32*, i32) #1

declare dso_local i32 @ocfs2_log_dlm_error(i8*, i32, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
