; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmunlock.c_dlm_get_cancel_actions.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmunlock.c_dlm_get_cancel_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_lock_resource = type { i32, i32, i32 }
%struct.dlm_lock = type { i32 }
%struct.dlm_lockstatus = type { i32 }

@DLM_NORMAL = common dso_local global i32 0, align 4
@DLM_UNLOCK_CALL_AST = common dso_local global i32 0, align 4
@DLM_UNLOCK_REMOVE_LOCK = common dso_local global i32 0, align 4
@DLM_UNLOCK_REGRANT_LOCK = common dso_local global i32 0, align 4
@DLM_UNLOCK_CLEAR_CONVERT_TYPE = common dso_local global i32 0, align 4
@DLM_CANCELGRANT = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"lock to cancel is not on any list!\0A\00", align 1
@DLM_IVLOCKID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, %struct.dlm_lockstatus*, i32*)* @dlm_get_cancel_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_get_cancel_actions(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2, %struct.dlm_lockstatus* %3, i32* %4) #0 {
  %6 = alloca %struct.dlm_ctxt*, align 8
  %7 = alloca %struct.dlm_lock_resource*, align 8
  %8 = alloca %struct.dlm_lock*, align 8
  %9 = alloca %struct.dlm_lockstatus*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %6, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %7, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %8, align 8
  store %struct.dlm_lockstatus* %3, %struct.dlm_lockstatus** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %13 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %12, i32 0, i32 2
  %14 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %15 = call i64 @dlm_lock_on_list(i32* %13, %struct.dlm_lock* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i32, i32* @DLM_NORMAL, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @DLM_UNLOCK_CALL_AST, align 4
  %20 = load i32, i32* @DLM_UNLOCK_REMOVE_LOCK, align 4
  %21 = or i32 %19, %20
  %22 = load i32*, i32** %10, align 8
  store i32 %21, i32* %22, align 4
  br label %56

23:                                               ; preds = %5
  %24 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %25 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %24, i32 0, i32 1
  %26 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %27 = call i64 @dlm_lock_on_list(i32* %25, %struct.dlm_lock* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i32, i32* @DLM_NORMAL, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @DLM_UNLOCK_CALL_AST, align 4
  %32 = load i32, i32* @DLM_UNLOCK_REMOVE_LOCK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @DLM_UNLOCK_REGRANT_LOCK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @DLM_UNLOCK_CLEAR_CONVERT_TYPE, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  br label %55

39:                                               ; preds = %23
  %40 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %41 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %40, i32 0, i32 0
  %42 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %43 = call i64 @dlm_lock_on_list(i32* %41, %struct.dlm_lock* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @DLM_CANCELGRANT, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* @DLM_UNLOCK_CALL_AST, align 4
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  br label %54

49:                                               ; preds = %39
  %50 = load i32, i32* @ML_ERROR, align 4
  %51 = call i32 @mlog(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @DLM_IVLOCKID, align 4
  store i32 %52, i32* %11, align 4
  %53 = load i32*, i32** %10, align 8
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %45
  br label %55

55:                                               ; preds = %54, %29
  br label %56

56:                                               ; preds = %55, %17
  %57 = load i32, i32* %11, align 4
  ret i32 %57
}

declare dso_local i64 @dlm_lock_on_list(i32*, %struct.dlm_lock*) #1

declare dso_local i32 @mlog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
