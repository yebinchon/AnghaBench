; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_thread__fd_path.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_thread__fd_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.trace = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.thread_trace = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.thread*, i32, %struct.trace*)* @thread__fd_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread__fd_path(%struct.thread* %0, i32 %1, %struct.trace* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.trace*, align 8
  %8 = alloca %struct.thread_trace*, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.trace* %2, %struct.trace** %7, align 8
  %9 = load %struct.thread*, %struct.thread** %5, align 8
  %10 = call %struct.thread_trace* @thread__priv(%struct.thread* %9)
  store %struct.thread_trace* %10, %struct.thread_trace** %8, align 8
  %11 = load %struct.thread_trace*, %struct.thread_trace** %8, align 8
  %12 = icmp eq %struct.thread_trace* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.trace*, %struct.trace** %7, align 8
  %15 = getelementptr inbounds %struct.trace, %struct.trace* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %3
  store i8* null, i8** %4, align 8
  br label %69

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8* null, i8** %4, align 8
  br label %69

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.thread_trace*, %struct.thread_trace** %8, align 8
  %26 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %24, %28
  br i1 %29, label %41, label %30

30:                                               ; preds = %23
  %31 = load %struct.thread_trace*, %struct.thread_trace** %8, align 8
  %32 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %30, %23
  %42 = load %struct.trace*, %struct.trace** %7, align 8
  %43 = getelementptr inbounds %struct.trace, %struct.trace* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i8* null, i8** %4, align 8
  br label %69

47:                                               ; preds = %41
  %48 = load %struct.trace*, %struct.trace** %7, align 8
  %49 = getelementptr inbounds %struct.trace, %struct.trace* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.thread*, %struct.thread** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @thread__read_fd_path(%struct.thread* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i8* null, i8** %4, align 8
  br label %69

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %30
  %60 = load %struct.thread_trace*, %struct.thread_trace** %8, align 8
  %61 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %4, align 8
  br label %69

69:                                               ; preds = %59, %57, %46, %22, %18
  %70 = load i8*, i8** %4, align 8
  ret i8* %70
}

declare dso_local %struct.thread_trace* @thread__priv(%struct.thread*) #1

declare dso_local i64 @thread__read_fd_path(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
