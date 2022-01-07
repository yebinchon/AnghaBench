; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_get_zone.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_get_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32 }
%struct.snd_emux_port = type { i32* }
%struct.snd_midi_channel = type { i32 }
%struct.snd_sf_zone = type { i32 }

@EMUX_MD_DEF_DRUM = common dso_local global i64 0, align 8
@EMUX_MD_DEF_BANK = common dso_local global i64 0, align 8
@SNDRV_EMUX_MAX_MULTI_VOICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emux*, %struct.snd_emux_port*, i32*, i32, %struct.snd_midi_channel*, %struct.snd_sf_zone**)* @get_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_zone(%struct.snd_emux* %0, %struct.snd_emux_port* %1, i32* %2, i32 %3, %struct.snd_midi_channel* %4, %struct.snd_sf_zone** %5) #0 {
  %7 = alloca %struct.snd_emux*, align 8
  %8 = alloca %struct.snd_emux_port*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_midi_channel*, align 8
  %12 = alloca %struct.snd_sf_zone**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_emux* %0, %struct.snd_emux** %7, align 8
  store %struct.snd_emux_port* %1, %struct.snd_emux_port** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.snd_midi_channel* %4, %struct.snd_midi_channel** %11, align 8
  store %struct.snd_sf_zone** %5, %struct.snd_sf_zone*** %12, align 8
  %17 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %18 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %11, align 8
  %19 = call i32 @get_bank(%struct.snd_emux_port* %17, %struct.snd_midi_channel* %18)
  store i32 %19, i32* %14, align 4
  %20 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %11, align 8
  %21 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i64 @SF_IS_DRUM_BANK(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %6
  %27 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %28 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @EMUX_MD_DEF_DRUM, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %16, align 4
  br label %42

34:                                               ; preds = %6
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %15, align 4
  %36 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %37 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @EMUX_MD_DEF_BANK, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %34, %26
  %43 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %44 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load %struct.snd_sf_zone**, %struct.snd_sf_zone*** %12, align 8
  %53 = load i32, i32* @SNDRV_EMUX_MAX_MULTI_VOICES, align 4
  %54 = call i32 @snd_soundfont_search_zone(i32 %45, i32* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, %struct.snd_sf_zone** %52, i32 %53)
  ret i32 %54
}

declare dso_local i32 @get_bank(%struct.snd_emux_port*, %struct.snd_midi_channel*) #1

declare dso_local i64 @SF_IS_DRUM_BANK(i32) #1

declare dso_local i32 @snd_soundfont_search_zone(i32, i32*, i32, i32, i32, i32, i32, %struct.snd_sf_zone**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
