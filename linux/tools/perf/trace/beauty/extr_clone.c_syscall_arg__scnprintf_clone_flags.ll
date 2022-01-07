; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_clone.c_syscall_arg__scnprintf_clone_flags.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_clone.c_syscall_arg__scnprintf_clone_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall_arg = type { i64, i32, i32 }

@CLONE_PARENT_SETTID = common dso_local global i64 0, align 8
@CLONE_CHILD_SETTID = common dso_local global i64 0, align 8
@CLONE_CHILD_CLEARTID = common dso_local global i64 0, align 8
@CLONE_SETTLS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @syscall_arg__scnprintf_clone_flags(i8* %0, i64 %1, %struct.syscall_arg* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.syscall_arg*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.syscall_arg* %2, %struct.syscall_arg** %6, align 8
  %8 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %9 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @CLONE_PARENT_SETTID, align 8
  %13 = and i64 %11, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %17 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, 4
  store i32 %19, i32* %17, align 8
  br label %20

20:                                               ; preds = %15, %3
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @CLONE_CHILD_SETTID, align 8
  %23 = load i64, i64* @CLONE_CHILD_CLEARTID, align 8
  %24 = or i64 %22, %23
  %25 = and i64 %21, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %29 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, 8
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %27, %20
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @CLONE_SETTLS, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %39 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, 16
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i64, i64* %7, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %47 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @clone__scnprintf_flags(i64 %43, i8* %44, i64 %45, i32 %48)
  ret i64 %49
}

declare dso_local i64 @clone__scnprintf_flags(i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
