; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_playback_spdif_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_playback_spdif_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_6__ }
%struct.rme96 = type { i32, %struct.TYPE_5__*, i32, i32, i32, i32, %struct.snd_pcm_substream*, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@RME96_WCR_ADAT = common dso_local global i32 0, align 4
@RME96_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@snd_rme96_playback_spdif_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@RME96_WCR_MASTER = common dso_local global i32 0, align 4
@RME96_INPUT_ANALOG = common dso_local global i64 0, align 8
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme96_playback_spdif_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_playback_spdif_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rme96*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.rme96* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.rme96* %9, %struct.rme96** %6, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %7, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %13)
  %15 = load %struct.rme96*, %struct.rme96** %6, align 8
  %16 = getelementptr inbounds %struct.rme96, %struct.rme96* %15, i32 0, i32 5
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.rme96*, %struct.rme96** %6, align 8
  %19 = getelementptr inbounds %struct.rme96, %struct.rme96* %18, i32 0, i32 6
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  %21 = icmp ne %struct.snd_pcm_substream* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.rme96*, %struct.rme96** %6, align 8
  %24 = getelementptr inbounds %struct.rme96, %struct.rme96* %23, i32 0, i32 5
  %25 = call i32 @spin_unlock_irq(i32* %24)
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %113

28:                                               ; preds = %1
  %29 = load i32, i32* @RME96_WCR_ADAT, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.rme96*, %struct.rme96** %6, align 8
  %32 = getelementptr inbounds %struct.rme96, %struct.rme96* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.rme96*, %struct.rme96** %6, align 8
  %36 = getelementptr inbounds %struct.rme96, %struct.rme96* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.rme96*, %struct.rme96** %6, align 8
  %39 = getelementptr inbounds %struct.rme96, %struct.rme96* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %45 = load %struct.rme96*, %struct.rme96** %6, align 8
  %46 = getelementptr inbounds %struct.rme96, %struct.rme96* %45, i32 0, i32 6
  store %struct.snd_pcm_substream* %44, %struct.snd_pcm_substream** %46, align 8
  %47 = load %struct.rme96*, %struct.rme96** %6, align 8
  %48 = getelementptr inbounds %struct.rme96, %struct.rme96* %47, i32 0, i32 5
  %49 = call i32 @spin_unlock_irq(i32* %48)
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 0
  %52 = bitcast %struct.TYPE_6__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 bitcast (%struct.TYPE_6__* @snd_rme96_playback_spdif_info to i8*), i64 12, i1 false)
  %53 = load %struct.rme96*, %struct.rme96** %6, align 8
  %54 = getelementptr inbounds %struct.rme96, %struct.rme96* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @RME96_WCR_MASTER, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %82, label %59

59:                                               ; preds = %28
  %60 = load %struct.rme96*, %struct.rme96** %6, align 8
  %61 = call i64 @snd_rme96_getinputtype(%struct.rme96* %60)
  %62 = load i64, i64* @RME96_INPUT_ANALOG, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = load %struct.rme96*, %struct.rme96** %6, align 8
  %66 = call i32 @snd_rme96_capture_getrate(%struct.rme96* %65, i32* %5)
  store i32 %66, i32* %4, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @snd_pcm_rate_to_rate_bit(i32 %69)
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %68, %64, %59, %28
  %83 = load %struct.rme96*, %struct.rme96** %6, align 8
  %84 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %85 = call i32 @rme96_set_buffer_size_constraint(%struct.rme96* %83, %struct.snd_pcm_runtime* %84)
  %86 = load %struct.rme96*, %struct.rme96** %6, align 8
  %87 = getelementptr inbounds %struct.rme96, %struct.rme96* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.rme96*, %struct.rme96** %6, align 8
  %90 = getelementptr inbounds %struct.rme96, %struct.rme96* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.rme96*, %struct.rme96** %6, align 8
  %94 = getelementptr inbounds %struct.rme96, %struct.rme96* %93, i32 0, i32 1
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %92
  store i32 %101, i32* %99, align 4
  %102 = load %struct.rme96*, %struct.rme96** %6, align 8
  %103 = getelementptr inbounds %struct.rme96, %struct.rme96* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %106 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.rme96*, %struct.rme96** %6, align 8
  %109 = getelementptr inbounds %struct.rme96, %struct.rme96* %108, i32 0, i32 1
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = call i32 @snd_ctl_notify(i32 %104, i32 %107, i32* %111)
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %82, %22
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.rme96* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @snd_rme96_getinputtype(%struct.rme96*) #1

declare dso_local i32 @snd_rme96_capture_getrate(%struct.rme96*, i32*) #1

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #1

declare dso_local i32 @rme96_set_buffer_size_constraint(%struct.rme96*, %struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
