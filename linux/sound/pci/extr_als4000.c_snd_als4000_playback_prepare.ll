; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_als4000.c_snd_als4000_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_als4000.c_snd_als4000_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.snd_sb = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ALS4000_FORMAT_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_als4000_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_als4000_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_sb*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__, align 4
  %8 = alloca { i64, i32 }, align 8
  %9 = alloca %struct.TYPE_2__, align 4
  %10 = alloca { i64, i32 }, align 8
  %11 = alloca %struct.TYPE_2__, align 4
  %12 = alloca { i64, i32 }, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %13)
  store %struct.snd_sb* %14, %struct.snd_sb** %3, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  store %struct.snd_pcm_runtime* %17, %struct.snd_pcm_runtime** %4, align 8
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %19 = call i32 @snd_als4000_get_format(%struct.snd_pcm_runtime* %18)
  %20 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %21 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %23 = call i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %22)
  store i64 %23, i64* %5, align 8
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %25 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %27 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ALS4000_FORMAT_16BIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i32, i32* %6, align 4
  %34 = lshr i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %1
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, -1
  store i32 %37, i32* %6, align 4
  %38 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %39 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %38, i32 0, i32 1
  %40 = call i32 @spin_lock_irq(i32* %39)
  %41 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snd_als4000_set_rate(%struct.snd_sb* %41, i32 %44)
  %46 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @snd_als4000_set_playback_dma(%struct.snd_sb* %46, i32 %49, i64 %50)
  %52 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %53 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %54 = call { i64, i32 } @playback_cmd(%struct.snd_sb* %53)
  store { i64, i32 } %54, { i64, i32 }* %8, align 8
  %55 = bitcast { i64, i32 }* %8 to i8*
  %56 = bitcast %struct.TYPE_2__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 8 %55, i64 12, i1 false)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @snd_sbdsp_command(%struct.snd_sb* %52, i32 %58)
  %60 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %61 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %62 = call { i64, i32 } @playback_cmd(%struct.snd_sb* %61)
  store { i64, i32 } %62, { i64, i32 }* %10, align 8
  %63 = bitcast { i64, i32 }* %10 to i8*
  %64 = bitcast %struct.TYPE_2__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 8 %63, i64 12, i1 false)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @snd_sbdsp_command(%struct.snd_sb* %60, i32 %66)
  %68 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, 255
  %71 = call i32 @snd_sbdsp_command(%struct.snd_sb* %68, i32 %70)
  %72 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = lshr i32 %73, 8
  %75 = call i32 @snd_sbdsp_command(%struct.snd_sb* %72, i32 %74)
  %76 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %77 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %78 = call { i64, i32 } @playback_cmd(%struct.snd_sb* %77)
  store { i64, i32 } %78, { i64, i32 }* %12, align 8
  %79 = bitcast { i64, i32 }* %12 to i8*
  %80 = bitcast %struct.TYPE_2__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 8 %79, i64 12, i1 false)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @snd_sbdsp_command(%struct.snd_sb* %76, i32 %82)
  %84 = load %struct.snd_sb*, %struct.snd_sb** %3, align 8
  %85 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %84, i32 0, i32 1
  %86 = call i32 @spin_unlock_irq(i32* %85)
  ret i32 0
}

declare dso_local %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_als4000_get_format(%struct.snd_pcm_runtime*) #1

declare dso_local i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_als4000_set_rate(%struct.snd_sb*, i32) #1

declare dso_local i32 @snd_als4000_set_playback_dma(%struct.snd_sb*, i32, i64) #1

declare dso_local i32 @snd_sbdsp_command(%struct.snd_sb*, i32) #1

declare dso_local { i64, i32 } @playback_cmd(%struct.snd_sb*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
