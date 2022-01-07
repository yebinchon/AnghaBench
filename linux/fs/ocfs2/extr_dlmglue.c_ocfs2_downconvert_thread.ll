; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_downconvert_thread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_downconvert_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"downconvert_thread: awoken\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ocfs2_downconvert_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_downconvert_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ocfs2_super*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ocfs2_super*
  store %struct.ocfs2_super* %5, %struct.ocfs2_super** %3, align 8
  br label %6

6:                                                ; preds = %26, %1
  %7 = call i64 (...) @kthread_should_stop()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %11 = call i64 @ocfs2_downconvert_thread_lists_empty(%struct.ocfs2_super* %10)
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i1 [ false, %6 ], [ %12, %9 ]
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %18 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %21 = call i64 @ocfs2_downconvert_thread_should_wake(%struct.ocfs2_super* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = call i64 (...) @kthread_should_stop()
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %23, %16
  %27 = phi i1 [ true, %16 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @wait_event_interruptible(i32 %19, i32 %28)
  %30 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %32 = call i32 @ocfs2_downconvert_thread_do_work(%struct.ocfs2_super* %31)
  br label %6

33:                                               ; preds = %13
  %34 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %35 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  ret i32 0
}

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @ocfs2_downconvert_thread_lists_empty(%struct.ocfs2_super*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @ocfs2_downconvert_thread_should_wake(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @ocfs2_downconvert_thread_do_work(%struct.ocfs2_super*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
