; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp_modem.c_snd_atiixp_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp_modem.c_snd_atiixp_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.atiixp_dma* }
%struct.atiixp_dma = type { i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.atiixp_modem = type { i32* }

@NUM_ATI_CODECS = common dso_local global i32 0, align 4
@AC97_LINE1_RATE = common dso_local global i32 0, align 4
@AC97_LINE1_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_atiixp_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.atiixp_modem*, align 8
  %7 = alloca %struct.atiixp_dma*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call %struct.atiixp_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.atiixp_modem* %11, %struct.atiixp_modem** %6, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.atiixp_dma*, %struct.atiixp_dma** %15, align 8
  store %struct.atiixp_dma* %16, %struct.atiixp_dma** %7, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %19 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %18)
  %20 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %17, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %90

25:                                               ; preds = %2
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %32 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %34 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %33)
  %35 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %36 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %38 = load %struct.atiixp_dma*, %struct.atiixp_dma** %7, align 8
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %40 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %41 = call i32 @params_periods(%struct.snd_pcm_hw_params* %40)
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %43 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %42)
  %44 = call i32 @atiixp_build_dma_packets(%struct.atiixp_modem* %37, %struct.atiixp_dma* %38, %struct.snd_pcm_substream* %39, i32 %41, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %25
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %90

49:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %85, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @NUM_ATI_CODECS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %88

54:                                               ; preds = %50
  %55 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %56 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  br label %85

64:                                               ; preds = %54
  %65 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %66 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @AC97_LINE1_RATE, align 4
  %73 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %74 = call i32 @params_rate(%struct.snd_pcm_hw_params* %73)
  %75 = call i32 @snd_ac97_write(i32 %71, i32 %72, i32 %74)
  %76 = load %struct.atiixp_modem*, %struct.atiixp_modem** %6, align 8
  %77 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %84 = call i32 @snd_ac97_write(i32 %82, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %64, %63
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %50

88:                                               ; preds = %50
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %47, %23
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.atiixp_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @atiixp_build_dma_packets(%struct.atiixp_modem*, %struct.atiixp_dma*, %struct.snd_pcm_substream*, i32, i32) #1

declare dso_local i32 @params_periods(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_ac97_write(i32, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
