; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_lock_res_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_lock_res_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@OCFS2_LOCK_INITIALIZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Lockres %s is on the blocked list\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Lockres %s has mask waiters pending\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Lockres %s is locked\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Lockres %s has %u ro holders\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Lockres %s has %u ex holders\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_lock_res_free(%struct.ocfs2_lock_res* %0) #0 {
  %2 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %2, align 8
  %3 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %4 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @OCFS2_LOCK_INITIALIZED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %65

10:                                               ; preds = %1
  %11 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %12 = call i32 @ocfs2_remove_lockres_tracking(%struct.ocfs2_lock_res* %11)
  %13 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %14 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %13, i32 0, i32 7
  %15 = call i32 @list_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %20 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, i32, ...) @mlog_bug_on_msg(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %24 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %23, i32 0, i32 6
  %25 = call i32 @list_empty(i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %30 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, i32, ...) @mlog_bug_on_msg(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %34 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %33, i32 0, i32 5
  %35 = call i32 @spin_is_locked(i32* %34)
  %36 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %37 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, i32, ...) @mlog_bug_on_msg(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %41 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %44 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %47 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, i32, ...) @mlog_bug_on_msg(i32 %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %51 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %54 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %57 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, i32, ...) @mlog_bug_on_msg(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %61 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %60, i32 0, i32 1
  %62 = call i32 @memset(i32* %61, i32 0, i32 4)
  %63 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %64 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @ocfs2_remove_lockres_tracking(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, ...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_is_locked(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
