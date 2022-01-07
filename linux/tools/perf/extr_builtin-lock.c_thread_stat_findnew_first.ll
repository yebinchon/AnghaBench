; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-lock.c_thread_stat_findnew_first.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-lock.c_thread_stat_findnew_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.thread_stat = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"memory allocation failed\0A\00", align 1
@thread_stats = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@thread_stat_findnew_after_first = common dso_local global i32 0, align 4
@thread_stat_findnew = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread_stat* (i32)* @thread_stat_findnew_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread_stat* @thread_stat_findnew_first(i32 %0) #0 {
  %2 = alloca %struct.thread_stat*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread_stat*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.thread_stat* @zalloc(i32 12)
  store %struct.thread_stat* %5, %struct.thread_stat** %4, align 8
  %6 = load %struct.thread_stat*, %struct.thread_stat** %4, align 8
  %7 = icmp ne %struct.thread_stat* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.thread_stat* null, %struct.thread_stat** %2, align 8
  br label %25

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.thread_stat*, %struct.thread_stat** %4, align 8
  %13 = getelementptr inbounds %struct.thread_stat, %struct.thread_stat* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.thread_stat*, %struct.thread_stat** %4, align 8
  %15 = getelementptr inbounds %struct.thread_stat, %struct.thread_stat* %14, i32 0, i32 1
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.thread_stat*, %struct.thread_stat** %4, align 8
  %18 = getelementptr inbounds %struct.thread_stat, %struct.thread_stat* %17, i32 0, i32 0
  %19 = call i32 @rb_link_node(i32* %18, i32* null, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread_stats, i32 0, i32 0))
  %20 = load %struct.thread_stat*, %struct.thread_stat** %4, align 8
  %21 = getelementptr inbounds %struct.thread_stat, %struct.thread_stat* %20, i32 0, i32 0
  %22 = call i32 @rb_insert_color(i32* %21, %struct.TYPE_3__* @thread_stats)
  %23 = load i32, i32* @thread_stat_findnew_after_first, align 4
  store i32 %23, i32* @thread_stat_findnew, align 4
  %24 = load %struct.thread_stat*, %struct.thread_stat** %4, align 8
  store %struct.thread_stat* %24, %struct.thread_stat** %2, align 8
  br label %25

25:                                               ; preds = %10, %8
  %26 = load %struct.thread_stat*, %struct.thread_stat** %2, align 8
  ret %struct.thread_stat* %26
}

declare dso_local %struct.thread_stat* @zalloc(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rb_link_node(i32*, i32*, i32*) #1

declare dso_local i32 @rb_insert_color(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
