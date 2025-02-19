; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_commit_thread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_commit_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.ocfs2_journal* }
%struct.ocfs2_journal = type { i32 }

@ocfs2_commit_thread.abort_warn_time = internal global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"status = %d, journal is already aborted.\0A\00", align 1
@ML_KTHREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"commit_thread: %u transactions pending on shutdown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ocfs2_commit_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_commit_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca %struct.ocfs2_journal*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ocfs2_super*
  store %struct.ocfs2_super* %7, %struct.ocfs2_super** %4, align 8
  %8 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %9 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %8, i32 0, i32 1
  %10 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %9, align 8
  store %struct.ocfs2_journal* %10, %struct.ocfs2_journal** %5, align 8
  br label %11

11:                                               ; preds = %66, %1
  %12 = call i64 (...) @kthread_should_stop()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  %16 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %15, i32 0, i32 0
  %17 = call i32 @atomic_read(i32* %16)
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i1 [ false, %11 ], [ %18, %14 ]
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %67

22:                                               ; preds = %19
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %24 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  %27 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %26, i32 0, i32 0
  %28 = call i32 @atomic_read(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = call i64 (...) @kthread_should_stop()
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %30, %22
  %34 = phi i1 [ true, %22 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @wait_event_interruptible(i32 %25, i32 %35)
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %38 = call i32 @ocfs2_commit_cache(%struct.ocfs2_super* %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %33
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 60, %42
  %44 = call i64 @printk_timed_ratelimit(i64* @ocfs2_commit_thread.abort_warn_time, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @ML_ERROR, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @mlog(i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = call i32 @msleep_interruptible(i32 1000)
  br label %52

52:                                               ; preds = %50, %33
  %53 = call i64 (...) @kthread_should_stop()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  %57 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %56, i32 0, i32 0
  %58 = call i32 @atomic_read(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @ML_KTHREAD, align 4
  %62 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  %63 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %62, i32 0, i32 0
  %64 = call i32 @atomic_read(i32* %63)
  %65 = call i32 @mlog(i32 %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %55, %52
  br label %11

67:                                               ; preds = %19
  ret i32 0
}

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @ocfs2_commit_cache(%struct.ocfs2_super*) #1

declare dso_local i64 @printk_timed_ratelimit(i64*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
