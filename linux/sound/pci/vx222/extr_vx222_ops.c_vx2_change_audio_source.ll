; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/vx222/extr_vx222_ops.c_vx2_change_audio_source.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/vx222/extr_vx222_ops.c_vx2_change_audio_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_vx222 = type { i32 }

@VX_CFG_DATAIN_SEL_MASK = common dso_local global i32 0, align 4
@CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, i32)* @vx2_change_audio_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx2_change_audio_source(%struct.vx_core* %0, i32 %1) #0 {
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_vx222*, align 8
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %7 = call %struct.snd_vx222* @to_vx222(%struct.vx_core* %6)
  store %struct.snd_vx222* %7, %struct.snd_vx222** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %15 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @VX_CFG_DATAIN_SEL_MASK, align 4
  %11 = load %struct.snd_vx222*, %struct.snd_vx222** %5, align 8
  %12 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @VX_CFG_DATAIN_SEL_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.snd_vx222*, %struct.snd_vx222** %5, align 8
  %19 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %15, %9
  %23 = load %struct.snd_vx222*, %struct.snd_vx222** %5, align 8
  %24 = load i32, i32* @CFG, align 4
  %25 = load %struct.snd_vx222*, %struct.snd_vx222** %5, align 8
  %26 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @vx_outl(%struct.snd_vx222* %23, i32 %24, i32 %27)
  ret void
}

declare dso_local %struct.snd_vx222* @to_vx222(%struct.vx_core*) #1

declare dso_local i32 @vx_outl(%struct.snd_vx222*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
