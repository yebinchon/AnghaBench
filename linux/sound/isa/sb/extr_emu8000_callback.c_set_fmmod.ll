; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_callback.c_set_fmmod.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_callback.c_set_fmmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8000 = type { i32 }
%struct.snd_emux_voice = type { i32, %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MOD_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu8000*, %struct.snd_emux_voice*)* @set_fmmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_fmmod(%struct.snd_emu8000* %0, %struct.snd_emux_voice* %1) #0 {
  %3 = alloca %struct.snd_emu8000*, align 8
  %4 = alloca %struct.snd_emux_voice*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %3, align 8
  store %struct.snd_emux_voice* %1, %struct.snd_emux_voice** %4, align 8
  %9 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %10 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = ashr i32 %13, 8
  %15 = trunc i32 %14 to i8
  %16 = sext i8 %15 to i16
  store i16 %16, i16* %6, align 2
  %17 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %18 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 255
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %7, align 1
  %24 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %25 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %30 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %28, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @MOD_SENSE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sdiv i32 %37, 1200
  %39 = load i16, i16* %6, align 2
  %40 = sext i16 %39 to i32
  %41 = add nsw i32 %40, %38
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %6, align 2
  %43 = load i16, i16* %6, align 2
  %44 = call i32 @LIMITVALUE(i16 signext %43, i32 -128, i32 127)
  %45 = load i16, i16* %6, align 2
  %46 = trunc i16 %45 to i8
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 8
  %49 = load i8, i8* %7, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %48, %50
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %5, align 2
  %53 = load %struct.snd_emu8000*, %struct.snd_emu8000** %3, align 8
  %54 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %4, align 8
  %55 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i16, i16* %5, align 2
  %58 = call i32 @EMU8000_FMMOD_WRITE(%struct.snd_emu8000* %53, i32 %56, i16 zeroext %57)
  ret void
}

declare dso_local i32 @LIMITVALUE(i16 signext, i32, i32) #1

declare dso_local i32 @EMU8000_FMMOD_WRITE(%struct.snd_emu8000*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
