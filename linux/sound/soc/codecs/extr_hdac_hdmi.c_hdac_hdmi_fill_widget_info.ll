; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_fill_widget_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_fill_widget_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_soc_dapm_widget = type { i32, i8*, i32, i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)*, i16, i8*, %struct.snd_kcontrol_new*, i64, i32, i32 }
%struct.snd_kcontrol = type opaque
%struct.snd_kcontrol_new = type { i32 }
%struct.snd_kcontrol.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SND_SOC_NOPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.snd_soc_dapm_widget*, i32, i8*, i8*, i8*, %struct.snd_kcontrol_new*, i32, i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol.0*, i32)*, i16)* @hdac_hdmi_fill_widget_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_hdmi_fill_widget_info(%struct.device* %0, %struct.snd_soc_dapm_widget* %1, i32 %2, i8* %3, i8* %4, i8* %5, %struct.snd_kcontrol_new* %6, i32 %7, i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol.0*, i32)* %8, i16 zeroext %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.snd_soc_dapm_widget*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.snd_kcontrol_new*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol.0*, i32)*, align 8
  %21 = alloca i16, align 2
  store %struct.device* %0, %struct.device** %12, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store %struct.snd_kcontrol_new* %6, %struct.snd_kcontrol_new** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol.0*, i32)* %8, i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol.0*, i32)** %20, align 8
  store i16 %9, i16* %21, align 2
  %22 = load i32, i32* %14, align 4
  %23 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %13, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.device*, %struct.device** %12, align 8
  %26 = load i8*, i8** %16, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @devm_kstrdup(%struct.device* %25, i8* %26, i32 %27)
  %29 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %13, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 4
  %31 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %13, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %10
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  br label %63

38:                                               ; preds = %10
  %39 = load i8*, i8** %17, align 8
  %40 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %13, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @SND_SOC_NOPM, align 4
  %43 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %13, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %13, align 8
  %46 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %45, i32 0, i32 7
  store i64 0, i64* %46, align 8
  %47 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %18, align 8
  %48 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %13, align 8
  %49 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %48, i32 0, i32 6
  store %struct.snd_kcontrol_new* %47, %struct.snd_kcontrol_new** %49, align 8
  %50 = load i32, i32* %19, align 4
  %51 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %13, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %13, align 8
  %55 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol.0*, i32)*, i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol.0*, i32)** %20, align 8
  %57 = bitcast i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol.0*, i32)* %56 to i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)*
  %58 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %13, align 8
  %59 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %58, i32 0, i32 3
  store i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* %57, i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)** %59, align 8
  %60 = load i16, i16* %21, align 2
  %61 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %13, align 8
  %62 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %61, i32 0, i32 4
  store i16 %60, i16* %62, align 8
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %38, %35
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local i32 @devm_kstrdup(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
