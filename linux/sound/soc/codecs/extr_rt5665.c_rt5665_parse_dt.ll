; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5665_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"realtek,in1-differential\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"realtek,in2-differential\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"realtek,in3-differential\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"realtek,in4-differential\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"realtek,dmic1-data-pin\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"realtek,dmic2-data-pin\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"realtek,jd-src\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"realtek,ldo1-en-gpios\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt5665_priv*, %struct.device*)* @rt5665_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5665_parse_dt(%struct.rt5665_priv* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.rt5665_priv*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.rt5665_priv* %0, %struct.rt5665_priv** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %5 = load %struct.device*, %struct.device** %4, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @of_property_read_bool(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.rt5665_priv*, %struct.rt5665_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 7
  store i8* %8, i8** %11, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @of_property_read_bool(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.rt5665_priv*, %struct.rt5665_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 6
  store i8* %15, i8** %18, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @of_property_read_bool(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.rt5665_priv*, %struct.rt5665_priv** %3, align 8
  %24 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 5
  store i8* %22, i8** %25, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @of_property_read_bool(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %30 = load %struct.rt5665_priv*, %struct.rt5665_priv** %3, align 8
  %31 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  store i8* %29, i8** %32, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rt5665_priv*, %struct.rt5665_priv** %3, align 8
  %37 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = call i32 @of_property_read_u32(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %38)
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rt5665_priv*, %struct.rt5665_priv** %3, align 8
  %44 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = call i32 @of_property_read_u32(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32* %45)
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rt5665_priv*, %struct.rt5665_priv** %3, align 8
  %51 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = call i32 @of_property_read_u32(i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %52)
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @of_get_named_gpio(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %58 = load %struct.rt5665_priv*, %struct.rt5665_priv** %3, align 8
  %59 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  ret i32 0
}

declare dso_local i8* @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @of_get_named_gpio(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
