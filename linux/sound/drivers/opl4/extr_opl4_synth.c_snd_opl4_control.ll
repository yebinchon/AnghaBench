; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_channel = type { i32* }
%struct.snd_opl4 = type { i32 }

@snd_opl4_update_vibrato_depth = common dso_local global i32 0, align 4
@snd_opl4_update_volume = common dso_local global i32 0, align 4
@snd_opl4_update_pan = common dso_local global i32 0, align 4
@snd_opl4_update_pitch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_opl4_control(i8* %0, i32 %1, %struct.snd_midi_channel* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_midi_channel*, align 8
  %7 = alloca %struct.snd_opl4*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_midi_channel* %2, %struct.snd_midi_channel** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.snd_opl4*
  store %struct.snd_opl4* %9, %struct.snd_opl4** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %53 [
    i32 133, label %11
    i32 134, label %25
    i32 132, label %30
    i32 135, label %35
    i32 128, label %40
    i32 129, label %41
    i32 130, label %46
    i32 136, label %47
    i32 131, label %48
  ]

11:                                               ; preds = %3
  %12 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %13 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 133
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %18 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 129
  store i32 %16, i32* %20, align 4
  %21 = load %struct.snd_opl4*, %struct.snd_opl4** %7, align 8
  %22 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %23 = load i32, i32* @snd_opl4_update_vibrato_depth, align 4
  %24 = call i32 @snd_opl4_do_for_channel(%struct.snd_opl4* %21, %struct.snd_midi_channel* %22, i32 %23)
  br label %53

25:                                               ; preds = %3
  %26 = load %struct.snd_opl4*, %struct.snd_opl4** %7, align 8
  %27 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %28 = load i32, i32* @snd_opl4_update_volume, align 4
  %29 = call i32 @snd_opl4_do_for_channel(%struct.snd_opl4* %26, %struct.snd_midi_channel* %27, i32 %28)
  br label %53

30:                                               ; preds = %3
  %31 = load %struct.snd_opl4*, %struct.snd_opl4** %7, align 8
  %32 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %33 = load i32, i32* @snd_opl4_update_pan, align 4
  %34 = call i32 @snd_opl4_do_for_channel(%struct.snd_opl4* %31, %struct.snd_midi_channel* %32, i32 %33)
  br label %53

35:                                               ; preds = %3
  %36 = load %struct.snd_opl4*, %struct.snd_opl4** %7, align 8
  %37 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %38 = load i32, i32* @snd_opl4_update_volume, align 4
  %39 = call i32 @snd_opl4_do_for_channel(%struct.snd_opl4* %36, %struct.snd_midi_channel* %37, i32 %38)
  br label %53

40:                                               ; preds = %3
  br label %53

41:                                               ; preds = %3
  %42 = load %struct.snd_opl4*, %struct.snd_opl4** %7, align 8
  %43 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %44 = load i32, i32* @snd_opl4_update_vibrato_depth, align 4
  %45 = call i32 @snd_opl4_do_for_channel(%struct.snd_opl4* %42, %struct.snd_midi_channel* %43, i32 %44)
  br label %53

46:                                               ; preds = %3
  br label %53

47:                                               ; preds = %3
  br label %53

48:                                               ; preds = %3
  %49 = load %struct.snd_opl4*, %struct.snd_opl4** %7, align 8
  %50 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %51 = load i32, i32* @snd_opl4_update_pitch, align 4
  %52 = call i32 @snd_opl4_do_for_channel(%struct.snd_opl4* %49, %struct.snd_midi_channel* %50, i32 %51)
  br label %53

53:                                               ; preds = %3, %48, %47, %46, %41, %40, %35, %30, %25, %11
  ret void
}

declare dso_local i32 @snd_opl4_do_for_channel(%struct.snd_opl4*, %struct.snd_midi_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
