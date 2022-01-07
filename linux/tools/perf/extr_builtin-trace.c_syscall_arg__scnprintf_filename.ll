; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall_arg__scnprintf_filename.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall_arg__scnprintf_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall_arg = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, %struct.syscall_arg*)* @syscall_arg__scnprintf_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @syscall_arg__scnprintf_filename(i8* %0, i64 %1, %struct.syscall_arg* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.syscall_arg*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.syscall_arg* %2, %struct.syscall_arg** %7, align 8
  %9 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %10 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %13 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @syscall_arg__scnprintf_augmented_string(%struct.syscall_arg* %18, i8* %19, i64 %20)
  store i64 %21, i64* %4, align 8
  br label %41

22:                                               ; preds = %3
  %23 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %24 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @scnprintf(i8* %30, i64 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %32)
  store i64 %33, i64* %4, align 8
  br label %41

34:                                               ; preds = %22
  %35 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %36 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @thread__set_filename_pos(i32 %37, i8* %38, i64 %39)
  store i64 0, i64* %4, align 8
  br label %41

41:                                               ; preds = %34, %29, %17
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local i64 @syscall_arg__scnprintf_augmented_string(%struct.syscall_arg*, i8*, i64) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i64) #1

declare dso_local i32 @thread__set_filename_pos(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
