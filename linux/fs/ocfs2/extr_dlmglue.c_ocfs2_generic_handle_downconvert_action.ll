; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_generic_handle_downconvert_action.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_generic_handle_downconvert_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i64, i64, i64 }

@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@OCFS2_LOCK_ATTACHED = common dso_local global i32 0, align 4
@OCFS2_LOCK_BLOCKED = common dso_local global i32 0, align 4
@DLM_LOCK_NL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_lock_res*)* @ocfs2_generic_handle_downconvert_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_generic_handle_downconvert_action(%struct.ocfs2_lock_res* %0) #0 {
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
  %22 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %31 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DLM_LOCK_NL, align 8
  %34 = icmp sle i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %38 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %41 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %43 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %46 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @ocfs2_highest_compat_lock_level(i64 %47)
  %49 = icmp sle i64 %44, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %1
  %51 = load i64, i64* @DLM_LOCK_NL, align 8
  %52 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %53 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %55 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %56 = call i32 @lockres_clear_flags(%struct.ocfs2_lock_res* %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %1
  %58 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %59 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %60 = call i32 @lockres_clear_flags(%struct.ocfs2_lock_res* %58, i32 %59)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ocfs2_highest_compat_lock_level(i64) #1

declare dso_local i32 @lockres_clear_flags(%struct.ocfs2_lock_res*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
