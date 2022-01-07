; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_commit.c_ubifs_bg_thread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_commit.c_ubifs_bg_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ubifs_info = type { i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"background thread \22%s\22 started, PID %d\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"background thread \22%s\22 stops\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_bg_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ubifs_info*
  store %struct.ubifs_info* %6, %struct.ubifs_info** %4, align 8
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %9 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_msg(%struct.ubifs_info* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = call i32 (...) @set_freezable()
  br label %16

16:                                               ; preds = %1, %23, %35, %51
  %17 = call i64 (...) @kthread_should_stop()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %55

20:                                               ; preds = %16
  %21 = call i64 (...) @try_to_freeze()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %16

24:                                               ; preds = %20
  %25 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %26 = call i32 @set_current_state(i32 %25)
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %24
  %32 = call i64 (...) @kthread_should_stop()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %55

35:                                               ; preds = %31
  %36 = call i32 (...) @schedule()
  br label %16

37:                                               ; preds = %24
  %38 = load i32, i32* @TASK_RUNNING, align 4
  %39 = call i32 @__set_current_state(i32 %38)
  br label %40

40:                                               ; preds = %37
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %44 = call i32 @ubifs_bg_wbufs_sync(%struct.ubifs_info* %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %40
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %53 = call i32 @run_bg_commit(%struct.ubifs_info* %52)
  %54 = call i32 (...) @cond_resched()
  br label %16

55:                                               ; preds = %34, %19
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_msg(%struct.ubifs_info* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  ret i32 0
}

declare dso_local i32 @ubifs_msg(%struct.ubifs_info*, i8*, i32, ...) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @try_to_freeze(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @ubifs_bg_wbufs_sync(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

declare dso_local i32 @run_bg_commit(%struct.ubifs_info*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
