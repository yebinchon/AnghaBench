; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_rt5663_rt5514_max98927.c_kabylake_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_rt5663_rt5514_max98927.c_kabylake_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.snd_soc_acpi_mach* }
%struct.snd_soc_acpi_mach = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.kbl_codec_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kabylake_audio_card = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@constraints_dmic_2ch = common dso_local global i32 0, align 4
@constraints_dmic_channels = common dso_local global i32 0, align 4
@dmic_constraints = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kabylake_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kabylake_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.kbl_codec_private*, align 8
  %5 = alloca %struct.snd_soc_acpi_mach*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.kbl_codec_private* @devm_kzalloc(%struct.TYPE_9__* %7, i32 4, i32 %8)
  store %struct.kbl_codec_private* %9, %struct.kbl_codec_private** %4, align 8
  %10 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %4, align 8
  %11 = icmp ne %struct.kbl_codec_private* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %4, align 8
  %17 = getelementptr inbounds %struct.kbl_codec_private, %struct.kbl_codec_private* %16, i32 0, i32 0
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kabylake_audio_card, i32 0, i32 0), align 8
  %21 = load %struct.kbl_codec_private*, %struct.kbl_codec_private** %4, align 8
  %22 = call i32 @snd_soc_card_set_drvdata(%struct.TYPE_8__* @kabylake_audio_card, %struct.kbl_codec_private* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %25, align 8
  store %struct.snd_soc_acpi_mach* %26, %struct.snd_soc_acpi_mach** %5, align 8
  %27 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %5, align 8
  %28 = icmp ne %struct.snd_soc_acpi_mach* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %15
  %30 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %5, align 8
  %31 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32* @constraints_dmic_2ch, i32* @constraints_dmic_channels
  store i32* %36, i32** @dmic_constraints, align 8
  br label %37

37:                                               ; preds = %29, %15
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @devm_snd_soc_register_card(%struct.TYPE_9__* %39, %struct.TYPE_8__* @kabylake_audio_card)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %12
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.kbl_codec_private* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.TYPE_8__*, %struct.kbl_codec_private*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
