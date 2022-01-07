; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_nrpn.c_snd_emux_xg_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_nrpn.c_snd_emux_xg_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_port = type { i32 }
%struct.snd_midi_channel = type { i32* }

@xg_effects = common dso_local global i32 0, align 4
@EMUX_FX_FLAG_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emux_xg_control(%struct.snd_emux_port* %0, %struct.snd_midi_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_emux_port*, align 8
  %5 = alloca %struct.snd_midi_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_emux_port* %0, %struct.snd_emux_port** %4, align 8
  store %struct.snd_midi_channel* %1, %struct.snd_midi_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @xg_effects, align 4
  %8 = load i32, i32* @xg_effects, align 4
  %9 = call i32 @ARRAY_SIZE(i32 %8)
  %10 = load %struct.snd_emux_port*, %struct.snd_emux_port** %4, align 8
  %11 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %14 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EMUX_FX_FLAG_ADD, align 4
  %21 = call i32 @send_converted_effect(i32 %7, i32 %9, %struct.snd_emux_port* %10, %struct.snd_midi_channel* %11, i32 %12, i32 %19, i32 %20)
  ret i32 %21
}

declare dso_local i32 @send_converted_effect(i32, i32, %struct.snd_emux_port*, %struct.snd_midi_channel*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
