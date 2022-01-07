; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_add_pinmux_cvt_route.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_add_pinmux_cvt_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }
%struct.snd_soc_dapm_widget = type { i32, %struct.snd_kcontrol_new* }
%struct.snd_kcontrol_new = type { i64 }
%struct.snd_soc_dapm_route = type { i32 }
%struct.hdac_hdmi_priv = type { i32, i32 }
%struct.soc_enum = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdac_device*, %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_route*, i32)* @hdac_hdmi_add_pinmux_cvt_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdac_hdmi_add_pinmux_cvt_route(%struct.hdac_device* %0, %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_route* %2, i32 %3) #0 {
  %5 = alloca %struct.hdac_device*, align 8
  %6 = alloca %struct.snd_soc_dapm_widget*, align 8
  %7 = alloca %struct.snd_soc_dapm_route*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hdac_hdmi_priv*, align 8
  %10 = alloca %struct.snd_kcontrol_new*, align 8
  %11 = alloca %struct.soc_enum*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %5, align 8
  store %struct.snd_soc_dapm_widget* %1, %struct.snd_soc_dapm_widget** %6, align 8
  store %struct.snd_soc_dapm_route* %2, %struct.snd_soc_dapm_route** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %16 = call %struct.hdac_hdmi_priv* @hdev_to_hdmi_priv(%struct.hdac_device* %15)
  store %struct.hdac_hdmi_priv* %16, %struct.hdac_hdmi_priv** %9, align 8
  %17 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %9, align 8
  %18 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %9, align 8
  %21 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %81, %4
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %9, align 8
  %27 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %84

30:                                               ; preds = %24
  %31 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %31, i64 %33
  %35 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %34, i32 0, i32 1
  %36 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %35, align 8
  store %struct.snd_kcontrol_new* %36, %struct.snd_kcontrol_new** %10, align 8
  %37 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %38 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.soc_enum*
  store %struct.soc_enum* %40, %struct.soc_enum** %11, align 8
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %75, %30
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %9, align 8
  %44 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %41
  %48 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %48, i64 %50
  %52 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %52, i64 %54
  %56 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.soc_enum*, %struct.soc_enum** %11, align 8
  %59 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %66, i64 %68
  %70 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @hdac_hdmi_fill_route(%struct.snd_soc_dapm_route* %51, i32 %57, i32 %65, i32 %71, i32* null)
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %47
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %41

78:                                               ; preds = %41
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %24

84:                                               ; preds = %24
  ret void
}

declare dso_local %struct.hdac_hdmi_priv* @hdev_to_hdmi_priv(%struct.hdac_device*) #1

declare dso_local i32 @hdac_hdmi_fill_route(%struct.snd_soc_dapm_route*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
