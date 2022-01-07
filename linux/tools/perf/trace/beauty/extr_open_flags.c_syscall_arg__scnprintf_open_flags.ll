; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_open_flags.c_syscall_arg__scnprintf_open_flags.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_open_flags.c_syscall_arg__scnprintf_open_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall_arg = type { i32, i32, i32, i32 }

@O_CREAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @syscall_arg__scnprintf_open_flags(i8* %0, i64 %1, %struct.syscall_arg* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.syscall_arg*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.syscall_arg* %2, %struct.syscall_arg** %6, align 8
  %8 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %9 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @O_CREAT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %3
  %16 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %17 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  %20 = shl i32 1, %19
  %21 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %22 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %15, %3
  %26 = load i32, i32* %7, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %30 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @open__scnprintf_flags(i32 %26, i8* %27, i64 %28, i32 %31)
  ret i64 %32
}

declare dso_local i64 @open__scnprintf_flags(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
