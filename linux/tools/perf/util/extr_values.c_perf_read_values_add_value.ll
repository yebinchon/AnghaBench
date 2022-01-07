; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_values.c_perf_read_values_add_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_values.c_perf_read_values_add_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_read_values = type { i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_read_values_add_value(%struct.perf_read_values* %0, i32 %1, i32 %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_read_values*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.perf_read_values* %0, %struct.perf_read_values** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.perf_read_values*, %struct.perf_read_values** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @perf_read_values__findnew_thread(%struct.perf_read_values* %16, i32 %17, i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %7, align 4
  br label %49

24:                                               ; preds = %6
  %25 = load %struct.perf_read_values*, %struct.perf_read_values** %8, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 @perf_read_values__findnew_counter(%struct.perf_read_values* %25, i64 %26, i8* %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %7, align 4
  br label %49

33:                                               ; preds = %24
  %34 = load i64, i64* %13, align 8
  %35 = load %struct.perf_read_values*, %struct.perf_read_values** %8, align 8
  %36 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %35, i32 0, i32 0
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %34
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %33, %31, %22
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @perf_read_values__findnew_thread(%struct.perf_read_values*, i32, i32) #1

declare dso_local i32 @perf_read_values__findnew_counter(%struct.perf_read_values*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
