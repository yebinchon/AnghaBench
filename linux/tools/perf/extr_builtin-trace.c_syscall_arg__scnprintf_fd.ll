; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall_arg__scnprintf_fd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall_arg__scnprintf_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall_arg = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @syscall_arg__scnprintf_fd(i8* %0, i64 %1, %struct.syscall_arg* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.syscall_arg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.syscall_arg* %2, %struct.syscall_arg** %6, align 8
  %10 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %11 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %13, i64 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %18 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %22 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @thread__fd_path(i32 %19, i32 %20, i32 %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %3
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = sub i64 %31, %32
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %30, i64 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %27, %3
  %39 = load i64, i64* %8, align 8
  ret i64 %39
}

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local i8* @thread__fd_path(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
