; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_callback.c_start_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000_callback.c_start_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_voice = type { i32, i32, i32, %struct.TYPE_4__, %struct.snd_midi_channel*, %struct.snd_emu8000* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_midi_channel = type { i64* }
%struct.snd_emu8000 = type { i32 }

@MIDI_CTL_E3_CHORUS_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emux_voice*)* @start_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_voice(%struct.snd_emux_voice* %0) #0 {
  %2 = alloca %struct.snd_emux_voice*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_midi_channel*, align 8
  %7 = alloca %struct.snd_emu8000*, align 8
  store %struct.snd_emux_voice* %0, %struct.snd_emux_voice** %2, align 8
  %8 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %9 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %8, i32 0, i32 5
  %10 = load %struct.snd_emu8000*, %struct.snd_emu8000** %9, align 8
  store %struct.snd_emu8000* %10, %struct.snd_emu8000** %7, align 8
  %11 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %12 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %15 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %14, i32 0, i32 4
  %16 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %15, align 8
  store %struct.snd_midi_channel* %16, %struct.snd_midi_channel** %6, align 8
  %17 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000* %17, i32 %18, i32 128)
  %20 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000* %20, i32 %21, i32 65535)
  %23 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @EMU8000_CVCF_WRITE(%struct.snd_emu8000* %23, i32 %24, i32 65535)
  %26 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @EMU8000_PTRX_WRITE(%struct.snd_emu8000* %26, i32 %27, i32 0)
  %29 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @EMU8000_CPF_WRITE(%struct.snd_emu8000* %29, i32 %30, i32 0)
  %32 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %33 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %34 = call i32 @set_pitch(%struct.snd_emu8000* %32, %struct.snd_emux_voice* %33)
  %35 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %38 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @EMU8000_ENVVAL_WRITE(%struct.snd_emu8000* %35, i32 %36, i32 %41)
  %43 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %46 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @EMU8000_ATKHLD_WRITE(%struct.snd_emu8000* %43, i32 %44, i32 %49)
  %51 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %54 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @EMU8000_DCYSUS_WRITE(%struct.snd_emu8000* %51, i32 %52, i32 %57)
  %59 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %62 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @EMU8000_ENVVOL_WRITE(%struct.snd_emu8000* %59, i32 %60, i32 %65)
  %67 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %70 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @EMU8000_ATKHLDV_WRITE(%struct.snd_emu8000* %67, i32 %68, i32 %73)
  %75 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %76 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %77 = call i32 @set_volume(%struct.snd_emu8000* %75, %struct.snd_emux_voice* %76)
  %78 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %81 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @EMU8000_PEFE_WRITE(%struct.snd_emu8000* %78, i32 %79, i32 %84)
  %86 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %89 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @EMU8000_LFO1VAL_WRITE(%struct.snd_emu8000* %86, i32 %87, i32 %92)
  %94 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %97 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @EMU8000_LFO2VAL_WRITE(%struct.snd_emu8000* %94, i32 %95, i32 %100)
  %102 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %103 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %104 = call i32 @set_fmmod(%struct.snd_emu8000* %102, %struct.snd_emux_voice* %103)
  %105 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %106 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %107 = call i32 @set_tremfreq(%struct.snd_emu8000* %105, %struct.snd_emux_voice* %106)
  %108 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %109 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %110 = call i32 @set_fm2frq2(%struct.snd_emu8000* %108, %struct.snd_emux_voice* %109)
  %111 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %112 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %113 = call i32 @set_pan(%struct.snd_emu8000* %111, %struct.snd_emux_voice* %112)
  %114 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %115 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  %119 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %120 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %3, align 4
  %124 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %125 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i64, i64* @MIDI_CTL_E3_CHORUS_DEPTH, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = mul nsw i32 %130, 9
  %132 = sdiv i32 %131, 10
  %133 = load i32, i32* %3, align 4
  %134 = add i32 %133, %132
  store i32 %134, i32* %3, align 4
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @LIMITMAX(i32 %135, i32 255)
  %137 = load i32, i32* %3, align 4
  %138 = shl i32 %137, 24
  %139 = load i32, i32* %5, align 4
  %140 = or i32 %138, %139
  store i32 %140, i32* %3, align 4
  %141 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @EMU8000_CSL_WRITE(%struct.snd_emu8000* %141, i32 %142, i32 %143)
  %145 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %146 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  %150 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %151 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %3, align 4
  %155 = load i32, i32* %3, align 4
  %156 = shl i32 %155, 28
  %157 = load i32, i32* %5, align 4
  %158 = or i32 %156, %157
  store i32 %158, i32* %3, align 4
  %159 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* %3, align 4
  %162 = call i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000* %159, i32 %160, i32 %161)
  %163 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @EMU8000_00A0_WRITE(%struct.snd_emu8000* %163, i32 %164, i32 0)
  %166 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %167 = load i32, i32* %4, align 4
  %168 = call i32 @EMU8000_0080_WRITE(%struct.snd_emu8000* %166, i32 %167, i32 0)
  %169 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %170 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 16
  store i32 %172, i32* %3, align 4
  %173 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* %3, align 4
  %176 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %2, align 8
  %177 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %175, %178
  %180 = call i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000* %173, i32 %174, i32 %179)
  %181 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* %3, align 4
  %184 = or i32 %183, 65280
  %185 = call i32 @EMU8000_CVCF_WRITE(%struct.snd_emu8000* %181, i32 %182, i32 %184)
  ret i32 0
}

declare dso_local i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CVCF_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_PTRX_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CPF_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @set_pitch(%struct.snd_emu8000*, %struct.snd_emux_voice*) #1

declare dso_local i32 @EMU8000_ENVVAL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_ATKHLD_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_DCYSUS_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_ENVVOL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_ATKHLDV_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @set_volume(%struct.snd_emu8000*, %struct.snd_emux_voice*) #1

declare dso_local i32 @EMU8000_PEFE_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_LFO1VAL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_LFO2VAL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @set_fmmod(%struct.snd_emu8000*, %struct.snd_emux_voice*) #1

declare dso_local i32 @set_tremfreq(%struct.snd_emu8000*, %struct.snd_emux_voice*) #1

declare dso_local i32 @set_fm2frq2(%struct.snd_emu8000*, %struct.snd_emux_voice*) #1

declare dso_local i32 @set_pan(%struct.snd_emu8000*, %struct.snd_emux_voice*) #1

declare dso_local i32 @LIMITMAX(i32, i32) #1

declare dso_local i32 @EMU8000_CSL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_00A0_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_0080_WRITE(%struct.snd_emu8000*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
