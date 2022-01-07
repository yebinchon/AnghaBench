; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_uniphier_aio_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_uniphier_aio_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.uniphier_aio = type { %struct.TYPE_4__*, %struct.uniphier_aio_sub* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uniphier_aio_sub = type { i32, i32, %struct.snd_pcm_hw_params }

@.str = private unnamed_addr constant [27 x i8] c"Rate is not supported(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AUD_CLK_A = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @uniphier_aio_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aio_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.uniphier_aio*, align 8
  %9 = alloca %struct.uniphier_aio_sub*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = call %struct.uniphier_aio* @uniphier_priv(%struct.snd_soc_dai* %13)
  store %struct.uniphier_aio* %14, %struct.uniphier_aio** %8, align 8
  %15 = load %struct.uniphier_aio*, %struct.uniphier_aio** %8, align 8
  %16 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %15, i32 0, i32 1
  %17 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %16, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %17, i64 %20
  store %struct.uniphier_aio_sub* %21, %struct.uniphier_aio_sub** %9, align 8
  %22 = load %struct.uniphier_aio*, %struct.uniphier_aio** %8, align 8
  %23 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.device* %27, %struct.device** %10, align 8
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %29 = call i32 @params_rate(%struct.snd_pcm_hw_params* %28)
  switch i32 %29, label %32 [
    i32 48000, label %30
    i32 32000, label %30
    i32 24000, label %30
    i32 44100, label %31
    i32 22050, label %31
  ]

30:                                               ; preds = %3, %3, %3
  store i32 12288000, i32* %11, align 4
  br label %39

31:                                               ; preds = %3, %3
  store i32 11289600, i32* %11, align 4
  br label %39

32:                                               ; preds = %3
  %33 = load %struct.device*, %struct.device** %10, align 8
  %34 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %35 = call i32 @params_rate(%struct.snd_pcm_hw_params* %34)
  %36 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %66

39:                                               ; preds = %31, %30
  %40 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %41 = load i32, i32* @AUD_CLK_A, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %44 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %4, align 4
  br label %66

49:                                               ; preds = %39
  %50 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %9, align 8
  %51 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %50, i32 0, i32 2
  %52 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %53 = bitcast %struct.snd_pcm_hw_params* %51 to i8*
  %54 = bitcast %struct.snd_pcm_hw_params* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  %55 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %9, align 8
  %56 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %9, align 8
  %58 = call i32 @aio_port_reset(%struct.uniphier_aio_sub* %57)
  %59 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %9, align 8
  %60 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %9, align 8
  %61 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @aio_port_set_volume(%struct.uniphier_aio_sub* %59, i32 %62)
  %64 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %9, align 8
  %65 = call i32 @aio_src_reset(%struct.uniphier_aio_sub* %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %49, %47, %32
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.uniphier_aio* @uniphier_priv(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @aio_port_reset(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @aio_port_set_volume(%struct.uniphier_aio_sub*, i32) #1

declare dso_local i32 @aio_src_reset(%struct.uniphier_aio_sub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
