; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_generic_handle_convert_action.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_generic_handle_convert_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@OCFS2_LOCK_ATTACHED = common dso_local global i32 0, align 4
@DLM_LOCK_NL = common dso_local global i64 0, align 8
@LOCK_TYPE_REQUIRES_REFRESH = common dso_local global i32 0, align 4
@OCFS2_LOCK_NEEDS_REFRESH = common dso_local global i32 0, align 4
@OCFS2_LOCK_NONBLOCK_FINISHED = common dso_local global i32 0, align 4
@OCFS2_LOCK_UPCONVERT_FINISHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_lock_res*)* @ocfs2_generic_handle_convert_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_generic_handle_convert_action(%struct.ocfs2_lock_res* %0) #0 {
  %2 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %2, align 8
  %3 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %4 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %13 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @OCFS2_LOCK_ATTACHED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %22 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DLM_LOCK_NL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %1
  %27 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %28 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LOCK_TYPE_REQUIRES_REFRESH, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %37 = load i32, i32* @OCFS2_LOCK_NEEDS_REFRESH, align 4
  %38 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %26, %1
  %40 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %41 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %44 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %46 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @OCFS2_LOCK_NONBLOCK_FINISHED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %39
  %52 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %53 = load i32, i32* @OCFS2_LOCK_UPCONVERT_FINISHING, align 4
  %54 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %52, i32 %53)
  br label %59

55:                                               ; preds = %39
  %56 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %57 = load i32, i32* @OCFS2_LOCK_NONBLOCK_FINISHED, align 4
  %58 = call i32 @lockres_clear_flags(%struct.ocfs2_lock_res* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  %60 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %61 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %62 = call i32 @lockres_clear_flags(%struct.ocfs2_lock_res* %60, i32 %61)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @lockres_clear_flags(%struct.ocfs2_lock_res*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
