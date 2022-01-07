; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_callback.c_set_filterQ.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_callback.c_set_filterQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32 }
%struct.snd_emux_voice = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CCCA = common dso_local global i32 0, align 4
@CCCA_RESONANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, %struct.snd_emux_voice*)* @set_filterQ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_filterQ(%struct.snd_emu10k1* %0, %struct.snd_emux_voice* %1) #0 {
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca %struct.snd_emux_voice*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  store %struct.snd_emux_voice* %1, %struct.snd_emux_voice** %4, align 8
  %6 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %7 = load i32, i32* @CCCA, align 4
  %8 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %9 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @snd_emu10k1_ptr_read(%struct.snd_emu10k1* %6, i32 %7, i32 %10)
  %12 = load i32, i32* @CCCA_RESONANCE, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %16 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 28
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %24 = load i32, i32* @CCCA, align 4
  %25 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %26 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %23, i32 %24, i32 %27, i32 %28)
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
