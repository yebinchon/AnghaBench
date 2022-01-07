; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_playback_adat_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_playback_adat_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.rme96 = type { i32, i32, %struct.snd_pcm_substream*, i64 }

@EBUSY = common dso_local global i32 0, align 4
@RME96_WCR_ADAT = common dso_local global i32 0, align 4
@RME96_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@snd_rme96_playback_adat_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RME96_WCR_MASTER = common dso_local global i32 0, align 4
@RME96_INPUT_ANALOG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme96_playback_adat_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_playback_adat_open(%struct.snd_pcm_substream* %0) #0 {
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
  %16 = getelementptr inbounds %struct.rme96, %struct.rme96* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.rme96*, %struct.rme96** %6, align 8
  %19 = getelementptr inbounds %struct.rme96, %struct.rme96* %18, i32 0, i32 2
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  %21 = icmp ne %struct.snd_pcm_substream* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.rme96*, %struct.rme96** %6, align 8
  %24 = getelementptr inbounds %struct.rme96, %struct.rme96* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock_irq(i32* %24)
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %85

28:                                               ; preds = %1
  %29 = load i32, i32* @RME96_WCR_ADAT, align 4
  %30 = load %struct.rme96*, %struct.rme96** %6, align 8
  %31 = getelementptr inbounds %struct.rme96, %struct.rme96* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.rme96*, %struct.rme96** %6, align 8
  %35 = getelementptr inbounds %struct.rme96, %struct.rme96* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rme96*, %struct.rme96** %6, align 8
  %38 = getelementptr inbounds %struct.rme96, %struct.rme96* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %44 = load %struct.rme96*, %struct.rme96** %6, align 8
  %45 = getelementptr inbounds %struct.rme96, %struct.rme96* %44, i32 0, i32 2
  store %struct.snd_pcm_substream* %43, %struct.snd_pcm_substream** %45, align 8
  %46 = load %struct.rme96*, %struct.rme96** %6, align 8
  %47 = getelementptr inbounds %struct.rme96, %struct.rme96* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock_irq(i32* %47)
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 0
  %51 = bitcast %struct.TYPE_2__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 bitcast (%struct.TYPE_2__* @snd_rme96_playback_adat_info to i8*), i64 12, i1 false)
  %52 = load %struct.rme96*, %struct.rme96** %6, align 8
  %53 = getelementptr inbounds %struct.rme96, %struct.rme96* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @RME96_WCR_MASTER, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %81, label %58

58:                                               ; preds = %28
  %59 = load %struct.rme96*, %struct.rme96** %6, align 8
  %60 = call i64 @snd_rme96_getinputtype(%struct.rme96* %59)
  %61 = load i64, i64* @RME96_INPUT_ANALOG, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load %struct.rme96*, %struct.rme96** %6, align 8
  %65 = call i32 @snd_rme96_capture_getrate(%struct.rme96* %64, i32* %5)
  store i32 %65, i32* %4, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @snd_pcm_rate_to_rate_bit(i32 %68)
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %67, %63, %58, %28
  %82 = load %struct.rme96*, %struct.rme96** %6, align 8
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %84 = call i32 @rme96_set_buffer_size_constraint(%struct.rme96* %82, %struct.snd_pcm_runtime* %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %22
  %86 = load i32, i32* %2, align 4
  ret i32 %86
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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
