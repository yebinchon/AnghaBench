; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_prepare_cancel_convert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_prepare_cancel_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { i64, i64, i32, i32, i32 }

@OCFS2_UNLOCK_CANCEL_CONVERT = common dso_local global i64 0, align 8
@ML_BASTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"lockres %s, skip convert\0A\00", align 1
@OCFS2_AST_CONVERT = common dso_local global i64 0, align 8
@OCFS2_AST_DOWNCONVERT = common dso_local global i64 0, align 8
@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"lock %s, invalid flags: 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"lockres %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*)* @ocfs2_prepare_cancel_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_prepare_cancel_convert(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %5, align 8
  %6 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %7 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %6, i32 0, i32 4
  %8 = call i32 @assert_spin_locked(i32* %7)
  %9 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %10 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OCFS2_UNLOCK_CANCEL_CONVERT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @ML_BASTS, align 4
  %16 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %17 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mlog(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* %3, align 4
  br label %59

20:                                               ; preds = %2
  %21 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %22 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OCFS2_AST_CONVERT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %28 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OCFS2_AST_DOWNCONVERT, align 8
  %31 = icmp ne i64 %29, %30
  br label %32

32:                                               ; preds = %26, %20
  %33 = phi i1 [ false, %20 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i64, i64* @OCFS2_UNLOCK_CANCEL_CONVERT, align 8
  %37 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %38 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %40 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %48 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %51 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @mlog_bug_on_msg(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load i32, i32* @ML_BASTS, align 4
  %55 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %5, align 8
  %56 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mlog(i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %32, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
