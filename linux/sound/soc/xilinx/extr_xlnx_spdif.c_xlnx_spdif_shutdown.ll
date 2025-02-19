; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_spdif.c_xlnx_spdif_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_spdif.c_xlnx_spdif_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.spdif_dev_data = type { i64 }

@XSPDIF_SOFT_RESET_VALUE = common dso_local global i32 0, align 4
@XSPDIF_SOFT_RESET_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @xlnx_spdif_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlnx_spdif_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.spdif_dev_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.spdif_dev_data* @dev_get_drvdata(i32 %8)
  store %struct.spdif_dev_data* %9, %struct.spdif_dev_data** %5, align 8
  %10 = load i32, i32* @XSPDIF_SOFT_RESET_VALUE, align 4
  %11 = load %struct.spdif_dev_data*, %struct.spdif_dev_data** %5, align 8
  %12 = getelementptr inbounds %struct.spdif_dev_data, %struct.spdif_dev_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XSPDIF_SOFT_RESET_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 %10, i64 %15)
  ret void
}

declare dso_local %struct.spdif_dev_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
