; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_file_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_file_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__*, %struct.ocfs2_file_private* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ocfs2_file_private = type { %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32, i64, i32, i32, i32, i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_mask_waiter = type { i32 }

@OCFS2_LOCK_ATTACHED = common dso_local global i32 0, align 4
@DLM_LOCK_NL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Unlock: \22%s\22 flags: 0x%lx, level: %d, act: %d\0A\00", align 1
@OCFS2_LOCK_BLOCKED = common dso_local global i32 0, align 4
@DLM_LOCK_EX = common dso_local global i32 0, align 4
@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_file_unlock(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ocfs2_file_private*, align 8
  %7 = alloca %struct.ocfs2_lock_res*, align 8
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca %struct.ocfs2_mask_waiter, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %10 = load %struct.file*, %struct.file** %2, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = load %struct.ocfs2_file_private*, %struct.ocfs2_file_private** %11, align 8
  store %struct.ocfs2_file_private* %12, %struct.ocfs2_file_private** %6, align 8
  %13 = load %struct.ocfs2_file_private*, %struct.ocfs2_file_private** %6, align 8
  %14 = getelementptr inbounds %struct.ocfs2_file_private, %struct.ocfs2_file_private* %13, i32 0, i32 0
  store %struct.ocfs2_lock_res* %14, %struct.ocfs2_lock_res** %7, align 8
  %15 = load %struct.file*, %struct.file** %2, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ocfs2_super* @OCFS2_SB(i32 %21)
  store %struct.ocfs2_super* %22, %struct.ocfs2_super** %8, align 8
  %23 = call i32 @ocfs2_init_mask_waiter(%struct.ocfs2_mask_waiter* %9)
  %24 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %25 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @OCFS2_LOCK_ATTACHED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  br label %89

31:                                               ; preds = %1
  %32 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %33 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DLM_LOCK_NL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %89

38:                                               ; preds = %31
  %39 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %40 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %43 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %46 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %49 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i64 %47, i32 %50)
  %52 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %53 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %52, i32 0, i32 2
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %57 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %58 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %56, i32 %57)
  %59 = load i32, i32* @DLM_LOCK_EX, align 4
  %60 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %61 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %63 = load i64, i64* @DLM_LOCK_NL, align 8
  %64 = call i32 @ocfs2_prepare_downconvert(%struct.ocfs2_lock_res* %62, i64 %63)
  store i32 %64, i32* %4, align 4
  %65 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %66 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %67 = call i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res* %65, %struct.ocfs2_mask_waiter* %9, i32 %66, i32 0)
  %68 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %69 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %68, i32 0, i32 2
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %73 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %74 = load i64, i64* @DLM_LOCK_NL, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @ocfs2_downconvert_lock(%struct.ocfs2_super* %72, %struct.ocfs2_lock_res* %73, i64 %74, i32 0, i32 %75)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %38
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @mlog_errno(i32 %80)
  br label %89

82:                                               ; preds = %38
  %83 = call i32 @ocfs2_wait_for_mask(%struct.ocfs2_mask_waiter* %9)
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @mlog_errno(i32 %87)
  br label %89

89:                                               ; preds = %30, %37, %79, %86, %82
  ret void
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_init_mask_waiter(%struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_prepare_downconvert(%struct.ocfs2_lock_res*, i64) #1

declare dso_local i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res*, %struct.ocfs2_mask_waiter*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ocfs2_downconvert_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i64, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_wait_for_mask(%struct.ocfs2_mask_waiter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
