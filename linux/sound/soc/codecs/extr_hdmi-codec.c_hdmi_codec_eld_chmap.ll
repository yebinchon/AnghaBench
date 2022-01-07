; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdmi-codec.c_hdmi_codec_eld_chmap.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdmi-codec.c_hdmi_codec_eld_chmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_codec_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@FL = common dso_local global i64 0, align 8
@FR = common dso_local global i64 0, align 8
@hdmi_codec_8ch_chmaps = common dso_local global i32 0, align 4
@hdmi_codec_stereo_chmaps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_codec_priv*)* @hdmi_codec_eld_chmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_codec_eld_chmap(%struct.hdmi_codec_priv* %0) #0 {
  %2 = alloca %struct.hdmi_codec_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.hdmi_codec_priv* %0, %struct.hdmi_codec_priv** %2, align 8
  %5 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %2, align 8
  %6 = getelementptr inbounds %struct.hdmi_codec_priv, %struct.hdmi_codec_priv* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @drm_eld_get_spk_alloc(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @hdmi_codec_spk_mask_from_alloc(i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @FL, align 8
  %13 = load i64, i64* @FR, align 8
  %14 = or i64 %12, %13
  %15 = xor i64 %14, -1
  %16 = and i64 %11, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %2, align 8
  %20 = getelementptr inbounds %struct.hdmi_codec_priv, %struct.hdmi_codec_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i32, i32* @hdmi_codec_8ch_chmaps, align 4
  %27 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %2, align 8
  %28 = getelementptr inbounds %struct.hdmi_codec_priv, %struct.hdmi_codec_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  br label %37

31:                                               ; preds = %18, %1
  %32 = load i32, i32* @hdmi_codec_stereo_chmaps, align 4
  %33 = load %struct.hdmi_codec_priv*, %struct.hdmi_codec_priv** %2, align 8
  %34 = getelementptr inbounds %struct.hdmi_codec_priv, %struct.hdmi_codec_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %25
  ret void
}

declare dso_local i32 @drm_eld_get_spk_alloc(i32) #1

declare dso_local i64 @hdmi_codec_spk_mask_from_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
