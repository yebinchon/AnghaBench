; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5682_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"realtek,dmic1-data-pin\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"realtek,dmic1-clk-pin\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"realtek,jd-src\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"realtek,ldo1-en-gpios\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt5682_priv*, %struct.device*)* @rt5682_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5682_parse_dt(%struct.rt5682_priv* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.rt5682_priv*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.rt5682_priv* %0, %struct.rt5682_priv** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %5 = load %struct.device*, %struct.device** %4, align 8
  %6 = load %struct.rt5682_priv*, %struct.rt5682_priv** %3, align 8
  %7 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = call i32 @device_property_read_u32(%struct.device* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %8)
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load %struct.rt5682_priv*, %struct.rt5682_priv** %3, align 8
  %12 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = call i32 @device_property_read_u32(%struct.device* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load %struct.rt5682_priv*, %struct.rt5682_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @device_property_read_u32(%struct.device* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %18)
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @of_get_named_gpio(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %24 = load %struct.rt5682_priv*, %struct.rt5682_priv** %3, align 8
  %25 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  ret i32 0
}

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @of_get_named_gpio(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
