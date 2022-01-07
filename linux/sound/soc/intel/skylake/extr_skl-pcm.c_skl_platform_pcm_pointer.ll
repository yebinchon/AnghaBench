; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_platform_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-pcm.c_skl_platform_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i32 }
%struct.hdac_ext_stream = type { i32 }
%struct.hdac_bus = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@AZX_REG_VS_SDXDPIB_XBASE = common dso_local global i64 0, align 8
@AZX_REG_VS_SDXDPIB_XINTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @skl_platform_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_platform_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.hdac_ext_stream*, align 8
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.hdac_ext_stream* @get_hdac_ext_stream(%struct.snd_pcm_substream* %6)
  store %struct.hdac_ext_stream* %7, %struct.hdac_ext_stream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.hdac_bus* @get_bus_ctx(%struct.snd_pcm_substream* %8)
  store %struct.hdac_bus* %9, %struct.hdac_bus** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %17 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AZX_REG_VS_SDXDPIB_XBASE, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* @AZX_REG_VS_SDXDPIB_XINTERVAL, align 4
  %22 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %23 = call %struct.TYPE_3__* @hdac_stream(%struct.hdac_ext_stream* %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %21, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %20, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %5, align 4
  br label %49

30:                                               ; preds = %1
  %31 = call i32 @udelay(i32 20)
  %32 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %33 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AZX_REG_VS_SDXDPIB_XBASE, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* @AZX_REG_VS_SDXDPIB_XINTERVAL, align 4
  %38 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %39 = call %struct.TYPE_3__* @hdac_stream(%struct.hdac_ext_stream* %38)
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %37, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %36, %43
  %45 = call i32 @readl(i64 %44)
  %46 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %47 = call %struct.TYPE_3__* @hdac_stream(%struct.hdac_ext_stream* %46)
  %48 = call i32 @snd_hdac_stream_get_pos_posbuf(%struct.TYPE_3__* %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %30, %15
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %52 = call %struct.TYPE_3__* @hdac_stream(%struct.hdac_ext_stream* %51)
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp uge i32 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %49
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @bytes_to_frames(i32 %60, i32 %61)
  ret i32 %62
}

declare dso_local %struct.hdac_ext_stream* @get_hdac_ext_stream(%struct.snd_pcm_substream*) #1

declare dso_local %struct.hdac_bus* @get_bus_ctx(%struct.snd_pcm_substream*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local %struct.TYPE_3__* @hdac_stream(%struct.hdac_ext_stream*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_hdac_stream_get_pos_posbuf(%struct.TYPE_3__*) #1

declare dso_local i32 @bytes_to_frames(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
