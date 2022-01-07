; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_callback.c_release_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_callback.c_release_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_voice = type { i32, %struct.TYPE_4__, %struct.snd_emu8000* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.snd_emu8000 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux_voice*)* @release_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_voice(%struct.snd_emux_voice* %0) #0 {
  %2 = alloca %struct.snd_emux_voice*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu8000*, align 8
  store %struct.snd_emux_voice* %0, %struct.snd_emux_voice** %2, align 8
  %5 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %6 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %5, i32 0, i32 2
  %7 = load %struct.snd_emu8000*, %struct.snd_emu8000** %6, align 8
  store %struct.snd_emu8000* %7, %struct.snd_emu8000** %4, align 8
  %8 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %9 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i8
  %14 = zext i8 %13 to i32
  %15 = or i32 32768, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %17 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %18 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @EMU8000_DCYSUS_WRITE(%struct.snd_emu8000* %16, i32 %19, i32 %20)
  %22 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %23 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i8
  %28 = zext i8 %27 to i32
  %29 = or i32 32768, %28
  store i32 %29, i32* %3, align 4
  %30 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %31 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %32 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000* %30, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @EMU8000_DCYSUS_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
