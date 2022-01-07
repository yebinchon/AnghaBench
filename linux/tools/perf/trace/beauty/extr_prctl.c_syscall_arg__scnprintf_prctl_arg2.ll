; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_prctl.c_syscall_arg__scnprintf_prctl_arg2.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_prctl.c_syscall_arg__scnprintf_prctl_arg2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall_arg = type { i32, i32 }

@PR_SET_MM = common dso_local global i32 0, align 4
@PR_SET_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @syscall_arg__scnprintf_prctl_arg2(i8* %0, i64 %1, %struct.syscall_arg* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.syscall_arg*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.syscall_arg* %2, %struct.syscall_arg** %7, align 8
  %9 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %10 = call i32 @syscall_arg__val(%struct.syscall_arg* %9, i32 0)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @PR_SET_MM, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %16 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %21 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @prctl__scnprintf_set_mm(i32 %17, i8* %18, i64 %19, i32 %22)
  store i64 %23, i64* %4, align 8
  br label %38

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @PR_SET_NAME, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %32 = call i64 @syscall_arg__scnprintf_hex(i8* %29, i64 %30, %struct.syscall_arg* %31)
  store i64 %32, i64* %4, align 8
  br label %38

33:                                               ; preds = %24
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %37 = call i64 @syscall_arg__scnprintf_long(i8* %34, i64 %35, %struct.syscall_arg* %36)
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %33, %28, %14
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

declare dso_local i32 @syscall_arg__val(%struct.syscall_arg*, i32) #1

declare dso_local i64 @prctl__scnprintf_set_mm(i32, i8*, i64, i32) #1

declare dso_local i64 @syscall_arg__scnprintf_hex(i8*, i64, %struct.syscall_arg*) #1

declare dso_local i64 @syscall_arg__scnprintf_long(i8*, i64, %struct.syscall_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
