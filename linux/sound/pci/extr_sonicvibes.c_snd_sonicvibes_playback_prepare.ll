; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32 }
%struct.sonicvibes = type { i32, i32 }

@SV_IREG_DMA_A_UPPER = common dso_local global i32 0, align 4
@SV_IREG_DMA_A_LOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_sonicvibes_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sonicvibes_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.sonicvibes*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.sonicvibes* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.sonicvibes* %9, %struct.sonicvibes** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %4, align 8
  store i8 0, i8* %5, align 1
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %19 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %20, -1
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, 1
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %5, align 1
  br label %31

31:                                               ; preds = %26, %1
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snd_pcm_format_width(i32 %34)
  %36 = icmp eq i32 %35, 16
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i8, i8* %5, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, 2
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %5, align 1
  br label %42

42:                                               ; preds = %37, %31
  %43 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %44 = load i8, i8* %5, align 1
  %45 = call i32 @snd_sonicvibes_setfmt(%struct.sonicvibes* %43, i32 -4, i8 zeroext %44)
  %46 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @snd_sonicvibes_set_dac_rate(%struct.sonicvibes* %46, i32 %49)
  %51 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %52 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %51, i32 0, i32 1
  %53 = call i32 @spin_lock_irq(i32* %52)
  %54 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @snd_sonicvibes_setdmaa(%struct.sonicvibes* %54, i32 %57, i32 %58)
  %60 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %61 = load i32, i32* @SV_IREG_DMA_A_UPPER, align 4
  %62 = load i32, i32* %7, align 4
  %63 = lshr i32 %62, 8
  %64 = call i32 @snd_sonicvibes_out1(%struct.sonicvibes* %60, i32 %61, i32 %63)
  %65 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %66 = load i32, i32* @SV_IREG_DMA_A_LOWER, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @snd_sonicvibes_out1(%struct.sonicvibes* %65, i32 %66, i32 %67)
  %69 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %70 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %69, i32 0, i32 1
  %71 = call i32 @spin_unlock_irq(i32* %70)
  ret i32 0
}

declare dso_local %struct.sonicvibes* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @snd_sonicvibes_setfmt(%struct.sonicvibes*, i32, i8 zeroext) #1

declare dso_local i32 @snd_sonicvibes_set_dac_rate(%struct.sonicvibes*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_sonicvibes_setdmaa(%struct.sonicvibes*, i32, i32) #1

declare dso_local i32 @snd_sonicvibes_out1(%struct.sonicvibes*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
