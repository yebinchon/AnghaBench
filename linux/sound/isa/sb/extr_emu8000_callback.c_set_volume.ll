; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_callback.c_set_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_callback.c_set_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8000 = type { i32 }
%struct.snd_emux_voice = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu8000*, %struct.snd_emux_voice*)* @set_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_volume(%struct.snd_emu8000* %0, %struct.snd_emux_voice* %1) #0 {
  %3 = alloca %struct.snd_emu8000*, align 8
  %4 = alloca %struct.snd_emux_voice*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %3, align 8
  store %struct.snd_emux_voice* %1, %struct.snd_emux_voice** %4, align 8
  %6 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %7 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i8
  %10 = zext i8 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %14 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i8
  %17 = zext i8 %16 to i32
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %21 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %22 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @EMU8000_IFATN_WRITE(%struct.snd_emu8000* %20, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @EMU8000_IFATN_WRITE(%struct.snd_emu8000*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
