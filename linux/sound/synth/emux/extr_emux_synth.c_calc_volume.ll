; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_calc_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_synth.c_calc_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_voice = type { i32, i32, i32, %struct.TYPE_6__, %struct.snd_emux_port*, %struct.snd_midi_channel* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.snd_emux_port = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.snd_midi_channel = type { i32*, %struct.snd_emux_effect_table* }
%struct.snd_emux_effect_table = type { i64* }

@MIDI_CTL_MSB_EXPRESSION = common dso_local global i64 0, align 8
@SNDRV_EMUX_PORT_MODE_OSS_SYNTH = common dso_local global i64 0, align 8
@MIDI_CTL_MSB_MAIN_VOLUME = common dso_local global i64 0, align 8
@snd_sf_vol_table = common dso_local global i32* null, align 8
@voltab1 = common dso_local global i32* null, align 8
@voltab2 = common dso_local global i32* null, align 8
@expressiontab = common dso_local global i32* null, align 8
@EMUX_FX_ATTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emux_voice*)* @calc_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_volume(%struct.snd_emux_voice* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_emux_voice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_midi_channel*, align 8
  %9 = alloca %struct.snd_emux_port*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_emux_voice* %0, %struct.snd_emux_voice** %3, align 8
  %11 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %12 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %11, i32 0, i32 5
  %13 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %12, align 8
  store %struct.snd_midi_channel* %13, %struct.snd_midi_channel** %8, align 8
  %14 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %15 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %14, i32 0, i32 4
  %16 = load %struct.snd_emux_port*, %struct.snd_emux_port** %15, align 8
  store %struct.snd_emux_port* %16, %struct.snd_emux_port** %9, align 8
  %17 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %18 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @MIDI_CTL_MSB_EXPRESSION, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %24 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @LIMITMAX(i32 %25, i32 127)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @LIMITVALUE(i32 %27, i32 0, i32 127)
  %29 = load %struct.snd_emux_port*, %struct.snd_emux_port** %9, align 8
  %30 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SNDRV_EMUX_PORT_MODE_OSS_SYNTH, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %1
  %35 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %36 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @MIDI_CTL_MSB_MAIN_VOLUME, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  %41 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %42 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sdiv i32 %47, 16129
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %51 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %49, %53
  %55 = sdiv i32 %54, 127
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @LIMITVALUE(i32 %56, i32 0, i32 127)
  %58 = load i32*, i32** @snd_sf_vol_table, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %4, align 4
  br label %113

63:                                               ; preds = %1
  %64 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %65 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @MIDI_CTL_MSB_MAIN_VOLUME, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %71 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %69, %73
  %75 = sdiv i32 %74, 127
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @LIMITVALUE(i32 %76, i32 0, i32 127)
  %78 = load i32*, i32** @voltab1, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** @voltab2, align 8
  %84 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %85 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %82, %89
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = mul nsw i32 %91, 8
  %93 = sdiv i32 %92, 3
  store i32 %93, i32* %4, align 4
  %94 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %95 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = sub nsw i32 256, %102
  %104 = load i32*, i32** @expressiontab, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %103, %108
  %110 = sdiv i32 %109, 128
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %63, %34
  %114 = load %struct.snd_emux_port*, %struct.snd_emux_port** %9, align 8
  %115 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @LIMITVALUE(i32 %118, i32 0, i32 127)
  %120 = load i32*, i32** @snd_sf_vol_table, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %4, align 4
  %127 = load %struct.snd_emux_port*, %struct.snd_emux_port** %9, align 8
  %128 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %129
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @LIMITVALUE(i32 %134, i32 0, i32 255)
  %136 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %137 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %4, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %190

142:                                              ; preds = %113
  %143 = load i32, i32* %4, align 4
  %144 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %145 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.snd_emux_port*, %struct.snd_emux_port** %9, align 8
  %147 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %148 = call i32 @get_bank(%struct.snd_emux_port* %146, %struct.snd_midi_channel* %147)
  %149 = call i32 @SF_IS_DRUM_BANK(i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %181, label %151

151:                                              ; preds = %142
  %152 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %153 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @LO_BYTE(i32 %156)
  %158 = icmp slt i32 %157, 125
  br i1 %158, label %159, label %181

159:                                              ; preds = %151
  %160 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %161 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %162, 70
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  store i32 70, i32* %10, align 4
  br label %169

165:                                              ; preds = %159
  %166 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %167 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %165, %164
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %172 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %170, %175
  %177 = add nsw i32 %176, 160
  %178 = ashr i32 %177, 7
  %179 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %180 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  br label %189

181:                                              ; preds = %151, %142
  %182 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %183 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %188 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  br label %189

189:                                              ; preds = %181, %169
  store i32 1, i32* %2, align 4
  br label %190

190:                                              ; preds = %189, %141
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @LIMITMAX(i32, i32) #1

declare dso_local i32 @LIMITVALUE(i32, i32, i32) #1

declare dso_local i32 @SF_IS_DRUM_BANK(i32) #1

declare dso_local i32 @get_bank(%struct.snd_emux_port*, %struct.snd_midi_channel*) #1

declare dso_local i32 @LO_BYTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
