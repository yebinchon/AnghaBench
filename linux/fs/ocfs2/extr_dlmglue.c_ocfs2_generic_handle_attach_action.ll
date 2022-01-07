; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_generic_handle_attach_action.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_generic_handle_attach_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@OCFS2_LOCK_ATTACHED = common dso_local global i32 0, align 4
@DLM_LOCK_NL = common dso_local global i64 0, align 8
@OCFS2_LOCK_LOCAL = common dso_local global i32 0, align 4
@LOCK_TYPE_REQUIRES_REFRESH = common dso_local global i32 0, align 4
@OCFS2_LOCK_NEEDS_REFRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_lock_res*)* @ocfs2_generic_handle_attach_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_generic_handle_attach_action(%struct.ocfs2_lock_res* %0) #0 {
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
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %19 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DLM_LOCK_NL, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %1
  %24 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %25 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @OCFS2_LOCK_LOCAL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %23
  %31 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %32 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @LOCK_TYPE_REQUIRES_REFRESH, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %41 = load i32, i32* @OCFS2_LOCK_NEEDS_REFRESH, align 4
  %42 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %30, %23, %1
  %44 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %45 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %48 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %50 = load i32, i32* @OCFS2_LOCK_ATTACHED, align 4
  %51 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %49, i32 %50)
  %52 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %53 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %54 = call i32 @lockres_clear_flags(%struct.ocfs2_lock_res* %52, i32 %53)
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
