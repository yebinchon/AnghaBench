; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_background.c_jffs2_stop_garbage_collect_thread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_background.c_jffs2_stop_garbage_collect_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Killing GC task %d\0A\00", align 1
@SIGKILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jffs2_stop_garbage_collect_thread(%struct.jffs2_sb_info* %0) #0 {
  %2 = alloca %struct.jffs2_sb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %5 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %4, i32 0, i32 1
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %8 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %13 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @jffs2_dbg(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @SIGKILL, align 4
  %19 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %20 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call i32 @send_sig(i32 %18, %struct.TYPE_2__* %21, i32 1)
  store i32 1, i32* %3, align 4
  br label %23

23:                                               ; preds = %11, %1
  %24 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %25 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %31 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %30, i32 0, i32 0
  %32 = call i32 @wait_for_completion(i32* %31)
  br label %33

33:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @jffs2_dbg(i32, i8*, i32) #1

declare dso_local i32 @send_sig(i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
