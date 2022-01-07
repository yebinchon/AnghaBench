; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe-dai.c_msm_dai_q6_dai_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe-dai.c_msm_dai_q6_dai_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, i32 }
%struct.q6afe_dai_data = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @msm_dai_q6_dai_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_dai_q6_dai_remove(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.q6afe_dai_data*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %4 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %5 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.q6afe_dai_data* @dev_get_drvdata(i32 %6)
  store %struct.q6afe_dai_data* %7, %struct.q6afe_dai_data** %3, align 8
  %8 = load %struct.q6afe_dai_data*, %struct.q6afe_dai_data** %3, align 8
  %9 = getelementptr inbounds %struct.q6afe_dai_data, %struct.q6afe_dai_data* %8, i32 0, i32 0
  %10 = load i32**, i32*** %9, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32*, i32** %10, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @q6afe_port_put(i32* %15)
  %17 = load %struct.q6afe_dai_data*, %struct.q6afe_dai_data** %3, align 8
  %18 = getelementptr inbounds %struct.q6afe_dai_data, %struct.q6afe_dai_data* %17, i32 0, i32 0
  %19 = load i32**, i32*** %18, align 8
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32*, i32** %19, i64 %22
  store i32* null, i32** %23, align 8
  ret i32 0
}

declare dso_local %struct.q6afe_dai_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @q6afe_port_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
