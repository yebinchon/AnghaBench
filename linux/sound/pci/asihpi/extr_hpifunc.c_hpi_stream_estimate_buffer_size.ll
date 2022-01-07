; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_stream_estimate_buffer_size.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_stream_estimate_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_format = type { i64, i32, i64, i64 }

@HPI_ERROR_INVALID_FORMAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hpi_stream_estimate_buffer_size(%struct.hpi_format* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.hpi_format*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.hpi_format*, align 8
  store %struct.hpi_format* %0, %struct.hpi_format** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.hpi_format*, %struct.hpi_format** %5, align 8
  store %struct.hpi_format* %12, %struct.hpi_format** %11, align 8
  %13 = load %struct.hpi_format*, %struct.hpi_format** %11, align 8
  %14 = getelementptr inbounds %struct.hpi_format, %struct.hpi_format* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.hpi_format*, %struct.hpi_format** %11, align 8
  %17 = getelementptr inbounds %struct.hpi_format, %struct.hpi_format* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %58 [
    i32 133, label %19
    i32 132, label %19
    i32 131, label %27
    i32 129, label %35
    i32 130, label %35
    i32 128, label %43
    i32 136, label %51
    i32 135, label %51
    i32 134, label %51
    i32 137, label %57
  ]

19:                                               ; preds = %3, %3
  %20 = load %struct.hpi_format*, %struct.hpi_format** %11, align 8
  %21 = getelementptr inbounds %struct.hpi_format, %struct.hpi_format* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = mul nsw i64 %22, 2
  %24 = load i64, i64* %10, align 8
  %25 = mul nsw i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  br label %60

27:                                               ; preds = %3
  %28 = load %struct.hpi_format*, %struct.hpi_format** %11, align 8
  %29 = getelementptr inbounds %struct.hpi_format, %struct.hpi_format* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = mul nsw i64 %30, 3
  %32 = load i64, i64* %10, align 8
  %33 = mul nsw i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  br label %60

35:                                               ; preds = %3, %3
  %36 = load %struct.hpi_format*, %struct.hpi_format** %11, align 8
  %37 = getelementptr inbounds %struct.hpi_format, %struct.hpi_format* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = mul nsw i64 %38, 4
  %40 = load i64, i64* %10, align 8
  %41 = mul nsw i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  br label %60

43:                                               ; preds = %3
  %44 = load %struct.hpi_format*, %struct.hpi_format** %11, align 8
  %45 = getelementptr inbounds %struct.hpi_format, %struct.hpi_format* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = mul nsw i64 %46, 1
  %48 = load i64, i64* %10, align 8
  %49 = mul nsw i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %8, align 4
  br label %60

51:                                               ; preds = %3, %3, %3
  %52 = load %struct.hpi_format*, %struct.hpi_format** %11, align 8
  %53 = getelementptr inbounds %struct.hpi_format, %struct.hpi_format* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = sdiv i64 %54, 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %8, align 4
  br label %60

57:                                               ; preds = %3
  store i32 32000, i32* %8, align 4
  br label %60

58:                                               ; preds = %3
  %59 = load i64, i64* @HPI_ERROR_INVALID_FORMAT, align 8
  store i64 %59, i64* %4, align 8
  br label %75

60:                                               ; preds = %57, %51, %43, %35, %27, %19
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = mul nsw i32 %61, %62
  %64 = mul nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = sdiv i64 %65, 1000
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, 4095
  %71 = and i64 %70, -4096
  %72 = trunc i64 %71 to i32
  %73 = call i32 @roundup_pow_of_two(i32 %72)
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  store i64 0, i64* %4, align 8
  br label %75

75:                                               ; preds = %60, %58
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
