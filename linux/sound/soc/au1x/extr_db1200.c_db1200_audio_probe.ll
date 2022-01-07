; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_db1200.c_db1200_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_db1200.c_db1200_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32* }
%struct.platform_device = type { i32 }
%struct.platform_device_id = type { i64 }

@db1200_cards = common dso_local global %struct.snd_soc_card** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @db1200_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db1200_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.platform_device_id*, align 8
  %4 = alloca %struct.snd_soc_card*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %5)
  store %struct.platform_device_id* %6, %struct.platform_device_id** %3, align 8
  %7 = load %struct.snd_soc_card**, %struct.snd_soc_card*** @db1200_cards, align 8
  %8 = load %struct.platform_device_id*, %struct.platform_device_id** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.snd_soc_card*, %struct.snd_soc_card** %7, i64 %10
  %12 = load %struct.snd_soc_card*, %struct.snd_soc_card** %11, align 8
  store %struct.snd_soc_card* %12, %struct.snd_soc_card** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %20 = call i32 @devm_snd_soc_register_card(i32* %18, %struct.snd_soc_card* %19)
  ret i32 %20
}

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i32 @devm_snd_soc_register_card(i32*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
