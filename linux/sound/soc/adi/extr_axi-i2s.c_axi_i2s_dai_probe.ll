; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/adi/extr_axi-i2s.c_axi_i2s_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/adi/extr_axi-i2s.c_axi_i2s_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.axi_i2s = type { i32, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @axi_i2s_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axi_i2s_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.axi_i2s*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %4 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %5 = call %struct.axi_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %4)
  store %struct.axi_i2s* %5, %struct.axi_i2s** %3, align 8
  %6 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %7 = load %struct.axi_i2s*, %struct.axi_i2s** %3, align 8
  %8 = getelementptr inbounds %struct.axi_i2s, %struct.axi_i2s* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.axi_i2s*, %struct.axi_i2s** %3, align 8
  %13 = getelementptr inbounds %struct.axi_i2s, %struct.axi_i2s* %12, i32 0, i32 2
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32* [ %13, %11 ], [ null, %14 ]
  %17 = load %struct.axi_i2s*, %struct.axi_i2s** %3, align 8
  %18 = getelementptr inbounds %struct.axi_i2s, %struct.axi_i2s* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.axi_i2s*, %struct.axi_i2s** %3, align 8
  %23 = getelementptr inbounds %struct.axi_i2s, %struct.axi_i2s* %22, i32 0, i32 0
  br label %25

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32* [ %23, %21 ], [ null, %24 ]
  %27 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %6, i32* %16, i32* %26)
  ret i32 0
}

declare dso_local %struct.axi_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
