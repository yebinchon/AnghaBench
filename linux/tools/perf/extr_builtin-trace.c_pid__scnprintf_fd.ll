; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_pid__scnprintf_fd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_pid__scnprintf_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pid__scnprintf_fd(%struct.trace* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.trace*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca i8*, align 8
  store %struct.trace* %0, %struct.trace** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %14, i64 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i64 %17, i64* %11, align 8
  %18 = load %struct.trace*, %struct.trace** %6, align 8
  %19 = getelementptr inbounds %struct.trace, %struct.trace* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.thread* @machine__find_thread(i32 %20, i32 %21, i32 %22)
  store %struct.thread* %23, %struct.thread** %12, align 8
  %24 = load %struct.thread*, %struct.thread** %12, align 8
  %25 = icmp ne %struct.thread* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %5
  %27 = load %struct.thread*, %struct.thread** %12, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.trace*, %struct.trace** %6, align 8
  %30 = call i8* @thread__fd_path(%struct.thread* %27, i32 %28, %struct.trace* %29)
  store i8* %30, i8** %13, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = sub i64 %37, %38
  %40 = load i8*, i8** %13, align 8
  %41 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %36, i64 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i64, i64* %11, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %11, align 8
  br label %44

44:                                               ; preds = %33, %26
  %45 = load %struct.thread*, %struct.thread** %12, align 8
  %46 = call i32 @thread__put(%struct.thread* %45)
  br label %47

47:                                               ; preds = %44, %5
  %48 = load i64, i64* %11, align 8
  ret i64 %48
}

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local %struct.thread* @machine__find_thread(i32, i32, i32) #1

declare dso_local i8* @thread__fd_path(%struct.thread*, i32, %struct.trace*) #1

declare dso_local i32 @thread__put(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
