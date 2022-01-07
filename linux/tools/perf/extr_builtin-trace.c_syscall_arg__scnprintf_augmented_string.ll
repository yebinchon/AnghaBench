; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall_arg__scnprintf_augmented_string.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall_arg__scnprintf_augmented_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.augmented_arg* }
%struct.augmented_arg = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"\22%.*s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.syscall_arg*, i8*, i64)* @syscall_arg__scnprintf_augmented_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @syscall_arg__scnprintf_augmented_string(%struct.syscall_arg* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.syscall_arg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.augmented_arg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.syscall_arg* %0, %struct.syscall_arg** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.syscall_arg*, %struct.syscall_arg** %4, align 8
  %11 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.augmented_arg*, %struct.augmented_arg** %12, align 8
  store %struct.augmented_arg* %13, %struct.augmented_arg** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.augmented_arg*, %struct.augmented_arg** %7, align 8
  %17 = getelementptr inbounds %struct.augmented_arg, %struct.augmented_arg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.augmented_arg*, %struct.augmented_arg** %7, align 8
  %20 = getelementptr inbounds %struct.augmented_arg, %struct.augmented_arg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @scnprintf(i8* %14, i64 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load %struct.augmented_arg*, %struct.augmented_arg** %7, align 8
  %24 = getelementptr inbounds %struct.augmented_arg, %struct.augmented_arg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 8, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.syscall_arg*, %struct.syscall_arg** %4, align 8
  %30 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.augmented_arg*, %struct.augmented_arg** %31, align 8
  %33 = bitcast %struct.augmented_arg* %32 to i8*
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr i8, i8* %33, i64 %35
  %37 = bitcast i8* %36 to %struct.augmented_arg*
  %38 = load %struct.syscall_arg*, %struct.syscall_arg** %4, align 8
  %39 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store %struct.augmented_arg* %37, %struct.augmented_arg** %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.syscall_arg*, %struct.syscall_arg** %4, align 8
  %43 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, %41
  store i32 %46, i32* %44, align 8
  %47 = load i64, i64* %8, align 8
  ret i64 %47
}

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
