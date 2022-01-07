; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_p16v.c_snd_p16v_pcm_trigger_capture.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_p16v.c_snd_p16v_pcm_trigger_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_emu10k1_pcm* }
%struct.snd_emu10k1_pcm = type { i32 }
%struct.snd_emu10k1 = type { i32 }

@INTE2_CAPTURE_CH_0_LOOP = common dso_local global i32 0, align 4
@INTE2_CAPTURE_CH_0_HALF_LOOP = common dso_local global i32 0, align 4
@BASIC_INTERRUPT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_p16v_pcm_trigger_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_p16v_pcm_trigger_capture(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_emu10k1_pcm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_emu10k1* %12, %struct.snd_emu10k1** %5, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %6, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 0
  %18 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %17, align 8
  store %struct.snd_emu10k1_pcm* %18, %struct.snd_emu10k1_pcm** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* @INTE2_CAPTURE_CH_0_LOOP, align 4
  %20 = load i32, i32* @INTE2_CAPTURE_CH_0_HALF_LOOP, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %54 [
    i32 129, label %23
    i32 128, label %38
  ]

23:                                               ; preds = %2
  %24 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @snd_p16v_intr_enable(%struct.snd_emu10k1* %24, i32 %25)
  %27 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %28 = load i32, i32* @BASIC_INTERRUPT, align 4
  %29 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %30 = load i32, i32* @BASIC_INTERRUPT, align 4
  %31 = call i32 @snd_emu10k1_ptr20_read(%struct.snd_emu10k1* %29, i32 %30, i32 0)
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 256, %32
  %34 = or i32 %31, %33
  %35 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %27, i32 %28, i32 0, i32 %34)
  %36 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %57

38:                                               ; preds = %2
  %39 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %40 = load i32, i32* @BASIC_INTERRUPT, align 4
  %41 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %42 = load i32, i32* @BASIC_INTERRUPT, align 4
  %43 = call i32 @snd_emu10k1_ptr20_read(%struct.snd_emu10k1* %41, i32 %42, i32 0)
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 256, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %43, %46
  %48 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %39, i32 %40, i32 0, i32 %47)
  %49 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @snd_p16v_intr_disable(%struct.snd_emu10k1* %49, i32 %50)
  %52 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %53 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  br label %57

54:                                               ; preds = %2
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %38, %23
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_p16v_intr_enable(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_ptr20_read(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @snd_p16v_intr_disable(%struct.snd_emu10k1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
