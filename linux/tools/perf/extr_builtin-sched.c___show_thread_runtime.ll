; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c___show_thread_runtime.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c___show_thread_runtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.total_run_stats = type { %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.thread_runtime = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*)* @__show_thread_runtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__show_thread_runtime(%struct.thread* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.total_run_stats*, align 8
  %7 = alloca %struct.thread_runtime*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.total_run_stats*
  store %struct.total_run_stats* %9, %struct.total_run_stats** %6, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = call i64 @thread__is_filtered(%struct.thread* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

14:                                               ; preds = %2
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = call %struct.thread_runtime* @thread__priv(%struct.thread* %15)
  store %struct.thread_runtime* %16, %struct.thread_runtime** %7, align 8
  %17 = load %struct.thread_runtime*, %struct.thread_runtime** %7, align 8
  %18 = icmp ne %struct.thread_runtime* %17, null
  br i1 %18, label %19, label %64

19:                                               ; preds = %14
  %20 = load %struct.thread_runtime*, %struct.thread_runtime** %7, align 8
  %21 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %19
  %26 = load %struct.total_run_stats*, %struct.total_run_stats** %6, align 8
  %27 = getelementptr inbounds %struct.total_run_stats, %struct.total_run_stats* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.thread_runtime*, %struct.thread_runtime** %7, align 8
  %31 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.total_run_stats*, %struct.total_run_stats** %6, align 8
  %35 = getelementptr inbounds %struct.total_run_stats, %struct.total_run_stats* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = load %struct.thread_runtime*, %struct.thread_runtime** %7, align 8
  %41 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.total_run_stats*, %struct.total_run_stats** %6, align 8
  %44 = getelementptr inbounds %struct.total_run_stats, %struct.total_run_stats* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 8
  %49 = load %struct.total_run_stats*, %struct.total_run_stats** %6, align 8
  %50 = getelementptr inbounds %struct.total_run_stats, %struct.total_run_stats* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %25
  %56 = load %struct.thread*, %struct.thread** %4, align 8
  %57 = load %struct.thread_runtime*, %struct.thread_runtime** %7, align 8
  %58 = call i32 @print_thread_waittime(%struct.thread* %56, %struct.thread_runtime* %57)
  br label %63

59:                                               ; preds = %25
  %60 = load %struct.thread*, %struct.thread** %4, align 8
  %61 = load %struct.thread_runtime*, %struct.thread_runtime** %7, align 8
  %62 = call i32 @print_thread_runtime(%struct.thread* %60, %struct.thread_runtime* %61)
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63, %19, %14
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @thread__is_filtered(%struct.thread*) #1

declare dso_local %struct.thread_runtime* @thread__priv(%struct.thread*) #1

declare dso_local i32 @print_thread_waittime(%struct.thread*, %struct.thread_runtime*) #1

declare dso_local i32 @print_thread_runtime(%struct.thread*, %struct.thread_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
