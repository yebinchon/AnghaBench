; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mt6358_put_volsw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mt6358_put_volsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.mt6358_priv = type { i32*, i32 }
%struct.soc_mixer_control = type { i32 }

@RG_AUDHPLGAIN_SFT = common dso_local global i32 0, align 4
@RG_AUDHPLGAIN_MASK = common dso_local global i32 0, align 4
@AUDIO_ANALOG_VOLUME_HPOUTL = common dso_local global i64 0, align 8
@RG_AUDHPRGAIN_SFT = common dso_local global i32 0, align 4
@RG_AUDHPRGAIN_MASK = common dso_local global i32 0, align 4
@AUDIO_ANALOG_VOLUME_HPOUTR = common dso_local global i64 0, align 8
@RG_AUDLOLGAIN_SFT = common dso_local global i32 0, align 4
@RG_AUDLOLGAIN_MASK = common dso_local global i32 0, align 4
@AUDIO_ANALOG_VOLUME_LINEOUTL = common dso_local global i64 0, align 8
@RG_AUDLORGAIN_SFT = common dso_local global i32 0, align 4
@RG_AUDLORGAIN_MASK = common dso_local global i32 0, align 4
@AUDIO_ANALOG_VOLUME_LINEOUTR = common dso_local global i64 0, align 8
@RG_AUDHSGAIN_SFT = common dso_local global i32 0, align 4
@RG_AUDHSGAIN_MASK = common dso_local global i32 0, align 4
@AUDIO_ANALOG_VOLUME_HSOUTL = common dso_local global i64 0, align 8
@AUDIO_ANALOG_VOLUME_HSOUTR = common dso_local global i64 0, align 8
@RG_AUDPREAMPLGAIN_SFT = common dso_local global i32 0, align 4
@RG_AUDPREAMPLGAIN_MASK = common dso_local global i32 0, align 4
@AUDIO_ANALOG_VOLUME_MICAMP1 = common dso_local global i64 0, align 8
@RG_AUDPREAMPRGAIN_SFT = common dso_local global i32 0, align 4
@RG_AUDPREAMPRGAIN_MASK = common dso_local global i32 0, align 4
@AUDIO_ANALOG_VOLUME_MICAMP2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @mt6358_put_volsw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6358_put_volsw(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.mt6358_priv*, align 8
  %8 = alloca %struct.soc_mixer_control*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.mt6358_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.mt6358_priv* %14, %struct.mt6358_priv** %7, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %18, %struct.soc_mixer_control** %8, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %21 = call i32 @snd_soc_put_volsw(%struct.snd_kcontrol* %19, %struct.snd_ctl_elem_value* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %3, align 4
  br label %136

26:                                               ; preds = %2
  %27 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %28 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %134 [
    i32 129, label %30
    i32 130, label %55
    i32 128, label %80
    i32 132, label %105
    i32 131, label %105
  ]

30:                                               ; preds = %26
  %31 = load %struct.mt6358_priv*, %struct.mt6358_priv** %7, align 8
  %32 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @regmap_read(i32 %33, i32 129, i32* %9)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @RG_AUDHPLGAIN_SFT, align 4
  %37 = lshr i32 %35, %36
  %38 = load i32, i32* @RG_AUDHPLGAIN_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.mt6358_priv*, %struct.mt6358_priv** %7, align 8
  %41 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @AUDIO_ANALOG_VOLUME_HPOUTL, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @RG_AUDHPRGAIN_SFT, align 4
  %47 = lshr i32 %45, %46
  %48 = load i32, i32* @RG_AUDHPRGAIN_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.mt6358_priv*, %struct.mt6358_priv** %7, align 8
  %51 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @AUDIO_ANALOG_VOLUME_HPOUTR, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %49, i32* %54, align 4
  br label %134

55:                                               ; preds = %26
  %56 = load %struct.mt6358_priv*, %struct.mt6358_priv** %7, align 8
  %57 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @regmap_read(i32 %58, i32 130, i32* %9)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @RG_AUDLOLGAIN_SFT, align 4
  %62 = lshr i32 %60, %61
  %63 = load i32, i32* @RG_AUDLOLGAIN_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load %struct.mt6358_priv*, %struct.mt6358_priv** %7, align 8
  %66 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @AUDIO_ANALOG_VOLUME_LINEOUTL, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @RG_AUDLORGAIN_SFT, align 4
  %72 = lshr i32 %70, %71
  %73 = load i32, i32* @RG_AUDLORGAIN_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load %struct.mt6358_priv*, %struct.mt6358_priv** %7, align 8
  %76 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @AUDIO_ANALOG_VOLUME_LINEOUTR, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %74, i32* %79, align 4
  br label %134

80:                                               ; preds = %26
  %81 = load %struct.mt6358_priv*, %struct.mt6358_priv** %7, align 8
  %82 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @regmap_read(i32 %83, i32 128, i32* %9)
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @RG_AUDHSGAIN_SFT, align 4
  %87 = lshr i32 %85, %86
  %88 = load i32, i32* @RG_AUDHSGAIN_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load %struct.mt6358_priv*, %struct.mt6358_priv** %7, align 8
  %91 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @AUDIO_ANALOG_VOLUME_HSOUTL, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32 %89, i32* %94, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @RG_AUDHSGAIN_SFT, align 4
  %97 = lshr i32 %95, %96
  %98 = load i32, i32* @RG_AUDHSGAIN_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load %struct.mt6358_priv*, %struct.mt6358_priv** %7, align 8
  %101 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @AUDIO_ANALOG_VOLUME_HSOUTR, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %99, i32* %104, align 4
  br label %134

105:                                              ; preds = %26, %26
  %106 = load %struct.mt6358_priv*, %struct.mt6358_priv** %7, align 8
  %107 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @regmap_read(i32 %108, i32 132, i32* %9)
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @RG_AUDPREAMPLGAIN_SFT, align 4
  %112 = lshr i32 %110, %111
  %113 = load i32, i32* @RG_AUDPREAMPLGAIN_MASK, align 4
  %114 = and i32 %112, %113
  %115 = load %struct.mt6358_priv*, %struct.mt6358_priv** %7, align 8
  %116 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @AUDIO_ANALOG_VOLUME_MICAMP1, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32 %114, i32* %119, align 4
  %120 = load %struct.mt6358_priv*, %struct.mt6358_priv** %7, align 8
  %121 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @regmap_read(i32 %122, i32 131, i32* %9)
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @RG_AUDPREAMPRGAIN_SFT, align 4
  %126 = lshr i32 %124, %125
  %127 = load i32, i32* @RG_AUDPREAMPRGAIN_MASK, align 4
  %128 = and i32 %126, %127
  %129 = load %struct.mt6358_priv*, %struct.mt6358_priv** %7, align 8
  %130 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @AUDIO_ANALOG_VOLUME_MICAMP2, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32 %128, i32* %133, align 4
  br label %134

134:                                              ; preds = %26, %105, %80, %55, %30
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %24
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.mt6358_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_put_volsw(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
