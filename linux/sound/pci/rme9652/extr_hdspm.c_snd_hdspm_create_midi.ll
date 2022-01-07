; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_create_midi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_create_midi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i8*, i8* }
%struct.hdspm = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_5__*, i8*, i8*, i8*, i8*, i32, %struct.hdspm* }
%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_4__* }

@MADIface = common dso_local global i64 0, align 8
@HDSPM_midiDataIn2 = common dso_local global i8* null, align 8
@HDSPM_midiStatusIn2 = common dso_local global i8* null, align 8
@HDSPM_midiDataOut2 = common dso_local global i8* null, align 8
@HDSPM_midiStatusOut2 = common dso_local global i8* null, align 8
@HDSPM_Midi2InterruptEnable = common dso_local global i8* null, align 8
@HDSPM_midi2IRQPending = common dso_local global i8* null, align 8
@HDSPM_midiDataIn0 = common dso_local global i8* null, align 8
@HDSPM_midiStatusIn0 = common dso_local global i8* null, align 8
@HDSPM_midiDataOut0 = common dso_local global i32 0, align 4
@HDSPM_midiStatusOut0 = common dso_local global i32 0, align 4
@HDSPM_Midi0InterruptEnable = common dso_local global i8* null, align 8
@HDSPM_midi0IRQPending = common dso_local global i8* null, align 8
@HDSPM_midiDataIn1 = common dso_local global i8* null, align 8
@HDSPM_midiStatusIn1 = common dso_local global i8* null, align 8
@HDSPM_midiDataOut1 = common dso_local global i32 0, align 4
@HDSPM_midiStatusOut1 = common dso_local global i32 0, align 4
@HDSPM_Midi1InterruptEnable = common dso_local global i8* null, align 8
@HDSPM_midi1IRQPending = common dso_local global i8* null, align 8
@MADI = common dso_local global i64 0, align 8
@HDSPM_midi2IRQPendingAES = common dso_local global i8* null, align 8
@HDSPM_midiDataIn3 = common dso_local global i8* null, align 8
@HDSPM_midiStatusIn3 = common dso_local global i8* null, align 8
@HDSPM_Midi3InterruptEnable = common dso_local global i8* null, align 8
@HDSPM_midi3IRQPending = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s MIDIoverMADI\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s MIDI %d\00", align 1
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i32 0, align 4
@snd_hdspm_midi_output = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@snd_hdspm_midi_input = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%s MTC %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.hdspm*, i32)* @snd_hdspm_create_midi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_create_midi(%struct.snd_card* %0, %struct.hdspm* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.hdspm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store %struct.hdspm* %1, %struct.hdspm** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %12 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %10, i32* %17, align 8
  %18 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %19 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %20 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 9
  store %struct.hdspm* %18, %struct.hdspm** %25, align 8
  %26 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %27 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 8
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 0, %34
  br i1 %35, label %36, label %119

36:                                               ; preds = %3
  %37 = load i64, i64* @MADIface, align 8
  %38 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %39 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %36
  %43 = load i8*, i8** @HDSPM_midiDataIn2, align 8
  %44 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %45 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 7
  store i8* %43, i8** %48, align 8
  %49 = load i8*, i8** @HDSPM_midiStatusIn2, align 8
  %50 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %51 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 6
  store i8* %49, i8** %54, align 8
  %55 = load i8*, i8** @HDSPM_midiDataOut2, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %58 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %56, i32* %61, align 4
  %62 = load i8*, i8** @HDSPM_midiStatusOut2, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %65 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 %63, i32* %68, align 8
  %69 = load i8*, i8** @HDSPM_Midi2InterruptEnable, align 8
  %70 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %71 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 5
  store i8* %69, i8** %74, align 8
  %75 = load i8*, i8** @HDSPM_midi2IRQPending, align 8
  %76 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %77 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  store i8* %75, i8** %80, align 8
  br label %118

81:                                               ; preds = %36
  %82 = load i8*, i8** @HDSPM_midiDataIn0, align 8
  %83 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %84 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 7
  store i8* %82, i8** %87, align 8
  %88 = load i8*, i8** @HDSPM_midiStatusIn0, align 8
  %89 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %90 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 6
  store i8* %88, i8** %93, align 8
  %94 = load i32, i32* @HDSPM_midiDataOut0, align 4
  %95 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %96 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store i32 %94, i32* %99, align 4
  %100 = load i32, i32* @HDSPM_midiStatusOut0, align 4
  %101 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %102 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  store i32 %100, i32* %105, align 8
  %106 = load i8*, i8** @HDSPM_Midi0InterruptEnable, align 8
  %107 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %108 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 5
  store i8* %106, i8** %111, align 8
  %112 = load i8*, i8** @HDSPM_midi0IRQPending, align 8
  %113 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %114 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 4
  store i8* %112, i8** %117, align 8
  br label %118

118:                                              ; preds = %81, %42
  br label %287

119:                                              ; preds = %3
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 1, %120
  br i1 %121, label %122, label %159

122:                                              ; preds = %119
  %123 = load i8*, i8** @HDSPM_midiDataIn1, align 8
  %124 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %125 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 7
  store i8* %123, i8** %128, align 8
  %129 = load i8*, i8** @HDSPM_midiStatusIn1, align 8
  %130 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %131 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 6
  store i8* %129, i8** %134, align 8
  %135 = load i32, i32* @HDSPM_midiDataOut1, align 4
  %136 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %137 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %136, i32 0, i32 1
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i32 %135, i32* %140, align 4
  %141 = load i32, i32* @HDSPM_midiStatusOut1, align 4
  %142 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %143 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %142, i32 0, i32 1
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  store i32 %141, i32* %146, align 8
  %147 = load i8*, i8** @HDSPM_Midi1InterruptEnable, align 8
  %148 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %149 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %148, i32 0, i32 1
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 5
  store i8* %147, i8** %152, align 8
  %153 = load i8*, i8** @HDSPM_midi1IRQPending, align 8
  %154 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %155 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %154, i32 0, i32 1
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 1
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  store i8* %153, i8** %158, align 8
  br label %286

159:                                              ; preds = %119
  %160 = load i32, i32* %7, align 4
  %161 = icmp eq i32 2, %160
  br i1 %161, label %162, label %207

162:                                              ; preds = %159
  %163 = load i64, i64* @MADI, align 8
  %164 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %165 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %163, %166
  br i1 %167, label %168, label %207

168:                                              ; preds = %162
  %169 = load i8*, i8** @HDSPM_midiDataIn2, align 8
  %170 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %171 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %170, i32 0, i32 1
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 2
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 7
  store i8* %169, i8** %174, align 8
  %175 = load i8*, i8** @HDSPM_midiStatusIn2, align 8
  %176 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %177 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %176, i32 0, i32 1
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i64 2
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 6
  store i8* %175, i8** %180, align 8
  %181 = load i8*, i8** @HDSPM_midiDataOut2, align 8
  %182 = ptrtoint i8* %181 to i32
  %183 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %184 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %183, i32 0, i32 1
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i64 2
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  store i32 %182, i32* %187, align 4
  %188 = load i8*, i8** @HDSPM_midiStatusOut2, align 8
  %189 = ptrtoint i8* %188 to i32
  %190 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %191 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %190, i32 0, i32 1
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i64 2
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  store i32 %189, i32* %194, align 8
  %195 = load i8*, i8** @HDSPM_Midi2InterruptEnable, align 8
  %196 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %197 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %196, i32 0, i32 1
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 2
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 5
  store i8* %195, i8** %200, align 8
  %201 = load i8*, i8** @HDSPM_midi2IRQPending, align 8
  %202 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %203 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %202, i32 0, i32 1
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i64 2
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 4
  store i8* %201, i8** %206, align 8
  br label %285

207:                                              ; preds = %162, %159
  %208 = load i32, i32* %7, align 4
  %209 = icmp eq i32 2, %208
  br i1 %209, label %210, label %245

210:                                              ; preds = %207
  %211 = load i8*, i8** @HDSPM_midiDataIn2, align 8
  %212 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %213 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %212, i32 0, i32 1
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i64 2
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 7
  store i8* %211, i8** %216, align 8
  %217 = load i8*, i8** @HDSPM_midiStatusIn2, align 8
  %218 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %219 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %218, i32 0, i32 1
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i64 2
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 6
  store i8* %217, i8** %222, align 8
  %223 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %224 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %223, i32 0, i32 1
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i64 2
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 1
  store i32 -1, i32* %227, align 4
  %228 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %229 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %228, i32 0, i32 1
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i64 2
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 2
  store i32 -1, i32* %232, align 8
  %233 = load i8*, i8** @HDSPM_Midi2InterruptEnable, align 8
  %234 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %235 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %234, i32 0, i32 1
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i64 2
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 5
  store i8* %233, i8** %238, align 8
  %239 = load i8*, i8** @HDSPM_midi2IRQPendingAES, align 8
  %240 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %241 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %240, i32 0, i32 1
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i64 2
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 4
  store i8* %239, i8** %244, align 8
  br label %284

245:                                              ; preds = %207
  %246 = load i32, i32* %7, align 4
  %247 = icmp eq i32 3, %246
  br i1 %247, label %248, label %283

248:                                              ; preds = %245
  %249 = load i8*, i8** @HDSPM_midiDataIn3, align 8
  %250 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %251 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %250, i32 0, i32 1
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i64 3
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 7
  store i8* %249, i8** %254, align 8
  %255 = load i8*, i8** @HDSPM_midiStatusIn3, align 8
  %256 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %257 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %256, i32 0, i32 1
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i64 3
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 6
  store i8* %255, i8** %260, align 8
  %261 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %262 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %261, i32 0, i32 1
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i64 3
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 1
  store i32 -1, i32* %265, align 4
  %266 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %267 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %266, i32 0, i32 1
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i64 3
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 2
  store i32 -1, i32* %270, align 8
  %271 = load i8*, i8** @HDSPM_Midi3InterruptEnable, align 8
  %272 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %273 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %272, i32 0, i32 1
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i64 3
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 5
  store i8* %271, i8** %276, align 8
  %277 = load i8*, i8** @HDSPM_midi3IRQPending, align 8
  %278 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %279 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %278, i32 0, i32 1
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i64 3
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 4
  store i8* %277, i8** %282, align 8
  br label %283

283:                                              ; preds = %248, %245
  br label %284

284:                                              ; preds = %283, %210
  br label %285

285:                                              ; preds = %284, %168
  br label %286

286:                                              ; preds = %285, %122
  br label %287

287:                                              ; preds = %286, %118
  %288 = load i32, i32* %7, align 4
  %289 = icmp slt i32 %288, 2
  br i1 %289, label %305, label %290

290:                                              ; preds = %287
  %291 = load i32, i32* %7, align 4
  %292 = icmp eq i32 2, %291
  br i1 %292, label %293, label %428

293:                                              ; preds = %290
  %294 = load i64, i64* @MADI, align 8
  %295 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %296 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = icmp eq i64 %294, %297
  br i1 %298, label %305, label %299

299:                                              ; preds = %293
  %300 = load i64, i64* @MADIface, align 8
  %301 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %302 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = icmp eq i64 %300, %303
  br i1 %304, label %305, label %428

305:                                              ; preds = %299, %293, %287
  %306 = load i32, i32* %7, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %320

308:                                              ; preds = %305
  %309 = load i64, i64* @MADIface, align 8
  %310 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %311 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = icmp eq i64 %309, %312
  br i1 %313, label %314, label %320

314:                                              ; preds = %308
  %315 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %316 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %317 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %316, i32 0, i32 0
  %318 = load i8*, i8** %317, align 8
  %319 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %315, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %318)
  br label %344

320:                                              ; preds = %308, %305
  %321 = load i32, i32* %7, align 4
  %322 = icmp eq i32 %321, 2
  br i1 %322, label %323, label %335

323:                                              ; preds = %320
  %324 = load i64, i64* @MADI, align 8
  %325 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %326 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = icmp eq i64 %324, %327
  br i1 %328, label %329, label %335

329:                                              ; preds = %323
  %330 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %331 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %332 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %331, i32 0, i32 0
  %333 = load i8*, i8** %332, align 8
  %334 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %330, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %333)
  br label %343

335:                                              ; preds = %323, %320
  %336 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %337 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %338 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %337, i32 0, i32 0
  %339 = load i8*, i8** %338, align 8
  %340 = load i32, i32* %7, align 4
  %341 = add nsw i32 %340, 1
  %342 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %336, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %339, i32 %341)
  br label %343

343:                                              ; preds = %335, %329
  br label %344

344:                                              ; preds = %343, %314
  %345 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %346 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %347 = load i32, i32* %7, align 4
  %348 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %349 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %348, i32 0, i32 1
  %350 = load %struct.TYPE_4__*, %struct.TYPE_4__** %349, align 8
  %351 = load i32, i32* %7, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 3
  %355 = call i32 @snd_rawmidi_new(%struct.snd_card* %345, i8* %346, i32 %347, i32 1, i32 1, %struct.TYPE_5__** %354)
  store i32 %355, i32* %8, align 4
  %356 = load i32, i32* %8, align 4
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %344
  %359 = load i32, i32* %8, align 4
  store i32 %359, i32* %4, align 4
  br label %506

360:                                              ; preds = %344
  %361 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %362 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %361, i32 0, i32 1
  %363 = load %struct.TYPE_4__*, %struct.TYPE_4__** %362, align 8
  %364 = load i32, i32* %7, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 3
  %368 = load %struct.TYPE_5__*, %struct.TYPE_5__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 0
  %370 = load i8*, i8** %369, align 8
  %371 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %372 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %371, i32 0, i32 1
  %373 = load i8*, i8** %372, align 8
  %374 = load i32, i32* %7, align 4
  %375 = add nsw i32 %374, 1
  %376 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %370, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %373, i32 %375)
  %377 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %378 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %377, i32 0, i32 1
  %379 = load %struct.TYPE_4__*, %struct.TYPE_4__** %378, align 8
  %380 = load i32, i32* %7, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i64 %381
  %383 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %384 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %383, i32 0, i32 1
  %385 = load %struct.TYPE_4__*, %struct.TYPE_4__** %384, align 8
  %386 = load i32, i32* %7, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 3
  %390 = load %struct.TYPE_5__*, %struct.TYPE_5__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %390, i32 0, i32 2
  store %struct.TYPE_4__* %382, %struct.TYPE_4__** %391, align 8
  %392 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %393 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %392, i32 0, i32 1
  %394 = load %struct.TYPE_4__*, %struct.TYPE_4__** %393, align 8
  %395 = load i32, i32* %7, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 3
  %399 = load %struct.TYPE_5__*, %struct.TYPE_5__** %398, align 8
  %400 = load i32, i32* @SNDRV_RAWMIDI_STREAM_OUTPUT, align 4
  %401 = call i32 @snd_rawmidi_set_ops(%struct.TYPE_5__* %399, i32 %400, i32* @snd_hdspm_midi_output)
  %402 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %403 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %402, i32 0, i32 1
  %404 = load %struct.TYPE_4__*, %struct.TYPE_4__** %403, align 8
  %405 = load i32, i32* %7, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 3
  %409 = load %struct.TYPE_5__*, %struct.TYPE_5__** %408, align 8
  %410 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %411 = call i32 @snd_rawmidi_set_ops(%struct.TYPE_5__* %409, i32 %410, i32* @snd_hdspm_midi_input)
  %412 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %413 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %414 = or i32 %412, %413
  %415 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %416 = or i32 %414, %415
  %417 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %418 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %417, i32 0, i32 1
  %419 = load %struct.TYPE_4__*, %struct.TYPE_4__** %418, align 8
  %420 = load i32, i32* %7, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %422, i32 0, i32 3
  %424 = load %struct.TYPE_5__*, %struct.TYPE_5__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 8
  %427 = or i32 %426, %416
  store i32 %427, i32* %425, align 8
  br label %505

428:                                              ; preds = %299, %290
  %429 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %430 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %431 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %430, i32 0, i32 0
  %432 = load i8*, i8** %431, align 8
  %433 = load i32, i32* %7, align 4
  %434 = add nsw i32 %433, 1
  %435 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %429, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %432, i32 %434)
  %436 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %437 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %438 = load i32, i32* %7, align 4
  %439 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %440 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %439, i32 0, i32 1
  %441 = load %struct.TYPE_4__*, %struct.TYPE_4__** %440, align 8
  %442 = load i32, i32* %7, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %441, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %444, i32 0, i32 3
  %446 = call i32 @snd_rawmidi_new(%struct.snd_card* %436, i8* %437, i32 %438, i32 1, i32 1, %struct.TYPE_5__** %445)
  store i32 %446, i32* %8, align 4
  %447 = load i32, i32* %8, align 4
  %448 = icmp slt i32 %447, 0
  br i1 %448, label %449, label %451

449:                                              ; preds = %428
  %450 = load i32, i32* %8, align 4
  store i32 %450, i32* %4, align 4
  br label %506

451:                                              ; preds = %428
  %452 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %453 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %452, i32 0, i32 1
  %454 = load %struct.TYPE_4__*, %struct.TYPE_4__** %453, align 8
  %455 = load i32, i32* %7, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %454, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %457, i32 0, i32 3
  %459 = load %struct.TYPE_5__*, %struct.TYPE_5__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %459, i32 0, i32 0
  %461 = load i8*, i8** %460, align 8
  %462 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %463 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %462, i32 0, i32 1
  %464 = load i8*, i8** %463, align 8
  %465 = load i32, i32* %7, align 4
  %466 = add nsw i32 %465, 1
  %467 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %461, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %464, i32 %466)
  %468 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %469 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %468, i32 0, i32 1
  %470 = load %struct.TYPE_4__*, %struct.TYPE_4__** %469, align 8
  %471 = load i32, i32* %7, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %470, i64 %472
  %474 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %475 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %474, i32 0, i32 1
  %476 = load %struct.TYPE_4__*, %struct.TYPE_4__** %475, align 8
  %477 = load i32, i32* %7, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %476, i64 %478
  %480 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %479, i32 0, i32 3
  %481 = load %struct.TYPE_5__*, %struct.TYPE_5__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %481, i32 0, i32 2
  store %struct.TYPE_4__* %473, %struct.TYPE_4__** %482, align 8
  %483 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %484 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %483, i32 0, i32 1
  %485 = load %struct.TYPE_4__*, %struct.TYPE_4__** %484, align 8
  %486 = load i32, i32* %7, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %485, i64 %487
  %489 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %488, i32 0, i32 3
  %490 = load %struct.TYPE_5__*, %struct.TYPE_5__** %489, align 8
  %491 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %492 = call i32 @snd_rawmidi_set_ops(%struct.TYPE_5__* %490, i32 %491, i32* @snd_hdspm_midi_input)
  %493 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %494 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %495 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %494, i32 0, i32 1
  %496 = load %struct.TYPE_4__*, %struct.TYPE_4__** %495, align 8
  %497 = load i32, i32* %7, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %496, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %499, i32 0, i32 3
  %501 = load %struct.TYPE_5__*, %struct.TYPE_5__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 8
  %504 = or i32 %503, %493
  store i32 %504, i32* %502, align 8
  br label %505

505:                                              ; preds = %451, %360
  store i32 0, i32* %4, align 4
  br label %506

506:                                              ; preds = %505, %449, %358
  %507 = load i32, i32* %4, align 4
  ret i32 %507
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @snd_rawmidi_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.TYPE_5__**) #1

declare dso_local i32 @snd_rawmidi_set_ops(%struct.TYPE_5__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
