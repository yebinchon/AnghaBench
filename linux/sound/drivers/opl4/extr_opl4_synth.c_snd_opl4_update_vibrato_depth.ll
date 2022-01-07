; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_update_vibrato_depth.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_update_vibrato_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl4 = type { i32 }
%struct.opl4_voice = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32*, i64 }

@MIDI_CTL_VIBRATO_DEPTH = common dso_local global i64 0, align 8
@OPL4_VIBRATO_DEPTH_MASK = common dso_local global i32 0, align 4
@OPL4_REG_LFO_VIBRATO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_opl4*, %struct.opl4_voice*)* @snd_opl4_update_vibrato_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_opl4_update_vibrato_depth(%struct.snd_opl4* %0, %struct.opl4_voice* %1) #0 {
  %3 = alloca %struct.snd_opl4*, align 8
  %4 = alloca %struct.opl4_voice*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_opl4* %0, %struct.snd_opl4** %3, align 8
  store %struct.opl4_voice* %1, %struct.opl4_voice** %4, align 8
  %6 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %7 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %61

13:                                               ; preds = %2
  %14 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %15 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 7, %18
  %20 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %21 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @MIDI_CTL_VIBRATO_DEPTH, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 127
  %29 = mul nsw i32 %19, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 7
  %32 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %33 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %31, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @OPL4_VIBRATO_DEPTH_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %41 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @OPL4_VIBRATO_DEPTH_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %48 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %52 = load i64, i64* @OPL4_REG_LFO_VIBRATO, align 8
  %53 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %54 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %58 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @snd_opl4_write(%struct.snd_opl4* %51, i64 %56, i32 %59)
  br label %61

61:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @snd_opl4_write(%struct.snd_opl4*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
