; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_unlock_ast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_unlock_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dlm_lksb = type { i32 }
%struct.ocfs2_lock_res = type { i32, i32, i32, i32, i32, i32, i32 }

@ML_BASTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"UNLOCK AST fired for lockres %s, action = %d\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Dlm passes error %d for lock %s, unlock_action %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Cancel convert success for %s\0A\00", align 1
@OCFS2_AST_INVALID = common dso_local global i32 0, align 4
@OCFS2_LOCK_BLOCKED = common dso_local global i32 0, align 4
@DLM_LOCK_IV = common dso_local global i32 0, align 4
@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@OCFS2_UNLOCK_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_dlm_lksb*, i32)* @ocfs2_unlock_ast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_unlock_ast(%struct.ocfs2_dlm_lksb* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_dlm_lksb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_lock_res*, align 8
  %6 = alloca i64, align 8
  store %struct.ocfs2_dlm_lksb* %0, %struct.ocfs2_dlm_lksb** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ocfs2_dlm_lksb*, %struct.ocfs2_dlm_lksb** %3, align 8
  %8 = call %struct.ocfs2_lock_res* @ocfs2_lksb_to_lock_res(%struct.ocfs2_dlm_lksb* %7)
  store %struct.ocfs2_lock_res* %8, %struct.ocfs2_lock_res** %5, align 8
  %9 = load i32, i32* @ML_BASTS, align 4
  %10 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %11 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %14 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, i32, ...) @mlog(i32 %9, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %18 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %17, i32 0, i32 2
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load i32, i32* @ML_ERROR, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %27 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %30 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, i32, ...) @mlog(i32 %24, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28, i32 %31)
  %33 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %34 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %33, i32 0, i32 2
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  br label %80

37:                                               ; preds = %2
  %38 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %39 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %64 [
    i32 129, label %41
    i32 128, label %60
  ]

41:                                               ; preds = %37
  %42 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %43 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @OCFS2_AST_INVALID, align 4
  %47 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %48 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %50 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %41
  %56 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %57 = call i32 @ocfs2_get_lockres_osb(%struct.ocfs2_lock_res* %56)
  %58 = call i32 @ocfs2_wake_downconvert_thread(i32 %57)
  br label %59

59:                                               ; preds = %55, %41
  br label %66

60:                                               ; preds = %37
  %61 = load i32, i32* @DLM_LOCK_IV, align 4
  %62 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %63 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  br label %66

64:                                               ; preds = %37
  %65 = call i32 (...) @BUG()
  br label %66

66:                                               ; preds = %64, %60, %59
  %67 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %68 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %69 = call i32 @lockres_clear_flags(%struct.ocfs2_lock_res* %67, i32 %68)
  %70 = load i32, i32* @OCFS2_UNLOCK_INVALID, align 4
  %71 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %72 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %74 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %73, i32 0, i32 3
  %75 = call i32 @wake_up(i32* %74)
  %76 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %77 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %76, i32 0, i32 2
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  br label %80

80:                                               ; preds = %66, %23
  ret void
}

declare dso_local %struct.ocfs2_lock_res* @ocfs2_lksb_to_lock_res(%struct.ocfs2_dlm_lksb*) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ocfs2_wake_downconvert_thread(i32) #1

declare dso_local i32 @ocfs2_get_lockres_osb(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @lockres_clear_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
