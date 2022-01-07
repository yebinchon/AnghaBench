; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_thread_trace__files_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_thread_trace__files_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.thread_trace = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.file* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (%struct.thread_trace*, i32)* @thread_trace__files_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @thread_trace__files_entry(%struct.thread_trace* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.thread_trace*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  store %struct.thread_trace* %0, %struct.thread_trace** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.file* null, %struct.file** %3, align 8
  br label %81

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.thread_trace*, %struct.thread_trace** %4, align 8
  %13 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %11, %15
  br i1 %16, label %17, label %73

17:                                               ; preds = %10
  %18 = load %struct.thread_trace*, %struct.thread_trace** %4, align 8
  %19 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.file*, %struct.file** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call %struct.file* @realloc(%struct.file* %21, i32 %26)
  store %struct.file* %27, %struct.file** %6, align 8
  %28 = load %struct.file*, %struct.file** %6, align 8
  %29 = icmp eq %struct.file* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  store %struct.file* null, %struct.file** %3, align 8
  br label %81

31:                                               ; preds = %17
  %32 = load %struct.thread_trace*, %struct.thread_trace** %4, align 8
  %33 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = load %struct.file*, %struct.file** %6, align 8
  %39 = load %struct.thread_trace*, %struct.thread_trace** %4, align 8
  %40 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.file, %struct.file* %38, i64 %43
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i64 1
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.thread_trace*, %struct.thread_trace** %4, align 8
  %48 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %46, %50
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memset(%struct.file* %45, i32 0, i32 %54)
  br label %64

56:                                               ; preds = %31
  %57 = load %struct.file*, %struct.file** %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memset(%struct.file* %57, i32 0, i32 %62)
  br label %64

64:                                               ; preds = %56, %37
  %65 = load %struct.file*, %struct.file** %6, align 8
  %66 = load %struct.thread_trace*, %struct.thread_trace** %4, align 8
  %67 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store %struct.file* %65, %struct.file** %68, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.thread_trace*, %struct.thread_trace** %4, align 8
  %71 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  br label %73

73:                                               ; preds = %64, %10
  %74 = load %struct.thread_trace*, %struct.thread_trace** %4, align 8
  %75 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load %struct.file*, %struct.file** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.file, %struct.file* %77, i64 %79
  store %struct.file* %80, %struct.file** %3, align 8
  br label %81

81:                                               ; preds = %73, %30, %9
  %82 = load %struct.file*, %struct.file** %3, align 8
  ret %struct.file* %82
}

declare dso_local %struct.file* @realloc(%struct.file*, i32) #1

declare dso_local i32 @memset(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
