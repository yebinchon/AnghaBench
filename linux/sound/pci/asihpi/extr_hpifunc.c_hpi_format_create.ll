; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_format_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_format_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_format = type { i32 }
%struct.hpi_msg_format = type { i32, i32, i64, i64, i64 }

@HPI_ERROR_INVALID_CHANNELS = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_FORMAT = common dso_local global i32 0, align 4
@HPI_ERROR_INCOMPATIBLE_SAMPLERATE = common dso_local global i32 0, align 4
@HPI_MPEG_MODE_DEFAULT = common dso_local global i64 0, align 8
@HPI_MPEG_MODE_DUALCHANNEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpi_format_create(%struct.hpi_format* %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hpi_format*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.hpi_msg_format, align 8
  store %struct.hpi_format* %0, %struct.hpi_format** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %18 [
    i32 1, label %17
    i32 2, label %17
    i32 4, label %17
    i32 6, label %17
    i32 8, label %17
    i32 16, label %17
  ]

17:                                               ; preds = %6, %6, %6, %6, %6, %6
  br label %21

18:                                               ; preds = %6
  %19 = load i32, i32* @HPI_ERROR_INVALID_CHANNELS, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  store i32 %20, i32* %7, align 4
  br label %100

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds %struct.hpi_msg_format, %struct.hpi_msg_format* %15, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %10, align 4
  switch i32 %24, label %26 [
    i32 133, label %25
    i32 132, label %25
    i32 130, label %25
    i32 131, label %25
    i32 134, label %25
    i32 129, label %25
    i32 139, label %25
    i32 138, label %25
    i32 137, label %25
    i32 140, label %25
    i32 143, label %25
    i32 141, label %25
    i32 128, label %25
    i32 142, label %25
    i32 136, label %25
    i32 135, label %25
  ]

25:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21
  br label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @HPI_ERROR_INVALID_FORMAT, align 4
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %7, align 4
  br label %100

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = getelementptr inbounds %struct.hpi_msg_format, %struct.hpi_msg_format* %15, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i64, i64* %11, align 8
  %33 = icmp slt i64 %32, 8000
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @HPI_ERROR_INCOMPATIBLE_SAMPLERATE, align 4
  store i32 %35, i32* %14, align 4
  store i64 8000, i64* %11, align 8
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i64, i64* %11, align 8
  %38 = icmp sgt i64 %37, 200000
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @HPI_ERROR_INCOMPATIBLE_SAMPLERATE, align 4
  store i32 %40, i32* %14, align 4
  store i64 200000, i64* %11, align 8
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds %struct.hpi_msg_format, %struct.hpi_msg_format* %15, i32 0, i32 2
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* %10, align 4
  switch i32 %44, label %68 [
    i32 139, label %45
    i32 138, label %45
    i32 137, label %45
    i32 133, label %48
    i32 134, label %48
    i32 130, label %55
    i32 131, label %55
    i32 129, label %62
  ]

45:                                               ; preds = %41, %41, %41
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds %struct.hpi_msg_format, %struct.hpi_msg_format* %15, i32 0, i32 3
  store i64 %46, i64* %47, align 8
  br label %70

48:                                               ; preds = %41, %41
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %11, align 8
  %52 = mul nsw i64 %50, %51
  %53 = mul nsw i64 %52, 2
  %54 = getelementptr inbounds %struct.hpi_msg_format, %struct.hpi_msg_format* %15, i32 0, i32 3
  store i64 %53, i64* %54, align 8
  br label %70

55:                                               ; preds = %41, %41
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %11, align 8
  %59 = mul nsw i64 %57, %58
  %60 = mul nsw i64 %59, 4
  %61 = getelementptr inbounds %struct.hpi_msg_format, %struct.hpi_msg_format* %15, i32 0, i32 3
  store i64 %60, i64* %61, align 8
  br label %70

62:                                               ; preds = %41
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %11, align 8
  %66 = mul nsw i64 %64, %65
  %67 = getelementptr inbounds %struct.hpi_msg_format, %struct.hpi_msg_format* %15, i32 0, i32 3
  store i64 %66, i64* %67, align 8
  br label %70

68:                                               ; preds = %41
  %69 = getelementptr inbounds %struct.hpi_msg_format, %struct.hpi_msg_format* %15, i32 0, i32 3
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %68, %62, %55, %48, %45
  %71 = load i32, i32* %10, align 4
  switch i32 %71, label %93 [
    i32 138, label %72
  ]

72:                                               ; preds = %70
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* @HPI_MPEG_MODE_DEFAULT, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i64, i64* @HPI_MPEG_MODE_DEFAULT, align 8
  store i64 %80, i64* %13, align 8
  %81 = load i32, i32* @HPI_ERROR_INVALID_FORMAT, align 4
  store i32 %81, i32* %14, align 4
  br label %90

82:                                               ; preds = %75, %72
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* @HPI_MPEG_MODE_DUALCHANNEL, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i64, i64* @HPI_MPEG_MODE_DEFAULT, align 8
  store i64 %87, i64* %13, align 8
  %88 = load i32, i32* @HPI_ERROR_INVALID_FORMAT, align 4
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %86, %82
  br label %90

90:                                               ; preds = %89, %79
  %91 = load i64, i64* %13, align 8
  %92 = getelementptr inbounds %struct.hpi_msg_format, %struct.hpi_msg_format* %15, i32 0, i32 4
  store i64 %91, i64* %92, align 8
  br label %96

93:                                               ; preds = %70
  %94 = load i64, i64* %13, align 8
  %95 = getelementptr inbounds %struct.hpi_msg_format, %struct.hpi_msg_format* %15, i32 0, i32 4
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %93, %90
  %97 = load %struct.hpi_format*, %struct.hpi_format** %8, align 8
  %98 = call i32 @hpi_msg_to_format(%struct.hpi_format* %97, %struct.hpi_msg_format* %15)
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %96, %26, %18
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i32 @hpi_msg_to_format(%struct.hpi_format*, %struct.hpi_msg_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
