; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_oss.c_emuspec_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_oss.c_emuspec_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 (%struct.snd_emux.0*, i32, i16, i16)* }
%struct.snd_emux.0 = type opaque
%struct.snd_emux_port = type { i16, i32, i16*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.snd_midi_channel* }
%struct.snd_midi_channel = type { i16, i32 }

@MIDI_CTL_ALL_NOTES_OFF = common dso_local global i32 0, align 4
@MIDI_CTL_ALL_SOUNDS_OFF = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_VOLUME = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_FMMOD = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_FM2FRQ2 = common dso_local global i32 0, align 4
@EMUX_MD_END = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux*, %struct.snd_emux_port*, i32, i8*, i32, i32)* @emuspec_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emuspec_control(%struct.snd_emux* %0, %struct.snd_emux_port* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.snd_emux*, align 8
  %8 = alloca %struct.snd_emux_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i32, align 4
  %17 = alloca %struct.snd_midi_channel*, align 8
  store %struct.snd_emux* %0, %struct.snd_emux** %7, align 8
  store %struct.snd_emux_port* %1, %struct.snd_emux_port** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %27 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %6
  store %struct.snd_midi_channel* null, %struct.snd_midi_channel** %17, align 8
  br label %40

32:                                               ; preds = %24
  %33 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %34 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %36, i64 %38
  store %struct.snd_midi_channel* %39, %struct.snd_midi_channel** %17, align 8
  br label %40

40:                                               ; preds = %32, %31
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 4
  %43 = bitcast i8* %42 to i16*
  %44 = load i16, i16* %43, align 2
  store i16 %44, i16* %14, align 2
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 6
  %47 = bitcast i8* %46 to i16*
  %48 = load i16, i16* %47, align 2
  store i16 %48, i16* %15, align 2
  %49 = load i32, i32* %9, align 4
  switch i32 %49, label %165 [
    i32 130, label %50
    i32 129, label %60
    i32 128, label %63
    i32 131, label %64
    i32 133, label %65
    i32 134, label %73
    i32 136, label %81
    i32 139, label %92
    i32 140, label %106
    i32 137, label %112
    i32 135, label %149
    i32 138, label %164
  ]

50:                                               ; preds = %40
  %51 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %17, align 8
  %52 = icmp ne %struct.snd_midi_channel* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %55 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %17, align 8
  %56 = load i16, i16* %14, align 2
  %57 = load i16, i16* %15, align 2
  %58 = call i32 @snd_emux_send_effect_oss(%struct.snd_emux_port* %54, %struct.snd_midi_channel* %55, i16 zeroext %56, i16 signext %57)
  br label %59

59:                                               ; preds = %53, %50
  br label %183

60:                                               ; preds = %40
  %61 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %62 = call i32 @snd_emux_terminate_all(%struct.snd_emux* %61)
  br label %183

63:                                               ; preds = %40
  br label %183

64:                                               ; preds = %40
  br label %183

65:                                               ; preds = %40
  %66 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %67 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @MIDI_CTL_ALL_NOTES_OFF, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @fake_event(%struct.snd_emux* %66, %struct.snd_emux_port* %67, i32 %68, i32 %69, i32 0, i32 %70, i32 %71)
  br label %183

73:                                               ; preds = %40
  %74 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %75 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @MIDI_CTL_ALL_SOUNDS_OFF, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @fake_event(%struct.snd_emux* %74, %struct.snd_emux_port* %75, i32 %76, i32 %77, i32 0, i32 %78, i32 %79)
  br label %183

81:                                               ; preds = %40
  %82 = load i16, i16* %15, align 2
  %83 = icmp ne i16 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i16, i16* %14, align 2
  %86 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %87 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %86, i32 0, i32 0
  store i16 %85, i16* %87, align 8
  %88 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %89 = load i32, i32* @SNDRV_EMUX_UPDATE_VOLUME, align 4
  %90 = call i32 @snd_emux_update_port(%struct.snd_emux_port* %88, i32 %89)
  br label %91

91:                                               ; preds = %84, %81
  br label %183

92:                                               ; preds = %40
  %93 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %17, align 8
  %94 = icmp ne %struct.snd_midi_channel* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i16, i16* %14, align 2
  %97 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %17, align 8
  %98 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %97, i32 0, i32 0
  store i16 %96, i16* %98, align 4
  %99 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %100 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %17, align 8
  %101 = load i32, i32* @SNDRV_EMUX_UPDATE_FMMOD, align 4
  %102 = load i32, i32* @SNDRV_EMUX_UPDATE_FM2FRQ2, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @snd_emux_update_channel(%struct.snd_emux_port* %99, %struct.snd_midi_channel* %100, i32 %103)
  br label %105

105:                                              ; preds = %95, %92
  br label %183

106:                                              ; preds = %40
  %107 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %108 = load i16, i16* %14, align 2
  %109 = call i32 @reset_port_mode(%struct.snd_emux_port* %107, i16 zeroext %108)
  %110 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %111 = call i32 @snd_emux_reset_port(%struct.snd_emux_port* %110)
  br label %183

112:                                              ; preds = %40
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 4
  %115 = bitcast i8* %114 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %118 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  store i32 0, i32* %16, align 4
  br label %119

119:                                              ; preds = %145, %112
  %120 = load i32, i32* %16, align 4
  %121 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %122 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %120, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %119
  %127 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %128 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %129, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %130, i64 %132
  store %struct.snd_midi_channel* %133, %struct.snd_midi_channel** %17, align 8
  %134 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %135 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %16, align 4
  %138 = lshr i32 %136, %137
  %139 = and i32 %138, 1
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 1, i32 0
  %143 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %17, align 8
  %144 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %126
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %16, align 4
  br label %119

148:                                              ; preds = %119
  br label %183

149:                                              ; preds = %40
  %150 = load i16, i16* %14, align 2
  %151 = zext i16 %150 to i32
  %152 = load i16, i16* @EMUX_MD_END, align 2
  %153 = zext i16 %152 to i32
  %154 = icmp slt i32 %151, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %149
  %156 = load i16, i16* %15, align 2
  %157 = load %struct.snd_emux_port*, %struct.snd_emux_port** %8, align 8
  %158 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %157, i32 0, i32 2
  %159 = load i16*, i16** %158, align 8
  %160 = load i16, i16* %14, align 2
  %161 = zext i16 %160 to i64
  %162 = getelementptr inbounds i16, i16* %159, i64 %161
  store i16 %156, i16* %162, align 2
  br label %163

163:                                              ; preds = %155, %149
  br label %183

164:                                              ; preds = %40
  br label %183

165:                                              ; preds = %40
  %166 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %167 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32 (%struct.snd_emux.0*, i32, i16, i16)*, i32 (%struct.snd_emux.0*, i32, i16, i16)** %168, align 8
  %170 = icmp ne i32 (%struct.snd_emux.0*, i32, i16, i16)* %169, null
  br i1 %170, label %171, label %182

171:                                              ; preds = %165
  %172 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %173 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32 (%struct.snd_emux.0*, i32, i16, i16)*, i32 (%struct.snd_emux.0*, i32, i16, i16)** %174, align 8
  %176 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %177 = bitcast %struct.snd_emux* %176 to %struct.snd_emux.0*
  %178 = load i32, i32* %9, align 4
  %179 = load i16, i16* %14, align 2
  %180 = load i16, i16* %15, align 2
  %181 = call i32 %175(%struct.snd_emux.0* %177, i32 %178, i16 zeroext %179, i16 signext %180)
  br label %182

182:                                              ; preds = %171, %165
  br label %183

183:                                              ; preds = %182, %164, %163, %148, %106, %105, %91, %73, %65, %64, %63, %60, %59
  ret void
}

declare dso_local i32 @snd_emux_send_effect_oss(%struct.snd_emux_port*, %struct.snd_midi_channel*, i16 zeroext, i16 signext) #1

declare dso_local i32 @snd_emux_terminate_all(%struct.snd_emux*) #1

declare dso_local i32 @fake_event(%struct.snd_emux*, %struct.snd_emux_port*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_emux_update_port(%struct.snd_emux_port*, i32) #1

declare dso_local i32 @snd_emux_update_channel(%struct.snd_emux_port*, %struct.snd_midi_channel*, i32) #1

declare dso_local i32 @reset_port_mode(%struct.snd_emux_port*, i16 zeroext) #1

declare dso_local i32 @snd_emux_reset_port(%struct.snd_emux_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
