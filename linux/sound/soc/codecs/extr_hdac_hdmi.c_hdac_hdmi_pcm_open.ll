; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i64 }
%struct.hdac_hdmi_priv = type { %struct.hdac_hdmi_dai_port_map*, %struct.hdac_device* }
%struct.hdac_hdmi_dai_port_map = type { %struct.hdac_hdmi_port*, %struct.hdac_hdmi_cvt* }
%struct.hdac_hdmi_port = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hdac_hdmi_cvt = type { i32 }
%struct.hdac_device = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Failed: present?:%d ELD valid?:%d pin:port: %d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @hdac_hdmi_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_hdmi_pcm_open(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.hdac_hdmi_priv*, align 8
  %7 = alloca %struct.hdac_device*, align 8
  %8 = alloca %struct.hdac_hdmi_dai_port_map*, align 8
  %9 = alloca %struct.hdac_hdmi_cvt*, align 8
  %10 = alloca %struct.hdac_hdmi_port*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %13 = call %struct.hdac_hdmi_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %12)
  store %struct.hdac_hdmi_priv* %13, %struct.hdac_hdmi_priv** %6, align 8
  %14 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %6, align 8
  %15 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %14, i32 0, i32 1
  %16 = load %struct.hdac_device*, %struct.hdac_device** %15, align 8
  store %struct.hdac_device* %16, %struct.hdac_device** %7, align 8
  %17 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %6, align 8
  %18 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %17, i32 0, i32 0
  %19 = load %struct.hdac_hdmi_dai_port_map*, %struct.hdac_hdmi_dai_port_map** %18, align 8
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.hdac_hdmi_dai_port_map, %struct.hdac_hdmi_dai_port_map* %19, i64 %22
  store %struct.hdac_hdmi_dai_port_map* %23, %struct.hdac_hdmi_dai_port_map** %8, align 8
  %24 = load %struct.hdac_hdmi_dai_port_map*, %struct.hdac_hdmi_dai_port_map** %8, align 8
  %25 = getelementptr inbounds %struct.hdac_hdmi_dai_port_map, %struct.hdac_hdmi_dai_port_map* %24, i32 0, i32 1
  %26 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %25, align 8
  store %struct.hdac_hdmi_cvt* %26, %struct.hdac_hdmi_cvt** %9, align 8
  %27 = load %struct.hdac_device*, %struct.hdac_device** %7, align 8
  %28 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %6, align 8
  %29 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %9, align 8
  %30 = call %struct.hdac_hdmi_port* @hdac_hdmi_get_port_from_cvt(%struct.hdac_device* %27, %struct.hdac_hdmi_priv* %28, %struct.hdac_hdmi_cvt* %29)
  store %struct.hdac_hdmi_port* %30, %struct.hdac_hdmi_port** %10, align 8
  %31 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %10, align 8
  %32 = icmp ne %struct.hdac_hdmi_port* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

34:                                               ; preds = %2
  %35 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %10, align 8
  %36 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %10, align 8
  %42 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %40, %34
  %47 = load %struct.hdac_device*, %struct.hdac_device** %7, align 8
  %48 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %47, i32 0, i32 0
  %49 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %10, align 8
  %50 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %10, align 8
  %54 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %10, align 8
  %58 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %10, align 8
  %63 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_warn(i32* %48, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %56, i32 %61, i32 %64)
  store i32 0, i32* %3, align 4
  br label %91

66:                                               ; preds = %40
  %67 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %10, align 8
  %68 = load %struct.hdac_hdmi_dai_port_map*, %struct.hdac_hdmi_dai_port_map** %8, align 8
  %69 = getelementptr inbounds %struct.hdac_hdmi_dai_port_map, %struct.hdac_hdmi_dai_port_map* %68, i32 0, i32 0
  store %struct.hdac_hdmi_port* %67, %struct.hdac_hdmi_port** %69, align 8
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %10, align 8
  %74 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @hdac_hdmi_eld_limit_formats(i32 %72, i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %3, align 4
  br label %91

82:                                               ; preds = %66
  %83 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %10, align 8
  %87 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @snd_pcm_hw_constraint_eld(i32 %85, i32 %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %82, %80, %46, %33
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.hdac_hdmi_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.hdac_hdmi_port* @hdac_hdmi_get_port_from_cvt(%struct.hdac_device*, %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_cvt*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hdac_hdmi_eld_limit_formats(i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_eld(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
