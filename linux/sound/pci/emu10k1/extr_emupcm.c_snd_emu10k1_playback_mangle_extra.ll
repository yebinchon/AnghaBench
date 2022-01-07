; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_mangle_extra.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_mangle_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32 }
%struct.snd_emu10k1_pcm = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_runtime = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CCCA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, %struct.snd_emu10k1_pcm*, %struct.snd_pcm_substream*, %struct.snd_pcm_runtime*)* @snd_emu10k1_playback_mangle_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_playback_mangle_extra(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_pcm* %1, %struct.snd_pcm_substream* %2, %struct.snd_pcm_runtime* %3) #0 {
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_emu10k1_pcm*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %5, align 8
  store %struct.snd_emu10k1_pcm* %1, %struct.snd_emu10k1_pcm** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  store %struct.snd_pcm_runtime* %3, %struct.snd_pcm_runtime** %8, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub i32 %15, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = urem i32 %23, %22
  store i32 %24, i32* %10, align 4
  %25 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %26 = load i32, i32* @CCCA, align 4
  %27 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %28 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %25, i32 %26, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, -16777216
  store i32 %34, i32* %9, align 4
  %35 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %36 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = add i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %43 = load i32, i32* @CCCA, align 4
  %44 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %45 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %42, i32 %43, i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
