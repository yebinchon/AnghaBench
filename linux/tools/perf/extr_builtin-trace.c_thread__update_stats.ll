; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_thread__update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_thread__update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_trace = type { i64, i32 }
%struct.perf_sample = type { i64 }
%struct.int_node = type { %struct.stats* }
%struct.stats = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread_trace*, i32, %struct.perf_sample*)* @thread__update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread__update_stats(%struct.thread_trace* %0, i32 %1, %struct.perf_sample* %2) #0 {
  %4 = alloca %struct.thread_trace*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.int_node*, align 8
  %8 = alloca %struct.stats*, align 8
  %9 = alloca i64, align 8
  store %struct.thread_trace* %0, %struct.thread_trace** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.perf_sample* %2, %struct.perf_sample** %6, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.thread_trace*, %struct.thread_trace** %4, align 8
  %11 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.int_node* @intlist__findnew(i32 %12, i32 %13)
  store %struct.int_node* %14, %struct.int_node** %7, align 8
  %15 = load %struct.int_node*, %struct.int_node** %7, align 8
  %16 = icmp eq %struct.int_node* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.int_node*, %struct.int_node** %7, align 8
  %20 = getelementptr inbounds %struct.int_node, %struct.int_node* %19, i32 0, i32 0
  %21 = load %struct.stats*, %struct.stats** %20, align 8
  store %struct.stats* %21, %struct.stats** %8, align 8
  %22 = load %struct.stats*, %struct.stats** %8, align 8
  %23 = icmp eq %struct.stats* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = call %struct.stats* @malloc(i32 4)
  store %struct.stats* %25, %struct.stats** %8, align 8
  %26 = load %struct.stats*, %struct.stats** %8, align 8
  %27 = icmp eq %struct.stats* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %60

29:                                               ; preds = %24
  %30 = load %struct.stats*, %struct.stats** %8, align 8
  %31 = call i32 @init_stats(%struct.stats* %30)
  %32 = load %struct.stats*, %struct.stats** %8, align 8
  %33 = load %struct.int_node*, %struct.int_node** %7, align 8
  %34 = getelementptr inbounds %struct.int_node, %struct.int_node* %33, i32 0, i32 0
  store %struct.stats* %32, %struct.stats** %34, align 8
  br label %35

35:                                               ; preds = %29, %18
  %36 = load %struct.thread_trace*, %struct.thread_trace** %4, align 8
  %37 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %42 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.thread_trace*, %struct.thread_trace** %4, align 8
  %45 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %50 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.thread_trace*, %struct.thread_trace** %4, align 8
  %53 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %48, %40, %35
  %57 = load %struct.stats*, %struct.stats** %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @update_stats(%struct.stats* %57, i64 %58)
  br label %60

60:                                               ; preds = %56, %28, %17
  ret void
}

declare dso_local %struct.int_node* @intlist__findnew(i32, i32) #1

declare dso_local %struct.stats* @malloc(i32) #1

declare dso_local i32 @init_stats(%struct.stats*) #1

declare dso_local i32 @update_stats(%struct.stats*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
