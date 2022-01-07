; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-interface.c_axg_tdm_iface_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-interface.c_axg_tdm_iface_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.axg_tdm_iface = type { i32, i32 }
%struct.axg_tdm_stream = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"not enough slots for channels\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"incompatible slots width for stream\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @axg_tdm_iface_set_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_tdm_iface_set_stream(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.axg_tdm_iface*, align 8
  %9 = alloca %struct.axg_tdm_stream*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = call %struct.axg_tdm_iface* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %12)
  store %struct.axg_tdm_iface* %13, %struct.axg_tdm_iface** %8, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %16 = call %struct.axg_tdm_stream* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai* %14, %struct.snd_pcm_substream* %15)
  store %struct.axg_tdm_stream* %16, %struct.axg_tdm_stream** %9, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i8* @params_channels(%struct.snd_pcm_hw_params* %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %21 = call i8* @params_width(%struct.snd_pcm_hw_params* %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %24 = call i32 @params_rate(%struct.snd_pcm_hw_params* %23)
  %25 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %8, align 8
  %26 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %9, align 8
  %28 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @axg_tdm_slots_total(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %35 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %66

40:                                               ; preds = %3
  %41 = load %struct.axg_tdm_iface*, %struct.axg_tdm_iface** %8, align 8
  %42 = getelementptr inbounds %struct.axg_tdm_iface, %struct.axg_tdm_iface* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %48 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %66

53:                                               ; preds = %40
  %54 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %55 = call i32 @params_physical_width(%struct.snd_pcm_hw_params* %54)
  %56 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %9, align 8
  %57 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %59 = call i8* @params_width(%struct.snd_pcm_hw_params* %58)
  %60 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %9, align 8
  %61 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %63 = call i8* @params_channels(%struct.snd_pcm_hw_params* %62)
  %64 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %9, align 8
  %65 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %53, %46, %33
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.axg_tdm_iface* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.axg_tdm_stream* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*) #1

declare dso_local i8* @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i8* @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @axg_tdm_slots_total(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @params_physical_width(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
