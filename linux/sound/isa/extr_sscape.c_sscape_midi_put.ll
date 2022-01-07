; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_sscape.c_sscape_midi_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_sscape.c_sscape_midi_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_wss = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.soundscape = type { i8, i32, i32 }

@CMD_SET_MIDI_VOL = common dso_local global i8 0, align 1
@CMD_XXX_MIDI_VOL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @sscape_midi_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sscape_midi_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_wss*, align 8
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.soundscape*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_wss* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_wss* %12, %struct.snd_wss** %5, align 8
  %13 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %14 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %13, i32 0, i32 0
  %15 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  store %struct.snd_card* %15, %struct.snd_card** %6, align 8
  %16 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %17 = call %struct.soundscape* @get_card_soundscape(%struct.snd_card* %16)
  store %struct.soundscape* %17, %struct.soundscape** %7, align 8
  %18 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %19 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %18, i32 0, i32 1
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 127
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %10, align 1
  %31 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %32 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @set_host_mode_unsafe(i32 %33)
  %35 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %36 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 4
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %10, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %77

43:                                               ; preds = %2
  %44 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %45 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i8, i8* @CMD_SET_MIDI_VOL, align 1
  %48 = call i64 @host_write_ctrl_unsafe(i32 %46, i8 zeroext %47, i32 100)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %43
  %51 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %52 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i8, i8* %10, align 1
  %55 = call i64 @host_write_ctrl_unsafe(i32 %53, i8 zeroext %54, i32 100)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %50
  %58 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %59 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i8, i8* @CMD_XXX_MIDI_VOL, align 1
  %62 = call i64 @host_write_ctrl_unsafe(i32 %60, i8 zeroext %61, i32 100)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %66 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i8, i8* %10, align 1
  %69 = call i64 @host_write_ctrl_unsafe(i32 %67, i8 zeroext %68, i32 100)
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %64, %57, %50, %43
  %72 = phi i1 [ false, %57 ], [ false, %50 ], [ false, %43 ], [ %70, %64 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %9, align 4
  %74 = load i8, i8* %10, align 1
  %75 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %76 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %75, i32 0, i32 0
  store i8 %74, i8* %76, align 4
  br label %77

77:                                               ; preds = %71, %42
  %78 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %79 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @set_midi_mode_unsafe(i32 %80)
  %82 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %83 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %82, i32 0, i32 1
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local %struct.snd_wss* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.soundscape* @get_card_soundscape(%struct.snd_card*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_host_mode_unsafe(i32) #1

declare dso_local i64 @host_write_ctrl_unsafe(i32, i8 zeroext, i32) #1

declare dso_local i32 @set_midi_mode_unsafe(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
