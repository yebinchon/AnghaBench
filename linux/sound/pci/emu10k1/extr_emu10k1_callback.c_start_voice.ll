; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_callback.c_start_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_callback.c_start_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_voice = type { i32, i32, i32, i64, %struct.TYPE_6__, %struct.snd_midi_channel*, i64, i64, i64, %struct.snd_emu10k1* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_midi_channel = type { i64* }
%struct.snd_emu10k1 = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_emu10k1_memblk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FXBUS_MIDI_LEFT = common dso_local global i32 0, align 4
@FXBUS_MIDI_RIGHT = common dso_local global i32 0, align 4
@FXBUS_MIDI_REVERB = common dso_local global i32 0, align 4
@FXBUS_MIDI_CHORUS = common dso_local global i32 0, align 4
@A_FXRT1 = common dso_local global i32 0, align 4
@FXRT = common dso_local global i32 0, align 4
@DCYSUSV = common dso_local global i32 0, align 4
@VTFT = common dso_local global i32 0, align 4
@CVCF = common dso_local global i32 0, align 4
@PTRX = common dso_local global i32 0, align 4
@CPF = common dso_local global i32 0, align 4
@IP = common dso_local global i32 0, align 4
@ENVVAL = common dso_local global i32 0, align 4
@ATKHLDM = common dso_local global i32 0, align 4
@DCYSUSM = common dso_local global i32 0, align 4
@ENVVOL = common dso_local global i32 0, align 4
@ATKHLDV = common dso_local global i32 0, align 4
@IFATN = common dso_local global i32 0, align 4
@PEFE = common dso_local global i32 0, align 4
@LFOVAL1 = common dso_local global i32 0, align 4
@LFOVAL2 = common dso_local global i32 0, align 4
@TREMFRQ = common dso_local global i32 0, align 4
@MIDI_CTL_E1_REVERB_DEPTH = common dso_local global i64 0, align 8
@PSST = common dso_local global i32 0, align 4
@MIDI_CTL_E3_CHORUS_DEPTH = common dso_local global i64 0, align 8
@DSL = common dso_local global i32 0, align 4
@Z1 = common dso_local global i32 0, align 4
@Z2 = common dso_local global i32 0, align 4
@MAP_PTI_MASK1 = common dso_local global i32 0, align 4
@MAP_PTI_MASK0 = common dso_local global i32 0, align 4
@MAPA = common dso_local global i32 0, align 4
@MAPB = common dso_local global i32 0, align 4
@CCCA_INTERPROM_0 = common dso_local global i32 0, align 4
@SNDRV_SFNT_SAMPLE_8BITS = common dso_local global i32 0, align 4
@CCCA_8BITSELECT = common dso_local global i32 0, align 4
@CCCA = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@CDE = common dso_local global i32 0, align 4
@CDF = common dso_local global i32 0, align 4
@hw_address_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emux_voice*)* @start_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_voice(%struct.snd_emux_voice* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_emux_voice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_midi_channel*, align 8
  %9 = alloca %struct.snd_emu10k1*, align 8
  %10 = alloca %struct.snd_emu10k1_memblk*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_emux_voice* %0, %struct.snd_emux_voice** %3, align 8
  %12 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %13 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %12, i32 0, i32 9
  %14 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %13, align 8
  store %struct.snd_emu10k1* %14, %struct.snd_emu10k1** %9, align 8
  %15 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %16 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @snd_BUG_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %424

26:                                               ; preds = %1
  %27 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %28 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %27, i32 0, i32 5
  %29 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %28, align 8
  store %struct.snd_midi_channel* %29, %struct.snd_midi_channel** %8, align 8
  %30 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %31 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %30, i32 0, i32 8
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.snd_emu10k1_memblk*
  store %struct.snd_emu10k1_memblk* %33, %struct.snd_emu10k1_memblk** %10, align 8
  %34 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %10, align 8
  %35 = icmp eq %struct.snd_emu10k1_memblk* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %424

39:                                               ; preds = %26
  %40 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %10, align 8
  %41 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %45 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %10, align 8
  %46 = call i64 @snd_emu10k1_memblk_map(%struct.snd_emu10k1* %44, %struct.snd_emu10k1_memblk* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %424

51:                                               ; preds = %39
  %52 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %10, align 8
  %53 = call i32 @snd_emu10k1_memblk_offset(%struct.snd_emu10k1_memblk* %52)
  %54 = ashr i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %57 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add i32 %59, %55
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %63 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %65, %61
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %69 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add i32 %71, %67
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %75 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = add i32 %77, %73
  store i32 %78, i32* %76, align 4
  %79 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %80 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %51
  %84 = load i32, i32* @FXBUS_MIDI_LEFT, align 4
  %85 = load i32, i32* @FXBUS_MIDI_RIGHT, align 4
  %86 = shl i32 %85, 8
  %87 = or i32 %84, %86
  %88 = load i32, i32* @FXBUS_MIDI_REVERB, align 4
  %89 = shl i32 %88, 16
  %90 = or i32 %87, %89
  %91 = load i32, i32* @FXBUS_MIDI_CHORUS, align 4
  %92 = shl i32 %91, 24
  %93 = or i32 %90, %92
  store i32 %93, i32* %4, align 4
  %94 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %95 = load i32, i32* @A_FXRT1, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %94, i32 %95, i32 %96, i32 %97)
  br label %116

99:                                               ; preds = %51
  %100 = load i32, i32* @FXBUS_MIDI_LEFT, align 4
  %101 = shl i32 %100, 16
  %102 = load i32, i32* @FXBUS_MIDI_RIGHT, align 4
  %103 = shl i32 %102, 20
  %104 = or i32 %101, %103
  %105 = load i32, i32* @FXBUS_MIDI_REVERB, align 4
  %106 = shl i32 %105, 24
  %107 = or i32 %104, %106
  %108 = load i32, i32* @FXBUS_MIDI_CHORUS, align 4
  %109 = shl i32 %108, 28
  %110 = or i32 %107, %109
  store i32 %110, i32* %4, align 4
  %111 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %112 = load i32, i32* @FXRT, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %111, i32 %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %99, %83
  %117 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %118 = load i32, i32* @DCYSUSV, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %117, i32 %118, i32 %119, i32 0)
  %121 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %122 = load i32, i32* @VTFT, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %121, i32 %122, i32 %123, i32 65535)
  %125 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %126 = load i32, i32* @CVCF, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %125, i32 %126, i32 %127, i32 65535)
  %129 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %130 = load i32, i32* @PTRX, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %129, i32 %130, i32 %131, i32 0)
  %133 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %134 = load i32, i32* @CPF, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %133, i32 %134, i32 %135, i32 0)
  %137 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %138 = load i32, i32* @IP, align 4
  %139 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %140 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %143 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %137, i32 %138, i32 %141, i32 %144)
  %146 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %147 = load i32, i32* @ENVVAL, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %150 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %146, i32 %147, i32 %148, i32 %153)
  %155 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %156 = load i32, i32* @ATKHLDM, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %159 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %155, i32 %156, i32 %157, i32 %162)
  %164 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %165 = load i32, i32* @DCYSUSM, align 4
  %166 = load i32, i32* %5, align 4
  %167 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %168 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %164, i32 %165, i32 %166, i32 %171)
  %173 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %174 = load i32, i32* @ENVVOL, align 4
  %175 = load i32, i32* %5, align 4
  %176 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %177 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %173, i32 %174, i32 %175, i32 %180)
  %182 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %183 = load i32, i32* @ATKHLDV, align 4
  %184 = load i32, i32* %5, align 4
  %185 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %186 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %182, i32 %183, i32 %184, i32 %189)
  %191 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %192 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %191, i32 0, i32 7
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = shl i32 %194, 8
  %196 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %197 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %196, i32 0, i32 6
  %198 = load i64, i64* %197, align 8
  %199 = trunc i64 %198 to i8
  %200 = zext i8 %199 to i32
  %201 = or i32 %195, %200
  store i32 %201, i32* %4, align 4
  %202 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %203 = load i32, i32* @IFATN, align 4
  %204 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %205 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %4, align 4
  %208 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %202, i32 %203, i32 %206, i32 %207)
  %209 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %210 = load i32, i32* @PEFE, align 4
  %211 = load i32, i32* %5, align 4
  %212 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %213 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 5
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %209, i32 %210, i32 %211, i32 %216)
  %218 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %219 = load i32, i32* @LFOVAL1, align 4
  %220 = load i32, i32* %5, align 4
  %221 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %222 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %218, i32 %219, i32 %220, i32 %225)
  %227 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %228 = load i32, i32* @LFOVAL2, align 4
  %229 = load i32, i32* %5, align 4
  %230 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %231 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 7
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %227, i32 %228, i32 %229, i32 %234)
  %236 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %237 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %238 = call i32 @set_fmmod(%struct.snd_emu10k1* %236, %struct.snd_emux_voice* %237)
  %239 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %240 = load i32, i32* @TREMFRQ, align 4
  %241 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %242 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %245 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 8
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %239, i32 %240, i32 %243, i32 %248)
  %250 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %251 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %252 = call i32 @set_fm2frq2(%struct.snd_emu10k1* %250, %struct.snd_emux_voice* %251)
  %253 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %254 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %253, i32 0, i32 4
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 5
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 9
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %4, align 4
  %258 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %259 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %258, i32 0, i32 5
  %260 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %259, align 8
  %261 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %260, i32 0, i32 0
  %262 = load i64*, i64** %261, align 8
  %263 = load i64, i64* @MIDI_CTL_E1_REVERB_DEPTH, align 8
  %264 = getelementptr inbounds i64, i64* %262, i64 %263
  %265 = load i64, i64* %264, align 8
  %266 = trunc i64 %265 to i32
  %267 = mul nsw i32 %266, 9
  %268 = sdiv i32 %267, 10
  %269 = load i32, i32* %4, align 4
  %270 = add i32 %269, %268
  store i32 %270, i32* %4, align 4
  %271 = load i32, i32* %4, align 4
  %272 = call i32 @LIMITMAX(i32 %271, i32 255)
  %273 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %274 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  store i32 %276, i32* %6, align 4
  %277 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %278 = load i32, i32* @PSST, align 4
  %279 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %280 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %4, align 4
  %283 = shl i32 %282, 24
  %284 = load i32, i32* %6, align 4
  %285 = or i32 %283, %284
  %286 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %277, i32 %278, i32 %281, i32 %285)
  %287 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %288 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %287, i32 0, i32 4
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %6, align 4
  %291 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %292 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %291, i32 0, i32 4
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 5
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 10
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %4, align 4
  %296 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %297 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %296, i32 0, i32 0
  %298 = load i64*, i64** %297, align 8
  %299 = load i64, i64* @MIDI_CTL_E3_CHORUS_DEPTH, align 8
  %300 = getelementptr inbounds i64, i64* %298, i64 %299
  %301 = load i64, i64* %300, align 8
  %302 = trunc i64 %301 to i32
  %303 = mul nsw i32 %302, 9
  %304 = sdiv i32 %303, 10
  %305 = load i32, i32* %4, align 4
  %306 = add i32 %305, %304
  store i32 %306, i32* %4, align 4
  %307 = load i32, i32* %4, align 4
  %308 = call i32 @LIMITMAX(i32 %307, i32 255)
  %309 = load i32, i32* %4, align 4
  %310 = shl i32 %309, 24
  %311 = load i32, i32* %6, align 4
  %312 = or i32 %310, %311
  store i32 %312, i32* %4, align 4
  %313 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %314 = load i32, i32* @DSL, align 4
  %315 = load i32, i32* %5, align 4
  %316 = load i32, i32* %4, align 4
  %317 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %313, i32 %314, i32 %315, i32 %316)
  %318 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %319 = load i32, i32* @Z1, align 4
  %320 = load i32, i32* %5, align 4
  %321 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %318, i32 %319, i32 %320, i32 0)
  %322 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %323 = load i32, i32* @Z2, align 4
  %324 = load i32, i32* %5, align 4
  %325 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %322, i32 %323, i32 %324, i32 0)
  %326 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %327 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %331 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = shl i32 %329, %332
  %334 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %335 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %116
  %339 = load i32, i32* @MAP_PTI_MASK1, align 4
  br label %342

340:                                              ; preds = %116
  %341 = load i32, i32* @MAP_PTI_MASK0, align 4
  br label %342

342:                                              ; preds = %340, %338
  %343 = phi i32 [ %339, %338 ], [ %341, %340 ]
  %344 = or i32 %333, %343
  store i32 %344, i32* %4, align 4
  %345 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %346 = load i32, i32* @MAPA, align 4
  %347 = load i32, i32* %5, align 4
  %348 = load i32, i32* %4, align 4
  %349 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %345, i32 %346, i32 %347, i32 %348)
  %350 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %351 = load i32, i32* @MAPB, align 4
  %352 = load i32, i32* %5, align 4
  %353 = load i32, i32* %4, align 4
  %354 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %350, i32 %351, i32 %352, i32 %353)
  %355 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %356 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %355, i32 0, i32 4
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  store i32 %358, i32* %6, align 4
  %359 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %360 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %359, i32 0, i32 4
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 5
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 11
  %363 = load i32, i32* %362, align 4
  store i32 %363, i32* %4, align 4
  %364 = load i32, i32* %4, align 4
  %365 = shl i32 %364, 28
  %366 = load i32, i32* %6, align 4
  %367 = or i32 %365, %366
  store i32 %367, i32* %4, align 4
  %368 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %369 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = icmp ult i32 %370, 58368
  br i1 %371, label %372, label %376

372:                                              ; preds = %342
  %373 = load i32, i32* @CCCA_INTERPROM_0, align 4
  %374 = load i32, i32* %4, align 4
  %375 = or i32 %374, %373
  store i32 %375, i32* %4, align 4
  br label %386

376:                                              ; preds = %342
  %377 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %378 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = sub i32 %379, 57344
  %381 = lshr i32 %380, 10
  store i32 %381, i32* %11, align 4
  %382 = load i32, i32* %11, align 4
  %383 = shl i32 %382, 25
  %384 = load i32, i32* %4, align 4
  %385 = or i32 %384, %383
  store i32 %385, i32* %4, align 4
  br label %386

386:                                              ; preds = %376, %372
  %387 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %388 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %387, i32 0, i32 4
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @SNDRV_SFNT_SAMPLE_8BITS, align 4
  %392 = and i32 %390, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %398

394:                                              ; preds = %386
  %395 = load i32, i32* @CCCA_8BITSELECT, align 4
  %396 = load i32, i32* %4, align 4
  %397 = or i32 %396, %395
  store i32 %397, i32* %4, align 4
  br label %398

398:                                              ; preds = %394, %386
  %399 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %400 = load i32, i32* @CCCA, align 4
  %401 = load i32, i32* %5, align 4
  %402 = load i32, i32* %4, align 4
  %403 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %399, i32 %400, i32 %401, i32 %402)
  %404 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %405 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %404, i32 0, i32 3
  %406 = load i64, i64* %405, align 8
  %407 = trunc i64 %406 to i32
  %408 = shl i32 %407, 16
  store i32 %408, i32* %4, align 4
  %409 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %410 = load i32, i32* @VTFT, align 4
  %411 = load i32, i32* %5, align 4
  %412 = load i32, i32* %4, align 4
  %413 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %414 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 8
  %416 = or i32 %412, %415
  %417 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %409, i32 %410, i32 %411, i32 %416)
  %418 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %9, align 8
  %419 = load i32, i32* @CVCF, align 4
  %420 = load i32, i32* %5, align 4
  %421 = load i32, i32* %4, align 4
  %422 = or i32 %421, 65280
  %423 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %418, i32 %419, i32 %420, i32 %422)
  store i32 0, i32* %2, align 4
  br label %424

424:                                              ; preds = %398, %48, %36, %23
  %425 = load i32, i32* %2, align 4
  ret i32 %425
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @snd_emu10k1_memblk_map(%struct.snd_emu10k1*, %struct.snd_emu10k1_memblk*) #1

declare dso_local i32 @snd_emu10k1_memblk_offset(%struct.snd_emu10k1_memblk*) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @set_fmmod(%struct.snd_emu10k1*, %struct.snd_emux_voice*) #1

declare dso_local i32 @set_fm2frq2(%struct.snd_emu10k1*, %struct.snd_emux_voice*) #1

declare dso_local i32 @LIMITMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
