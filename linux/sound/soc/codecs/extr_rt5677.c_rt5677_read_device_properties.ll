; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_read_device_properties.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_read_device_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5677_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN1\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"realtek,in1-differential\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"IN2\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"realtek,in2-differential\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"OUT1\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"realtek,lout1-differential\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"OUT2\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"realtek,lout2-differential\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"OUT3\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"realtek,lout3-differential\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"realtek,gpio-config\00", align 1
@RT5677_GPIO_NUM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"DCLK\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"realtek,dmic2_clk_pin\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"JD1\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"realtek,jd1-gpio\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"JD2\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"realtek,jd2-gpio\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"JD3\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"realtek,jd3-gpio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt5677_priv*, %struct.device*)* @rt5677_read_device_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5677_read_device_properties(%struct.rt5677_priv* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.rt5677_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  store %struct.rt5677_priv* %0, %struct.rt5677_priv** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = call i64 @device_property_read_bool(%struct.device* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i64 @device_property_read_bool(%struct.device* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ true, %2 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = load %struct.rt5677_priv*, %struct.rt5677_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i64 @device_property_read_bool(%struct.device* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %13
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i64 @device_property_read_bool(%struct.device* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %22, %13
  %27 = phi i1 [ true, %13 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = load %struct.rt5677_priv*, %struct.rt5677_priv** %3, align 8
  %30 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i64 @device_property_read_bool(%struct.device* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i64 @device_property_read_bool(%struct.device* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %35, %26
  %40 = phi i1 [ true, %26 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = load %struct.rt5677_priv*, %struct.rt5677_priv** %3, align 8
  %43 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i64 @device_property_read_bool(%struct.device* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i64 @device_property_read_bool(%struct.device* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %48, %39
  %53 = phi i1 [ true, %39 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = load %struct.rt5677_priv*, %struct.rt5677_priv** %3, align 8
  %56 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 4
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i64 @device_property_read_bool(%struct.device* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %52
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i64 @device_property_read_bool(%struct.device* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %61, %52
  %66 = phi i1 [ true, %52 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  %68 = load %struct.rt5677_priv*, %struct.rt5677_priv** %3, align 8
  %69 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  store i32 %67, i32* %70, align 8
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load %struct.rt5677_priv*, %struct.rt5677_priv** %3, align 8
  %73 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @RT5677_GPIO_NUM, align 4
  %77 = call i32 @device_property_read_u8_array(%struct.device* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = call i32 @device_property_read_u32(%struct.device* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %5)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %65
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call i32 @device_property_read_u32(%struct.device* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8** %5)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %81, %65
  %86 = load i8*, i8** %5, align 8
  %87 = load %struct.rt5677_priv*, %struct.rt5677_priv** %3, align 8
  %88 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 8
  store i8* %86, i8** %89, align 8
  br label %90

90:                                               ; preds = %85, %81
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = call i32 @device_property_read_u32(%struct.device* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %5)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 @device_property_read_u32(%struct.device* %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8** %5)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %94, %90
  %99 = load i8*, i8** %5, align 8
  %100 = load %struct.rt5677_priv*, %struct.rt5677_priv** %3, align 8
  %101 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 7
  store i8* %99, i8** %102, align 8
  br label %103

103:                                              ; preds = %98, %94
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = call i32 @device_property_read_u32(%struct.device* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %5)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = call i32 @device_property_read_u32(%struct.device* %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8** %5)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %107, %103
  %112 = load i8*, i8** %5, align 8
  %113 = load %struct.rt5677_priv*, %struct.rt5677_priv** %3, align 8
  %114 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 6
  store i8* %112, i8** %115, align 8
  br label %116

116:                                              ; preds = %111, %107
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = call i32 @device_property_read_u32(%struct.device* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %5)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = call i32 @device_property_read_u32(%struct.device* %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8** %5)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %120, %116
  %125 = load i8*, i8** %5, align 8
  %126 = load %struct.rt5677_priv*, %struct.rt5677_priv** %3, align 8
  %127 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 5
  store i8* %125, i8** %128, align 8
  br label %129

129:                                              ; preds = %124, %120
  ret void
}

declare dso_local i64 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @device_property_read_u8_array(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
