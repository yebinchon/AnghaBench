; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_f2fs_start_gc_thread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_f2fs_start_gc_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { %struct.f2fs_gc_kthread*, %struct.TYPE_4__* }
%struct.f2fs_gc_kthread = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEF_GC_THREAD_URGENT_SLEEP_TIME = common dso_local global i32 0, align 4
@DEF_GC_THREAD_MIN_SLEEP_TIME = common dso_local global i32 0, align 4
@DEF_GC_THREAD_MAX_SLEEP_TIME = common dso_local global i32 0, align 4
@DEF_GC_THREAD_NOGC_SLEEP_TIME = common dso_local global i32 0, align 4
@gc_thread_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"f2fs_gc-%u:%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_start_gc_thread(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.f2fs_gc_kthread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %6 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %7 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.f2fs_gc_kthread* @f2fs_kmalloc(%struct.f2fs_sb_info* %13, i32 32, i32 %14)
  store %struct.f2fs_gc_kthread* %15, %struct.f2fs_gc_kthread** %3, align 8
  %16 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %17 = icmp ne %struct.f2fs_gc_kthread* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %70

21:                                               ; preds = %1
  %22 = load i32, i32* @DEF_GC_THREAD_URGENT_SLEEP_TIME, align 4
  %23 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %24 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @DEF_GC_THREAD_MIN_SLEEP_TIME, align 4
  %26 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %27 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @DEF_GC_THREAD_MAX_SLEEP_TIME, align 4
  %29 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %30 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @DEF_GC_THREAD_NOGC_SLEEP_TIME, align 4
  %32 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %33 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %35 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %38 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %37, i32 0, i32 0
  store %struct.f2fs_gc_kthread* %36, %struct.f2fs_gc_kthread** %38, align 8
  %39 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %40 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %39, i32 0, i32 0
  %41 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %40, align 8
  %42 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %41, i32 0, i32 1
  %43 = call i32 @init_waitqueue_head(i32* %42)
  %44 = load i32, i32* @gc_thread_func, align 4
  %45 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @MAJOR(i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @MINOR(i32 %48)
  %50 = call i32 @kthread_run(i32 %44, %struct.f2fs_sb_info* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %49)
  %51 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %52 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %51, i32 0, i32 0
  %53 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %52, align 8
  %54 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 8
  %55 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %56 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %21
  %61 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %62 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @PTR_ERR(i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %66 = call i32 @kvfree(%struct.f2fs_gc_kthread* %65)
  %67 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %68 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %67, i32 0, i32 0
  store %struct.f2fs_gc_kthread* null, %struct.f2fs_gc_kthread** %68, align 8
  br label %69

69:                                               ; preds = %60, %21
  br label %70

70:                                               ; preds = %69, %18
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.f2fs_gc_kthread* @f2fs_kmalloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kthread_run(i32, %struct.f2fs_sb_info*, i8*, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kvfree(%struct.f2fs_gc_kthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
