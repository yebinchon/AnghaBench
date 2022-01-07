; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_glk_rt5682_max98357a.c_geminilake_audio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_glk_rt5682_max98357a.c_geminilake_audio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.snd_soc_acpi_mach* }
%struct.snd_soc_acpi_mach = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.glk_card_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@glk_audio_card_rt5682_m98357a = common dso_local global %struct.snd_soc_card zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @geminilake_audio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geminilake_audio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.glk_card_private*, align 8
  %5 = alloca %struct.snd_soc_acpi_mach*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.snd_soc_card*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.glk_card_private* @devm_kzalloc(%struct.TYPE_5__* %10, i32 4, i32 %11)
  store %struct.glk_card_private* %12, %struct.glk_card_private** %4, align 8
  %13 = load %struct.glk_card_private*, %struct.glk_card_private** %4, align 8
  %14 = icmp ne %struct.glk_card_private* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %1
  %19 = load %struct.glk_card_private*, %struct.glk_card_private** %4, align 8
  %20 = getelementptr inbounds %struct.glk_card_private, %struct.glk_card_private* %19, i32 0, i32 0
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  store %struct.snd_soc_card* @glk_audio_card_rt5682_m98357a, %struct.snd_soc_card** %7, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %25 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %24, i32 0, i32 0
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %25, align 8
  %26 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %27 = load %struct.glk_card_private*, %struct.glk_card_private** %4, align 8
  %28 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %26, %struct.glk_card_private* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %31, align 8
  store %struct.snd_soc_acpi_mach* %32, %struct.snd_soc_acpi_mach** %5, align 8
  %33 = load %struct.snd_soc_acpi_mach*, %struct.snd_soc_acpi_mach** %5, align 8
  %34 = getelementptr inbounds %struct.snd_soc_acpi_mach, %struct.snd_soc_acpi_mach* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %6, align 8
  %37 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @snd_soc_fixup_dai_links_platform_name(%struct.snd_soc_card* %37, i8* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %18
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %49

44:                                               ; preds = %18
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.snd_soc_card*, %struct.snd_soc_card** %7, align 8
  %48 = call i32 @devm_snd_soc_register_card(%struct.TYPE_5__* %46, %struct.snd_soc_card* %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %44, %42, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.glk_card_private* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.glk_card_private*) #1

declare dso_local i32 @snd_soc_fixup_dai_links_platform_name(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @devm_snd_soc_register_card(%struct.TYPE_5__*, %struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
