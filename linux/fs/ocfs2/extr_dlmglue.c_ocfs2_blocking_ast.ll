; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_blocking_ast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_blocking_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dlm_lksb = type { i32 }
%struct.ocfs2_lock_res = type { i32, i32, i32, i32, i32, i32 }
%struct.ocfs2_super = type { i32 }

@DLM_LOCK_NL = common dso_local global i32 0, align 4
@ML_BASTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"BAST fired for lockres %s, blocking %d, level %d, type %s\0A\00", align 1
@OCFS2_LOCK_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_dlm_lksb*, i32)* @ocfs2_blocking_ast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_blocking_ast(%struct.ocfs2_dlm_lksb* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_dlm_lksb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_lock_res*, align 8
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ocfs2_dlm_lksb* %0, %struct.ocfs2_dlm_lksb** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %3, align 8
  %10 = call %struct.ocfs2_lock_res* @ocfs2_lksb_to_lock_res(%struct.ocfs2_dlm_lksb* %9)
  store %struct.ocfs2_lock_res* %10, %struct.ocfs2_lock_res** %5, align 8
  %11 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %12 = call %struct.ocfs2_super* @ocfs2_get_lockres_osb(%struct.ocfs2_lock_res* %11)
  store %struct.ocfs2_super* %12, %struct.ocfs2_super** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @DLM_LOCK_NL, align 4
  %15 = icmp sle i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* @ML_BASTS, align 4
  %19 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %20 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %24 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %27 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ocfs2_lock_type_string(i32 %28)
  %30 = call i32 @mlog(i32 %18, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %25, i32 %29)
  %31 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %32 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @OCFS2_LOCK_NOCACHE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %62

38:                                               ; preds = %2
  %39 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %40 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %39, i32 0, i32 2
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @ocfs2_generic_handle_bast(%struct.ocfs2_lock_res* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %50 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %51 = call i32 @ocfs2_schedule_blocked_lock(%struct.ocfs2_super* %49, %struct.ocfs2_lock_res* %50)
  br label %52

52:                                               ; preds = %48, %38
  %53 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %54 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %53, i32 0, i32 2
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %58 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %57, i32 0, i32 1
  %59 = call i32 @wake_up(i32* %58)
  %60 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %61 = call i32 @ocfs2_wake_downconvert_thread(%struct.ocfs2_super* %60)
  br label %62

62:                                               ; preds = %52, %37
  ret void
}

declare dso_local %struct.ocfs2_lock_res* @ocfs2_lksb_to_lock_res(%struct.ocfs2_dlm_lksb*) #1

declare dso_local %struct.ocfs2_super* @ocfs2_get_lockres_osb(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_lock_type_string(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ocfs2_generic_handle_bast(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_schedule_blocked_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ocfs2_wake_downconvert_thread(%struct.ocfs2_super*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
