; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_background.c_jffs2_start_garbage_collect_thread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_background.c_jffs2_start_garbage_collect_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.task_struct = type { i32 }

@jffs2_garbage_collect_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"jffs2_gcd_mtd%d\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"fork failed for JFFS2 garbage collect thread: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Garbage collect thread is pid %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jffs2_start_garbage_collect_thread(%struct.jffs2_sb_info* %0) #0 {
  %2 = alloca %struct.jffs2_sb_info*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %6 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %10 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %9, i32 0, i32 0
  %11 = call i32 @init_completion(i32* %10)
  %12 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %13 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %12, i32 0, i32 1
  %14 = call i32 @init_completion(i32* %13)
  %15 = load i32, i32* @jffs2_garbage_collect_thread, align 4
  %16 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %17 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %18 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.task_struct* @kthread_run(i32 %15, %struct.jffs2_sb_info* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %21)
  store %struct.task_struct* %22, %struct.task_struct** %3, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %24 = call i64 @IS_ERR(%struct.task_struct* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %28 = call i32 @PTR_ERR(%struct.task_struct* %27)
  %29 = sub nsw i32 0, %28
  %30 = call i32 @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %32 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %31, i32 0, i32 1
  %33 = call i32 @complete(i32* %32)
  %34 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %35 = call i32 @PTR_ERR(%struct.task_struct* %34)
  store i32 %35, i32* %4, align 4
  br label %47

36:                                               ; preds = %1
  %37 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @jffs2_dbg(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %42 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %41, i32 0, i32 0
  %43 = call i32 @wait_for_completion(i32* %42)
  %44 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %36, %26
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.jffs2_sb_info*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @jffs2_dbg(i32, i8*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
