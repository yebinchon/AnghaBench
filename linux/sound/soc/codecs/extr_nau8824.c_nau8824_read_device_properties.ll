; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_read_device_properties.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_read_device_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nau8824 = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"nuvoton,jkdet-polarity\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"nuvoton,micbias-voltage\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"nuvoton,vref-impedance\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"nuvoton,sar-threshold-num\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"nuvoton,sar-threshold\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"nuvoton,sar-hysteresis\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"nuvoton,sar-voltage\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"nuvoton,sar-compare-time\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"nuvoton,sar-sampling-time\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"nuvoton,short-key-debounce\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"nuvoton,jack-eject-debounce\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.nau8824*)* @nau8824_read_device_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8824_read_device_properties(%struct.device* %0, %struct.nau8824* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.nau8824*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.nau8824* %1, %struct.nau8824** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %8 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %7, i32 0, i32 0
  %9 = call i32 @device_property_read_u32(%struct.device* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %14 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %18 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %17, i32 0, i32 1
  %19 = call i32 @device_property_read_u32(%struct.device* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %24 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %23, i32 0, i32 1
  store i32 6, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %15
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %28 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %27, i32 0, i32 2
  %29 = call i32 @device_property_read_u32(%struct.device* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %34 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %33, i32 0, i32 2
  store i32 2, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %25
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %38 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %37, i32 0, i32 3
  %39 = call i32 @device_property_read_u32(%struct.device* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %44 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %43, i32 0, i32 3
  store i32 4, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %35
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %48 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %51 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_property_read_u32_array(%struct.device* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32* %49, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %45
  %57 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %58 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 10, i32* %60, align 4
  %61 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %62 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 20, i32* %64, align 4
  %65 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %66 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 38, i32* %68, align 4
  %69 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %70 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  store i32 115, i32* %72, align 4
  br label %73

73:                                               ; preds = %56, %45
  %74 = load %struct.device*, %struct.device** %3, align 8
  %75 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %76 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %75, i32 0, i32 5
  %77 = call i32 @device_property_read_u32(%struct.device* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %82 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %81, i32 0, i32 5
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %73
  %84 = load %struct.device*, %struct.device** %3, align 8
  %85 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %86 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %85, i32 0, i32 6
  %87 = call i32 @device_property_read_u32(%struct.device* %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32* %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %92 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %91, i32 0, i32 6
  store i32 6, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %83
  %94 = load %struct.device*, %struct.device** %3, align 8
  %95 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %96 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %95, i32 0, i32 7
  %97 = call i32 @device_property_read_u32(%struct.device* %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32* %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %102 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %101, i32 0, i32 7
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %93
  %104 = load %struct.device*, %struct.device** %3, align 8
  %105 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %106 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %105, i32 0, i32 8
  %107 = call i32 @device_property_read_u32(%struct.device* %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32* %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %112 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %111, i32 0, i32 8
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %103
  %114 = load %struct.device*, %struct.device** %3, align 8
  %115 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %116 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %115, i32 0, i32 9
  %117 = call i32 @device_property_read_u32(%struct.device* %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32* %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %122 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %121, i32 0, i32 9
  store i32 0, i32* %122, align 8
  br label %123

123:                                              ; preds = %120, %113
  %124 = load %struct.device*, %struct.device** %3, align 8
  %125 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %126 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %125, i32 0, i32 10
  %127 = call i32 @device_property_read_u32(%struct.device* %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32* %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load %struct.nau8824*, %struct.nau8824** %4, align 8
  %132 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %131, i32 0, i32 10
  store i32 1, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %123
  ret i32 0
}

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @device_property_read_u32_array(%struct.device*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
