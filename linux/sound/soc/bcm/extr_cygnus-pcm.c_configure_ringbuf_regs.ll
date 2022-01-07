; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-pcm.c_configure_ringbuf_regs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-pcm.c_configure_ringbuf_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.cygnus_aio_port = type { i32, %struct.ringbuf_regs, %struct.ringbuf_regs }
%struct.ringbuf_regs = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @configure_ringbuf_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_ringbuf_regs(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.cygnus_aio_port*, align 8
  %4 = alloca %struct.ringbuf_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ringbuf_regs, align 4
  %7 = alloca %struct.ringbuf_regs, align 4
  %8 = alloca %struct.ringbuf_regs, align 4
  %9 = alloca %struct.ringbuf_regs, align 4
  %10 = alloca %struct.ringbuf_regs, align 4
  %11 = alloca %struct.ringbuf_regs, align 4
  %12 = alloca %struct.ringbuf_regs, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call %struct.cygnus_aio_port* @cygnus_dai_get_dma_data(%struct.snd_pcm_substream* %13)
  store %struct.cygnus_aio_port* %14, %struct.cygnus_aio_port** %3, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %1
  %21 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %22 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %21, i32 0, i32 2
  store %struct.ringbuf_regs* %22, %struct.ringbuf_regs** %4, align 8
  %23 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %24 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %50 [
    i32 0, label %26
    i32 1, label %32
    i32 2, label %38
    i32 3, label %44
  ]

26:                                               ; preds = %20
  %27 = load %struct.ringbuf_regs*, %struct.ringbuf_regs** %4, align 8
  %28 = call i32 @RINGBUF_REG_PLAYBACK(i32 0)
  %29 = getelementptr inbounds %struct.ringbuf_regs, %struct.ringbuf_regs* %6, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = bitcast %struct.ringbuf_regs* %27 to i8*
  %31 = bitcast %struct.ringbuf_regs* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  br label %53

32:                                               ; preds = %20
  %33 = load %struct.ringbuf_regs*, %struct.ringbuf_regs** %4, align 8
  %34 = call i32 @RINGBUF_REG_PLAYBACK(i32 2)
  %35 = getelementptr inbounds %struct.ringbuf_regs, %struct.ringbuf_regs* %7, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = bitcast %struct.ringbuf_regs* %33 to i8*
  %37 = bitcast %struct.ringbuf_regs* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  br label %53

38:                                               ; preds = %20
  %39 = load %struct.ringbuf_regs*, %struct.ringbuf_regs** %4, align 8
  %40 = call i32 @RINGBUF_REG_PLAYBACK(i32 4)
  %41 = getelementptr inbounds %struct.ringbuf_regs, %struct.ringbuf_regs* %8, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = bitcast %struct.ringbuf_regs* %39 to i8*
  %43 = bitcast %struct.ringbuf_regs* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  br label %53

44:                                               ; preds = %20
  %45 = load %struct.ringbuf_regs*, %struct.ringbuf_regs** %4, align 8
  %46 = call i32 @RINGBUF_REG_PLAYBACK(i32 6)
  %47 = getelementptr inbounds %struct.ringbuf_regs, %struct.ringbuf_regs* %9, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = bitcast %struct.ringbuf_regs* %45 to i8*
  %49 = bitcast %struct.ringbuf_regs* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  br label %53

50:                                               ; preds = %20
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %44, %38, %32, %26
  br label %82

54:                                               ; preds = %1
  %55 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %56 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %55, i32 0, i32 1
  store %struct.ringbuf_regs* %56, %struct.ringbuf_regs** %4, align 8
  %57 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %58 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %78 [
    i32 0, label %60
    i32 1, label %66
    i32 2, label %72
  ]

60:                                               ; preds = %54
  %61 = load %struct.ringbuf_regs*, %struct.ringbuf_regs** %4, align 8
  %62 = call i32 @RINGBUF_REG_CAPTURE(i32 0)
  %63 = getelementptr inbounds %struct.ringbuf_regs, %struct.ringbuf_regs* %10, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = bitcast %struct.ringbuf_regs* %61 to i8*
  %65 = bitcast %struct.ringbuf_regs* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 4, i1 false)
  br label %81

66:                                               ; preds = %54
  %67 = load %struct.ringbuf_regs*, %struct.ringbuf_regs** %4, align 8
  %68 = call i32 @RINGBUF_REG_CAPTURE(i32 2)
  %69 = getelementptr inbounds %struct.ringbuf_regs, %struct.ringbuf_regs* %11, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = bitcast %struct.ringbuf_regs* %67 to i8*
  %71 = bitcast %struct.ringbuf_regs* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  br label %81

72:                                               ; preds = %54
  %73 = load %struct.ringbuf_regs*, %struct.ringbuf_regs** %4, align 8
  %74 = call i32 @RINGBUF_REG_CAPTURE(i32 4)
  %75 = getelementptr inbounds %struct.ringbuf_regs, %struct.ringbuf_regs* %12, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = bitcast %struct.ringbuf_regs* %73 to i8*
  %77 = bitcast %struct.ringbuf_regs* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 4, i1 false)
  br label %81

78:                                               ; preds = %54
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %72, %66, %60
  br label %82

82:                                               ; preds = %81, %53
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.cygnus_aio_port* @cygnus_dai_get_dma_data(%struct.snd_pcm_substream*) #1

declare dso_local i32 @RINGBUF_REG_PLAYBACK(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @RINGBUF_REG_CAPTURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
