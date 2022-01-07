; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_calc_pitch.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_calc_pitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_voice = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.snd_midi_channel* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i64 }
%struct.snd_midi_channel = type { i32, i32, i32, i32, %struct.snd_emux_effect_table* }
%struct.snd_emux_effect_table = type { i64*, i64* }

@EMUX_FX_INIT_PITCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emux_voice*)* @calc_pitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_pitch(%struct.snd_emux_voice* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_emux_voice*, align 8
  %4 = alloca %struct.snd_midi_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_emux_voice* %0, %struct.snd_emux_voice** %3, align 8
  %6 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %7 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %6, i32 0, i32 4
  %8 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %7, align 8
  store %struct.snd_midi_channel* %8, %struct.snd_midi_channel** %4, align 8
  %9 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %10 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %16 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %20 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %18, %23
  %25 = mul nsw i64 %24, 4096
  %26 = sdiv i64 %25, 12
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %5, align 4
  br label %39

28:                                               ; preds = %1
  %29 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %30 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %33 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %31, %35
  %37 = mul nsw i32 %36, 4096
  %38 = sdiv i32 %37, 12
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %28, %14
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %42 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %40, %44
  %46 = sdiv i32 %45, 100
  store i32 %46, i32* %5, align 4
  %47 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %48 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %50, 4096
  %52 = sdiv i32 %51, 1200
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %4, align 8
  %56 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %39
  %60 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %4, align 8
  %61 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %4, align 8
  %64 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  %67 = sdiv i32 %66, 3072
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %59, %39
  %71 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %4, align 8
  %72 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %73, 4096
  %75 = sdiv i32 %74, 1536
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %4, align 8
  %79 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 24
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %85 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 57344, %87
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %5, align 4
  %93 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %94 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @LIMITVALUE(i32 %102, i32 0, i32 65535)
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %106 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %70
  store i32 0, i32* %2, align 4
  br label %114

110:                                              ; preds = %70
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %113 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  store i32 1, i32* %2, align 4
  br label %114

114:                                              ; preds = %110, %109
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @LIMITVALUE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
