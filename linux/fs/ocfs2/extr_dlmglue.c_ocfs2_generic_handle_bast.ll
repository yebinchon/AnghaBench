; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_generic_handle_bast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_generic_handle_bast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32, i32, i32 }

@ML_BASTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"lockres %s, block %d, level %d, l_block %d, dwn %d\0A\00", align 1
@OCFS2_LOCK_BLOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"needs_downconvert = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_lock_res*, i32)* @ocfs2_generic_handle_bast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_generic_handle_bast(%struct.ocfs2_lock_res* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_lock_res*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %6, i32 0, i32 3
  %8 = call i32 @assert_spin_locked(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %11 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @ocfs2_highest_compat_lock_level(i32 %15)
  %17 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %18 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ocfs2_highest_compat_lock_level(i32 %19)
  %21 = icmp slt i64 %16, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %26 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i32, i32* @ML_BASTS, align 4
  %29 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %30 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %34 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %37 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i32, i8*, i32, ...) @mlog(i32 %28, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %35, i32 %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %27
  %44 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %45 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %46 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %27
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i64 @ocfs2_highest_compat_lock_level(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
