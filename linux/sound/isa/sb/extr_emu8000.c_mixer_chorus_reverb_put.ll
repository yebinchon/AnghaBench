; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_mixer_chorus_reverb_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_mixer_chorus_reverb_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16* }
%struct.snd_emu8000 = type { i16, i16, i32 }

@SNDRV_EMU8000_CHORUS_NUMBERS = common dso_local global i16 0, align 2
@SNDRV_EMU8000_REVERB_NUMBERS = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @mixer_chorus_reverb_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_chorus_reverb_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_emu8000*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_emu8000* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_emu8000* %10, %struct.snd_emu8000** %5, align 8
  %11 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %12 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %11, i32 0, i32 2
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i16*, i16** %23, align 8
  %25 = getelementptr inbounds i16, i16* %24, i64 0
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* @SNDRV_EMU8000_CHORUS_NUMBERS, align 2
  %29 = zext i16 %28 to i32
  %30 = srem i32 %27, %29
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %8, align 2
  %32 = load i16, i16* %8, align 2
  %33 = zext i16 %32 to i32
  %34 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %35 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %34, i32 0, i32 0
  %36 = load i16, i16* %35, align 4
  %37 = zext i16 %36 to i32
  %38 = icmp ne i32 %33, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load i16, i16* %8, align 2
  %41 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %42 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %41, i32 0, i32 0
  store i16 %40, i16* %42, align 4
  br label %67

43:                                               ; preds = %2
  %44 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %45 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i16*, i16** %47, align 8
  %49 = getelementptr inbounds i16, i16* %48, i64 0
  %50 = load i16, i16* %49, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* @SNDRV_EMU8000_REVERB_NUMBERS, align 2
  %53 = zext i16 %52 to i32
  %54 = srem i32 %51, %53
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %8, align 2
  %56 = load i16, i16* %8, align 2
  %57 = zext i16 %56 to i32
  %58 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %59 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %58, i32 0, i32 1
  %60 = load i16, i16* %59, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp ne i32 %57, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = load i16, i16* %8, align 2
  %65 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %66 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %65, i32 0, i32 1
  store i16 %64, i16* %66, align 2
  br label %67

67:                                               ; preds = %43, %19
  %68 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %69 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %68, i32 0, i32 2
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %67
  %75 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %76 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %81 = call i32 @snd_emu8000_update_chorus_mode(%struct.snd_emu8000* %80)
  br label %85

82:                                               ; preds = %74
  %83 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %84 = call i32 @snd_emu8000_update_reverb_mode(%struct.snd_emu8000* %83)
  br label %85

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %85, %67
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local %struct.snd_emu8000* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_emu8000_update_chorus_mode(%struct.snd_emu8000*) #1

declare dso_local i32 @snd_emu8000_update_reverb_mode(%struct.snd_emu8000*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
