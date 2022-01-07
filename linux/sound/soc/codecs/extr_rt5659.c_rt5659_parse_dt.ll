; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5659_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8*, i8* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"realtek,in1-differential\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"realtek,in3-differential\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"realtek,in4-differential\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"realtek,dmic1-data-pin\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"realtek,dmic2-data-pin\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"realtek,jd-src\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt5659_priv*, %struct.device*)* @rt5659_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5659_parse_dt(%struct.rt5659_priv* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.rt5659_priv*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.rt5659_priv* %0, %struct.rt5659_priv** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %5 = load %struct.device*, %struct.device** %4, align 8
  %6 = call i8* @device_property_read_bool(%struct.device* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.rt5659_priv*, %struct.rt5659_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 5
  store i8* %6, i8** %9, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i8* @device_property_read_bool(%struct.device* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.rt5659_priv*, %struct.rt5659_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  store i8* %11, i8** %14, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i8* @device_property_read_bool(%struct.device* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %17 = load %struct.rt5659_priv*, %struct.rt5659_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  store i8* %16, i8** %19, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.rt5659_priv*, %struct.rt5659_priv** %3, align 8
  %22 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = call i32 @device_property_read_u32(%struct.device* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* %23)
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.rt5659_priv*, %struct.rt5659_priv** %3, align 8
  %27 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i32 @device_property_read_u32(%struct.device* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %28)
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.rt5659_priv*, %struct.rt5659_priv** %3, align 8
  %32 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @device_property_read_u32(%struct.device* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %33)
  ret i32 0
}

declare dso_local i8* @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
