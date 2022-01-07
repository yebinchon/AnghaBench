; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.ssp_priv = type { %struct.ssp_device* }
%struct.ssp_device = type { i32 }

@SSSR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @pxa_ssp_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_ssp_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ssp_priv*, align 8
  %9 = alloca %struct.ssp_device*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %12 = call %struct.ssp_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.ssp_priv* %12, %struct.ssp_priv** %8, align 8
  %13 = load %struct.ssp_priv*, %struct.ssp_priv** %8, align 8
  %14 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %13, i32 0, i32 0
  %15 = load %struct.ssp_device*, %struct.ssp_device** %14, align 8
  store %struct.ssp_device* %15, %struct.ssp_device** %9, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %46 [
    i32 131, label %17
    i32 132, label %20
    i32 130, label %31
    i32 129, label %35
    i32 128, label %39
    i32 133, label %42
  ]

17:                                               ; preds = %3
  %18 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %19 = call i32 @pxa_ssp_enable(%struct.ssp_device* %18)
  br label %49

20:                                               ; preds = %3
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %22 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %23 = call i32 @pxa_ssp_set_running_bit(%struct.snd_pcm_substream* %21, %struct.ssp_device* %22, i32 1)
  %24 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %25 = load i32, i32* @SSSR, align 4
  %26 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %28 = load i32, i32* @SSSR, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %27, i32 %28, i32 %29)
  br label %49

31:                                               ; preds = %3
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %33 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %34 = call i32 @pxa_ssp_set_running_bit(%struct.snd_pcm_substream* %32, %struct.ssp_device* %33, i32 1)
  br label %49

35:                                               ; preds = %3
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %37 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %38 = call i32 @pxa_ssp_set_running_bit(%struct.snd_pcm_substream* %36, %struct.ssp_device* %37, i32 0)
  br label %49

39:                                               ; preds = %3
  %40 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %41 = call i32 @pxa_ssp_disable(%struct.ssp_device* %40)
  br label %49

42:                                               ; preds = %3
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %44 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %45 = call i32 @pxa_ssp_set_running_bit(%struct.snd_pcm_substream* %43, %struct.ssp_device* %44, i32 0)
  br label %49

46:                                               ; preds = %3
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %46, %42, %39, %35, %31, %20, %17
  %50 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %51 = call i32 @dump_registers(%struct.ssp_device* %50)
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.ssp_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @pxa_ssp_enable(%struct.ssp_device*) #1

declare dso_local i32 @pxa_ssp_set_running_bit(%struct.snd_pcm_substream*, %struct.ssp_device*, i32) #1

declare dso_local i32 @pxa_ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @pxa_ssp_write_reg(%struct.ssp_device*, i32, i32) #1

declare dso_local i32 @pxa_ssp_disable(%struct.ssp_device*) #1

declare dso_local i32 @dump_registers(%struct.ssp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
