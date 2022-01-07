; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_prepare_downconvert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_prepare_downconvert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DLM_LOCK_NL = common dso_local global i64 0, align 8
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [119 x i8] c"lockres %s, lvl %d <= %d, blcklst %d, mask %d, type %d, flags 0x%lx, hold %d %d, act %d %d, req %d, block %d, pgen %d\0A\00", align 1
@ML_BASTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"lockres %s, level %d => %d, blocking %d\0A\00", align 1
@OCFS2_AST_DOWNCONVERT = common dso_local global i32 0, align 4
@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_lock_res*, i32)* @ocfs2_prepare_downconvert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_prepare_downconvert(%struct.ocfs2_lock_res* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_lock_res*, align 8
  %4 = alloca i32, align 4
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %6 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %5, i32 0, i32 13
  %7 = call i32 @assert_spin_locked(i32* %6)
  %8 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %9 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DLM_LOCK_NL, align 8
  %12 = icmp sle i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %2
  %21 = load i32, i32* @ML_ERROR, align 4
  %22 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %26 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %30 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %29, i32 0, i32 12
  %31 = call i32 @list_empty(i32* %30)
  %32 = sext i32 %31 to i64
  %33 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %34 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %33, i32 0, i32 11
  %35 = call i32 @list_empty(i32* %34)
  %36 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %37 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %40 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %43 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %46 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %49 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %52 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %55 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %58 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %61 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, i32, i32, i32, i64, ...) @mlog(i32 %21, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %28, i64 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i64 %59, i32 %62)
  %64 = call i32 (...) @BUG()
  br label %65

65:                                               ; preds = %20, %2
  %66 = load i32, i32* @ML_BASTS, align 4
  %67 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %68 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %71 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %75 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i32, i8*, i32, i32, i32, i64, ...) @mlog(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %72, i32 %73, i64 %76)
  %78 = load i32, i32* @OCFS2_AST_DOWNCONVERT, align 4
  %79 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %80 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %83 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %85 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %86 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %84, i32 %85)
  %87 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %88 = call i32 @lockres_set_pending(%struct.ocfs2_lock_res* %87)
  ret i32 %88
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i64, ...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @lockres_set_pending(%struct.ocfs2_lock_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
