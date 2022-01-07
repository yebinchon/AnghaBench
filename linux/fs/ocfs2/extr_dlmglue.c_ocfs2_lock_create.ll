; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_lock_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_lock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"lock %s, level = %d, flags = %u\0A\00", align 1
@OCFS2_LOCK_ATTACHED = common dso_local global i32 0, align 4
@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@OCFS2_AST_ATTACH = common dso_local global i32 0, align 4
@OCFS2_LOCK_ID_MAX_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"ocfs2_dlm_lock\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"lock %s, return from ocfs2_dlm_lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32)* @ocfs2_lock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_lock_create(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca %struct.ocfs2_lock_res*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %13 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  %18 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %19 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %18, i32 0, i32 4
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %23 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @OCFS2_LOCK_ATTACHED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %4
  %29 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %30 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28, %4
  %36 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %37 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %36, i32 0, i32 4
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  br label %86

40:                                               ; preds = %28
  %41 = load i32, i32* @OCFS2_AST_ATTACH, align 4
  %42 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %43 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %46 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %48 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %49 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %47, i32 %48)
  %50 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %51 = call i32 @lockres_set_pending(%struct.ocfs2_lock_res* %50)
  store i32 %51, i32* %11, align 4
  %52 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %53 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %52, i32 0, i32 4
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %57 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %61 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %60, i32 0, i32 3
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %64 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* @OCFS2_LOCK_ID_MAX_LEN, align 8
  %67 = sub nsw i64 %66, 1
  %68 = call i32 @ocfs2_dlm_lock(i32 %58, i32 %59, i32* %61, i32 %62, i32 %65, i64 %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %72 = call i32 @lockres_clear_pending(%struct.ocfs2_lock_res* %69, i32 %70, %struct.ocfs2_super* %71)
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %40
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %78 = call i32 @ocfs2_log_dlm_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %76, %struct.ocfs2_lock_res* %77)
  %79 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %80 = call i32 @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res* %79, i32 1)
  br label %81

81:                                               ; preds = %75, %40
  %82 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %83 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %81, %35
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @lockres_set_pending(%struct.ocfs2_lock_res*) #1

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
