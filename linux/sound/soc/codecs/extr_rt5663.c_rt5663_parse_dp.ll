; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_parse_dp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_parse_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5663_priv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"realtek,dc_offset_l_manual\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"realtek,dc_offset_r_manual\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"realtek,dc_offset_l_manual_mic\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"realtek,dc_offset_r_manual_mic\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"realtek,impedance_sensing_num\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"realtek,impedance_sensing_table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt5663_priv*, %struct.device*)* @rt5663_parse_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5663_parse_dp(%struct.rt5663_priv* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.rt5663_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.rt5663_priv* %0, %struct.rt5663_priv** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @device_property_read_u32(%struct.device* %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %9)
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @device_property_read_u32(%struct.device* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %14)
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = call i32 @device_property_read_u32(%struct.device* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %23 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = call i32 @device_property_read_u32(%struct.device* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32* %24)
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %28 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = call i32 @device_property_read_u32(%struct.device* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32* %29)
  %31 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %32 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %2
  %37 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i64 @devm_kzalloc(%struct.device* %44, i32 %45, i32 %46)
  %48 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %49 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load %struct.rt5663_priv*, %struct.rt5663_priv** %3, align 8
  %52 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @device_property_read_u32_array(%struct.device* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %36, %2
  ret i32 0
}

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i64 @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @device_property_read_u32_array(%struct.device*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
