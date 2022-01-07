; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_callback.c_set_tremfreq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_callback.c_set_tremfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8000 = type { i32 }
%struct.snd_emux_voice = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu8000*, %struct.snd_emux_voice*)* @set_tremfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tremfreq(%struct.snd_emu8000* %0, %struct.snd_emux_voice* %1) #0 {
  %3 = alloca %struct.snd_emu8000*, align 8
  %4 = alloca %struct.snd_emux_voice*, align 8
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %3, align 8
  store %struct.snd_emux_voice* %1, %struct.snd_emux_voice** %4, align 8
  %5 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %6 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %7 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %10 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @EMU8000_TREMFRQ_WRITE(%struct.snd_emu8000* %5, i32 %8, i32 %13)
  ret void
}

declare dso_local i32 @EMU8000_TREMFRQ_WRITE(%struct.snd_emu8000*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
