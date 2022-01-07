; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ts3a227e.c_ts3a227e_parse_device_property.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ts3a227e.c_ts3a227e_parse_device_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts3a227e = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"ti,micbias\00", align 1
@TS3A227E_REG_SETTING_3 = common dso_local global i32 0, align 4
@MICBIAS_SETTING_MASK = common dso_local global i32 0, align 4
@MICBIAS_SETTING_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ts3a227e*, %struct.device*)* @ts3a227e_parse_device_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts3a227e_parse_device_property(%struct.ts3a227e* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.ts3a227e*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ts3a227e* %0, %struct.ts3a227e** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call i32 @device_property_read_u32(%struct.device* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %5)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %2
  %12 = load %struct.ts3a227e*, %struct.ts3a227e** %3, align 8
  %13 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TS3A227E_REG_SETTING_3, align 4
  %16 = load i32, i32* @MICBIAS_SETTING_MASK, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 7
  %19 = load i32, i32* @MICBIAS_SETTING_SFT, align 4
  %20 = shl i32 %18, %19
  %21 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 %20)
  br label %22

22:                                               ; preds = %11, %2
  ret i32 0
}

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
