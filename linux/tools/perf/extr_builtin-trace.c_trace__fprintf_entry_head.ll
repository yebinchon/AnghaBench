; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__fprintf_entry_head.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__fprintf_entry_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { i64, i64 }
%struct.thread = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.trace*, %struct.thread*, i32, i32, i32, i32*)* @trace__fprintf_entry_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @trace__fprintf_entry_head(%struct.trace* %0, %struct.thread* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.trace*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.trace* %0, %struct.trace** %7, align 8
  store %struct.thread* %1, %struct.thread** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.trace*, %struct.trace** %7, align 8
  %15 = getelementptr inbounds %struct.trace, %struct.trace* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = load %struct.trace*, %struct.trace** %7, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = call i64 @trace__fprintf_tstamp(%struct.trace* %19, i32 %20, i32* %21)
  store i64 %22, i64* %13, align 8
  br label %23

23:                                               ; preds = %18, %6
  %24 = load %struct.trace*, %struct.trace** %7, align 8
  %25 = getelementptr inbounds %struct.trace, %struct.trace* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = call i64 @fprintf_duration(i32 %29, i32 %30, i32* %31)
  %33 = load i64, i64* %13, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %13, align 8
  br label %35

35:                                               ; preds = %28, %23
  %36 = load i64, i64* %13, align 8
  %37 = load %struct.trace*, %struct.trace** %7, align 8
  %38 = load %struct.thread*, %struct.thread** %8, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i64 @trace__fprintf_comm_tid(%struct.trace* %37, %struct.thread* %38, i32* %39)
  %41 = add i64 %36, %40
  ret i64 %41
}

declare dso_local i64 @trace__fprintf_tstamp(%struct.trace*, i32, i32*) #1

declare dso_local i64 @fprintf_duration(i32, i32, i32*) #1

declare dso_local i64 @trace__fprintf_comm_tid(%struct.trace*, %struct.thread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
