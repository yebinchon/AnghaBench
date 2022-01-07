; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_print_device_properties.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_print_device_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"jkdet-enable:         %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"jkdet-pull-enable:    %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"jkdet-pull-up:        %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"jkdet-polarity:       %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"micbias-voltage:      %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vref-impedance:       %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"sar-threshold-num:    %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"sar-threshold[%d]=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"sar-hysteresis:       %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"sar-voltage:          %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"sar-compare-time:     %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"sar-sampling-time:    %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"short-key-debounce:   %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"jack-insert-debounce: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"jack-eject-debounce:  %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"crosstalk-enable:     %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8825*)* @nau8825_print_device_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8825_print_device_properties(%struct.nau8825* %0) #0 {
  %2 = alloca %struct.nau8825*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  store %struct.nau8825* %0, %struct.nau8825** %2, align 8
  %5 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %6 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %5, i32 0, i32 16
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %10 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %15 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %20 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %25 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %30 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %35 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %36)
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %40 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %60, %1
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %46 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %53 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %52, i32 0, i32 15
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %51, i32 %58)
  br label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %66 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %67)
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %71 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %72)
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %76 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %77)
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %81 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %82)
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %86 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %87)
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %91 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %90, i32 0, i32 12
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %92)
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %96 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %95, i32 0, i32 13
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %97)
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %101 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %100, i32 0, i32 14
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %102)
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
