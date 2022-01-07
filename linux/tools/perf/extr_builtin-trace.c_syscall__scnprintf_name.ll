; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall__scnprintf_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall__scnprintf_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.syscall_arg = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"arg%d: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.syscall*, i8*, i64, %struct.syscall_arg*)* @syscall__scnprintf_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @syscall__scnprintf_name(%struct.syscall* %0, i8* %1, i64 %2, %struct.syscall_arg* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.syscall*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.syscall_arg*, align 8
  store %struct.syscall* %0, %struct.syscall** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.syscall_arg* %3, %struct.syscall_arg** %9, align 8
  %10 = load %struct.syscall*, %struct.syscall** %6, align 8
  %11 = getelementptr inbounds %struct.syscall, %struct.syscall* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %4
  %15 = load %struct.syscall*, %struct.syscall** %6, align 8
  %16 = getelementptr inbounds %struct.syscall, %struct.syscall* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.syscall_arg*, %struct.syscall_arg** %9, align 8
  %19 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %14
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.syscall*, %struct.syscall** %6, align 8
  %29 = getelementptr inbounds %struct.syscall, %struct.syscall* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.syscall_arg*, %struct.syscall_arg** %9, align 8
  %32 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @scnprintf(i8* %26, i64 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %36)
  store i64 %37, i64* %5, align 8
  br label %45

38:                                               ; preds = %14, %4
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.syscall_arg*, %struct.syscall_arg** %9, align 8
  %42 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @scnprintf(i8* %39, i64 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %38, %25
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local i64 @scnprintf(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
