; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_print_device_properties.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_print_device_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8824 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"jkdet-polarity:       %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"micbias-voltage:      %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vref-impedance:       %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"sar-threshold-num:    %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"sar-threshold[%d]=%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"sar-hysteresis:       %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"sar-voltage:          %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"sar-compare-time:     %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"sar-sampling-time:    %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"short-key-debounce:   %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"jack-eject-debounce:  %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8824*)* @nau8824_print_device_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8824_print_device_properties(%struct.nau8824* %0) #0 {
  %2 = alloca %struct.nau8824*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.nau8824* %0, %struct.nau8824** %2, align 8
  %5 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %6 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %5, i32 0, i32 11
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %10 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %15 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %20 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %25 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %45, %1
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %31 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %38 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %37, i32 0, i32 10
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %36, i32 %43)
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %28

48:                                               ; preds = %28
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %51 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  %54 = load %struct.device*, %struct.device** %3, align 8
  %55 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %56 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  %59 = load %struct.device*, %struct.device** %3, align 8
  %60 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %61 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %62)
  %64 = load %struct.device*, %struct.device** %3, align 8
  %65 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %66 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %67)
  %69 = load %struct.device*, %struct.device** %3, align 8
  %70 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %71 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %72)
  %74 = load %struct.device*, %struct.device** %3, align 8
  %75 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %76 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %77)
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
