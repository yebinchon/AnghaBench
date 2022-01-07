; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_pid.c_syscall_arg__scnprintf_pid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_pid.c_syscall_arg__scnprintf_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall_arg = type { i32, %struct.trace* }
%struct.trace = type { i32 }
%struct.thread = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @syscall_arg__scnprintf_pid(i8* %0, i64 %1, %struct.syscall_arg* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.syscall_arg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.trace*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.thread*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.syscall_arg* %2, %struct.syscall_arg** %6, align 8
  %11 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %12 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %15 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %14, i32 0, i32 1
  %16 = load %struct.trace*, %struct.trace** %15, align 8
  store %struct.trace* %16, %struct.trace** %8, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @scnprintf(i8* %17, i64 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.trace*, %struct.trace** %8, align 8
  %22 = getelementptr inbounds %struct.trace, %struct.trace* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.thread* @machine__findnew_thread(i32 %23, i32 %24, i32 %25)
  store %struct.thread* %26, %struct.thread** %10, align 8
  %27 = load %struct.thread*, %struct.thread** %10, align 8
  %28 = icmp ne %struct.thread* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %3
  %30 = load %struct.thread*, %struct.thread** %10, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.thread*, %struct.thread** %10, align 8
  %36 = call i32 @thread__set_comm_from_proc(%struct.thread* %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.thread*, %struct.thread** %10, align 8
  %39 = getelementptr inbounds %struct.thread, %struct.thread* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %9, align 8
  %48 = sub i64 %46, %47
  %49 = load %struct.thread*, %struct.thread** %10, align 8
  %50 = call i32 @thread__comm_str(%struct.thread* %49)
  %51 = call i64 @scnprintf(i8* %45, i64 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %42, %37
  %55 = load %struct.thread*, %struct.thread** %10, align 8
  %56 = call i32 @thread__put(%struct.thread* %55)
  br label %57

57:                                               ; preds = %54, %3
  %58 = load i64, i64* %9, align 8
  ret i64 %58
}

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32) #1

declare dso_local %struct.thread* @machine__findnew_thread(i32, i32, i32) #1

declare dso_local i32 @thread__set_comm_from_proc(%struct.thread*) #1

declare dso_local i32 @thread__comm_str(%struct.thread*) #1

declare dso_local i32 @thread__put(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
