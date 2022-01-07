; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rk3399_gru_sound.c_rockchip_sound_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rk3399_gru_sound.c_rockchip_sound_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32* }
%struct.platform_device = type { i32 }

@rockchip_sound_card = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"Failed to parse dais: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"dmic-wakeup-delay-ms\00", align 1
@dmic_wakeup_delay = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [70 x i8] c"no optional property 'dmic-wakeup-delay-ms' found, default: no delay\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_sound_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_sound_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.snd_soc_card* @rockchip_sound_card, %struct.snd_soc_card** %4, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %9 = call i32 @rockchip_sound_of_parse_dais(i32* %7, %struct.snd_soc_card* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @device_property_read_u32(i32* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64* @dmic_wakeup_delay)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  store i64 0, i64* @dmic_wakeup_delay, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @dev_dbg(i32* %26, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %32 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %36 = call i32 @devm_snd_soc_register_card(i32* %34, %struct.snd_soc_card* %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %28, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @rockchip_sound_of_parse_dais(i32*, %struct.snd_soc_card*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @device_property_read_u32(i32*, i8*, i64*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @devm_snd_soc_register_card(i32*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
