; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__set_fd_pathname.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__set_fd_pathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.thread_trace = type { i32 }
%struct.file = type { i64, i32 }
%struct.stat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i8*)* @trace__set_fd_pathname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace__set_fd_pathname(%struct.thread* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.thread_trace*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.stat, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.thread*, %struct.thread** %5, align 8
  %12 = call %struct.thread_trace* @thread__priv(%struct.thread* %11)
  store %struct.thread_trace* %12, %struct.thread_trace** %8, align 8
  %13 = load %struct.thread_trace*, %struct.thread_trace** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.file* @thread_trace__files_entry(%struct.thread_trace* %13, i32 %14)
  store %struct.file* %15, %struct.file** %9, align 8
  %16 = load %struct.file*, %struct.file** %9, align 8
  %17 = icmp ne %struct.file* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @stat(i8* %19, %struct.stat* %10)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @major(i32 %24)
  %26 = load %struct.file*, %struct.file** %9, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @strdup(i8* %29)
  %31 = load %struct.file*, %struct.file** %9, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.file*, %struct.file** %9, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %40

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %3
  store i32 -1, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %37
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.thread_trace* @thread__priv(%struct.thread*) #1

declare dso_local %struct.file* @thread_trace__files_entry(%struct.thread_trace*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @major(i32) #1

declare dso_local i64 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
