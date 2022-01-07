; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall__mask_val.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_syscall__mask_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.syscall_arg*, i64)* }
%struct.syscall_arg = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.syscall*, %struct.syscall_arg*, i64)* @syscall__mask_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @syscall__mask_val(%struct.syscall* %0, %struct.syscall_arg* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.syscall*, align 8
  %6 = alloca %struct.syscall_arg*, align 8
  %7 = alloca i64, align 8
  store %struct.syscall* %0, %struct.syscall** %5, align 8
  store %struct.syscall_arg* %1, %struct.syscall_arg** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.syscall*, %struct.syscall** %5, align 8
  %9 = getelementptr inbounds %struct.syscall, %struct.syscall* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %3
  %13 = load %struct.syscall*, %struct.syscall** %5, align 8
  %14 = getelementptr inbounds %struct.syscall, %struct.syscall* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %17 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64 (%struct.syscall_arg*, i64)*, i64 (%struct.syscall_arg*, i64)** %20, align 8
  %22 = icmp ne i64 (%struct.syscall_arg*, i64)* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %12
  %24 = load %struct.syscall*, %struct.syscall** %5, align 8
  %25 = getelementptr inbounds %struct.syscall, %struct.syscall* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %28 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64 (%struct.syscall_arg*, i64)*, i64 (%struct.syscall_arg*, i64)** %31, align 8
  %33 = load %struct.syscall_arg*, %struct.syscall_arg** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i64 %32(%struct.syscall_arg* %33, i64 %34)
  store i64 %35, i64* %4, align 8
  br label %38

36:                                               ; preds = %12, %3
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %36, %23
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
