; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_format_field__intval.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c_format_field__intval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_format_field = type { i32, i32 }
%struct.perf_sample = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @format_field__intval(%struct.tep_format_field* %0, %struct.perf_sample* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tep_format_field*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.tep_format_field* %0, %struct.tep_format_field** %5, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %11 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.tep_format_field*, %struct.tep_format_field** %5, align 8
  %14 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr i8, i8* %12, i64 %16
  store i8* %17, i8** %9, align 8
  %18 = load %struct.tep_format_field*, %struct.tep_format_field** %5, align 8
  %19 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %36 [
    i32 1, label %21
    i32 2, label %25
    i32 4, label %29
    i32 8, label %33
  ]

21:                                               ; preds = %3
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  br label %56

25:                                               ; preds = %3
  %26 = load i8*, i8** %9, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  br label %37

29:                                               ; preds = %3
  %30 = load i8*, i8** %9, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  br label %37

33:                                               ; preds = %3
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @memcpy(i32* %8, i8* %34, i32 4)
  br label %37

36:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

37:                                               ; preds = %33, %29, %25
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %56

42:                                               ; preds = %37
  %43 = load %struct.tep_format_field*, %struct.tep_format_field** %5, align 8
  %44 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %55 [
    i32 2, label %46
    i32 4, label %49
    i32 8, label %52
  ]

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @bswap_16(i32 %47)
  store i32 %48, i32* %4, align 4
  br label %56

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @bswap_32(i32 %50)
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %42
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @bswap_64(i32 %53)
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %52, %49, %46, %40, %36, %21
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @bswap_16(i32) #1

declare dso_local i32 @bswap_32(i32) #1

declare dso_local i32 @bswap_64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
