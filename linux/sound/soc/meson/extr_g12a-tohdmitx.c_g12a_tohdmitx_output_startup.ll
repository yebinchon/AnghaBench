; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_g12a-tohdmitx.c_g12a_tohdmitx_output_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_g12a-tohdmitx.c_g12a_tohdmitx_output_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.snd_soc_dai = type { i32, i32 }
%struct.g12a_tohdmitx_input = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"codec2codec link expected\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @g12a_tohdmitx_output_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g12a_tohdmitx_output_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.g12a_tohdmitx_input*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  store %struct.snd_soc_pcm_runtime* %10, %struct.snd_soc_pcm_runtime** %6, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.g12a_tohdmitx_input* @g12a_tohdmitx_get_input_data(i32 %13)
  store %struct.g12a_tohdmitx_input* %14, %struct.g12a_tohdmitx_input** %7, align 8
  %15 = load %struct.g12a_tohdmitx_input*, %struct.g12a_tohdmitx_input** %7, align 8
  %16 = icmp ne %struct.g12a_tohdmitx_input* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %56

20:                                               ; preds = %2
  %21 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %22 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %33 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_warn(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %56

38:                                               ; preds = %20
  %39 = load %struct.g12a_tohdmitx_input*, %struct.g12a_tohdmitx_input** %7, align 8
  %40 = getelementptr inbounds %struct.g12a_tohdmitx_input, %struct.g12a_tohdmitx_input* %39, i32 0, i32 1
  %41 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %42 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32* %40, i32** %44, align 8
  %45 = load %struct.g12a_tohdmitx_input*, %struct.g12a_tohdmitx_input** %7, align 8
  %46 = getelementptr inbounds %struct.g12a_tohdmitx_input, %struct.g12a_tohdmitx_input* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %56

50:                                               ; preds = %38
  %51 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %52 = load %struct.g12a_tohdmitx_input*, %struct.g12a_tohdmitx_input** %7, align 8
  %53 = getelementptr inbounds %struct.g12a_tohdmitx_input, %struct.g12a_tohdmitx_input* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @snd_soc_runtime_set_dai_fmt(%struct.snd_soc_pcm_runtime* %51, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %49, %31, %17
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.g12a_tohdmitx_input* @g12a_tohdmitx_get_input_data(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_soc_runtime_set_dai_fmt(%struct.snd_soc_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
