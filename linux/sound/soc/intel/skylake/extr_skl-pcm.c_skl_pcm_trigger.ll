; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget*, i32 }
%struct.snd_soc_dapm_widget = type { i32 }
%struct.skl_dev = type { i32 }
%struct.skl_module_cfg = type { i32 }
%struct.hdac_bus = type { i32 }
%struct.hdac_ext_stream = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@AZX_REG_VS_SDXDPIB_XBASE = common dso_local global i32 0, align 4
@AZX_REG_VS_SDXDPIB_XINTERVAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @skl_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.skl_dev*, align 8
  %9 = alloca %struct.skl_module_cfg*, align 8
  %10 = alloca %struct.hdac_bus*, align 8
  %11 = alloca %struct.hdac_ext_stream*, align 8
  %12 = alloca %struct.snd_soc_dapm_widget*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.skl_dev* @get_skl_ctx(i32 %16)
  store %struct.skl_dev* %17, %struct.skl_dev** %8, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %19 = call %struct.hdac_bus* @get_bus_ctx(%struct.snd_pcm_substream* %18)
  store %struct.hdac_bus* %19, %struct.hdac_bus** %10, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %21 = call %struct.hdac_ext_stream* @get_hdac_ext_stream(%struct.snd_pcm_substream* %20)
  store %struct.hdac_ext_stream* %21, %struct.hdac_ext_stream** %11, align 8
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.skl_module_cfg* @skl_tplg_fe_get_cpr_module(%struct.snd_soc_dai* %22, i32 %25)
  store %struct.skl_module_cfg* %26, %struct.skl_module_cfg** %9, align 8
  %27 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %28 = icmp ne %struct.skl_module_cfg* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %136

32:                                               ; preds = %3
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %39, i32 0, i32 1
  %41 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %40, align 8
  store %struct.snd_soc_dapm_widget* %41, %struct.snd_soc_dapm_widget** %12, align 8
  br label %46

42:                                               ; preds = %32
  %43 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %43, i32 0, i32 0
  %45 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %44, align 8
  store %struct.snd_soc_dapm_widget* %45, %struct.snd_soc_dapm_widget** %12, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %132 [
    i32 131, label %48
    i32 130, label %72
    i32 132, label %72
    i32 133, label %86
    i32 128, label %86
    i32 129, label %86
  ]

48:                                               ; preds = %46
  %49 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %12, align 8
  %50 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %48
  %54 = load %struct.hdac_bus*, %struct.hdac_bus** %10, align 8
  %55 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %11, align 8
  %56 = call %struct.TYPE_3__* @hdac_stream(%struct.hdac_ext_stream* %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @snd_hdac_ext_stream_drsm_enable(%struct.hdac_bus* %54, i32 1, i32 %58)
  %60 = load %struct.hdac_bus*, %struct.hdac_bus** %10, align 8
  %61 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %11, align 8
  %62 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %11, align 8
  %63 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @snd_hdac_ext_stream_set_dpibr(%struct.hdac_bus* %60, %struct.hdac_ext_stream* %61, i32 %64)
  %66 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %11, align 8
  %67 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %11, align 8
  %68 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @snd_hdac_ext_stream_set_lpib(%struct.hdac_ext_stream* %66, i32 %69)
  br label %71

71:                                               ; preds = %53, %48
  br label %72

72:                                               ; preds = %46, %46, %71
  %73 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @skl_decoupled_trigger(%struct.snd_pcm_substream* %73, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %4, align 4
  br label %136

80:                                               ; preds = %72
  %81 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  %82 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %83 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @skl_run_pipe(%struct.skl_dev* %81, i32 %84)
  store i32 %85, i32* %4, align 4
  br label %136

86:                                               ; preds = %46, %46, %46
  %87 = load %struct.skl_dev*, %struct.skl_dev** %8, align 8
  %88 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %89 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @skl_stop_pipe(%struct.skl_dev* %87, i32 %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %4, align 4
  br label %136

96:                                               ; preds = %86
  %97 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @skl_decoupled_trigger(%struct.snd_pcm_substream* %97, i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 128
  br i1 %101, label %102, label %131

102:                                              ; preds = %96
  %103 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %12, align 8
  %104 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %131, label %107

107:                                              ; preds = %102
  %108 = load %struct.hdac_bus*, %struct.hdac_bus** %10, align 8
  %109 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @AZX_REG_VS_SDXDPIB_XBASE, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* @AZX_REG_VS_SDXDPIB_XINTERVAL, align 4
  %114 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %11, align 8
  %115 = call %struct.TYPE_3__* @hdac_stream(%struct.hdac_ext_stream* %114)
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %113, %117
  %119 = add nsw i32 %112, %118
  %120 = call i32 @readl(i32 %119)
  %121 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %11, align 8
  %122 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %11, align 8
  %124 = call %struct.TYPE_3__* @hdac_stream(%struct.hdac_ext_stream* %123)
  %125 = call i32 @snd_hdac_stream_get_pos_lpib(%struct.TYPE_3__* %124)
  %126 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %11, align 8
  %127 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load %struct.hdac_bus*, %struct.hdac_bus** %10, align 8
  %129 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %11, align 8
  %130 = call i32 @snd_hdac_ext_stream_decouple(%struct.hdac_bus* %128, %struct.hdac_ext_stream* %129, i32 0)
  br label %131

131:                                              ; preds = %107, %102, %96
  br label %135

132:                                              ; preds = %46
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %136

135:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %132, %94, %80, %78, %29
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.skl_dev* @get_skl_ctx(i32) #1

declare dso_local %struct.hdac_bus* @get_bus_ctx(%struct.snd_pcm_substream*) #1

declare dso_local %struct.hdac_ext_stream* @get_hdac_ext_stream(%struct.snd_pcm_substream*) #1

declare dso_local %struct.skl_module_cfg* @skl_tplg_fe_get_cpr_module(%struct.snd_soc_dai*, i32) #1

declare dso_local i32 @snd_hdac_ext_stream_drsm_enable(%struct.hdac_bus*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @hdac_stream(%struct.hdac_ext_stream*) #1

declare dso_local i32 @snd_hdac_ext_stream_set_dpibr(%struct.hdac_bus*, %struct.hdac_ext_stream*, i32) #1

declare dso_local i32 @snd_hdac_ext_stream_set_lpib(%struct.hdac_ext_stream*, i32) #1

declare dso_local i32 @skl_decoupled_trigger(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @skl_run_pipe(%struct.skl_dev*, i32) #1

declare dso_local i32 @skl_stop_pipe(%struct.skl_dev*, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @snd_hdac_stream_get_pos_lpib(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_hdac_ext_stream_decouple(%struct.hdac_bus*, %struct.hdac_ext_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
