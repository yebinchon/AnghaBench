; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_spdif_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_spdif_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, %struct.snd_trident_voice* }
%struct.snd_trident_voice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i8*, i8*, %struct.TYPE_2__*, %struct.snd_trident_voice* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_trident = type { i64, i32, i32, i32, %struct.snd_trident_pcm_mixer* }
%struct.snd_trident_pcm_mixer = type { i32, i32, i32, i32 }

@TRIDENT_DEVICE_ID_SI7018 = common dso_local global i64 0, align 8
@NX_SPESO = common dso_local global i64 0, align 8
@NX_SPLBA = common dso_local global i64 0, align 8
@NX_SPCTRL_SPCSO = common dso_local global i64 0, align 8
@NX_SPCSTATUS = common dso_local global i64 0, align 8
@SI_SPDIF_CS = common dso_local global i64 0, align 8
@T4D_LFO_GC_CIR = common dso_local global i64 0, align 8
@SI_SERIAL_INTF_CTRL = common dso_local global i64 0, align 8
@SPDIF_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_trident_spdif_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_spdif_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_trident*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_trident_voice*, align 8
  %6 = alloca %struct.snd_trident_voice*, align 8
  %7 = alloca %struct.snd_trident_pcm_mixer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = call %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_trident* %12, %struct.snd_trident** %3, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 1
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %4, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 4
  %18 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %17, align 8
  store %struct.snd_trident_voice* %18, %struct.snd_trident_voice** %5, align 8
  %19 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %20 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %19, i32 0, i32 23
  %21 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %20, align 8
  store %struct.snd_trident_voice* %21, %struct.snd_trident_voice** %6, align 8
  %22 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %23 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %22, i32 0, i32 4
  %24 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %23, align 8
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %24, i64 %27
  store %struct.snd_trident_pcm_mixer* %28, %struct.snd_trident_pcm_mixer** %7, align 8
  %29 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %30 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %29, i32 0, i32 3
  %31 = call i32 @spin_lock_irq(i32* %30)
  %32 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %33 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TRIDENT_DEVICE_ID_SI7018, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %181

37:                                               ; preds = %1
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @snd_trident_convert_rate(i32 %40)
  %42 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %43 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @snd_trident_spurious_threshold(i32 %46, i32 %49)
  %51 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %52 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %51, i32 0, i32 21
  store i8* %50, i8** %52, align 8
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %9, align 4
  %56 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %57 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %56, i32 0, i32 22
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = icmp ne %struct.TYPE_2__* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %37
  %61 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %62 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %61, i32 0, i32 22
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %67 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %72

68:                                               ; preds = %37
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %71 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %60
  %73 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %74 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %76 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %75, i32 0, i32 3
  store i32 1, i32* %76, align 4
  %77 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %81 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %83 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %86 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %92 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %93, 2
  %95 = add nsw i32 %94, 6
  %96 = sub nsw i32 %95, 1
  %97 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %98 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  %99 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %100 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %99, i32 0, i32 6
  store i32 %96, i32* %100, align 8
  %101 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %102 = call i8* @snd_trident_control_mode(%struct.snd_pcm_substream* %101)
  %103 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %104 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %103, i32 0, i32 20
  store i8* %102, i8** %104, align 8
  %105 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %106 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %105, i32 0, i32 8
  store i32 3, i32* %106, align 8
  %107 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %108 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %107, i32 0, i32 9
  store i32 127, i32* %108, align 4
  %109 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %110 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %109, i32 0, i32 10
  store i32 127, i32* %110, align 8
  %111 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %112 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %111, i32 0, i32 11
  store i32 1, i32* %112, align 4
  %113 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %114 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %113, i32 0, i32 12
  store i32 127, i32* %114, align 8
  %115 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %116 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %115, i32 0, i32 13
  store i32 1023, i32* %116, align 4
  %117 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %118 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %117, i32 0, i32 19
  store i64 0, i64* %118, align 8
  %119 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %120 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %119, i32 0, i32 14
  store i32 0, i32* %120, align 8
  %121 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %122 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %121, i32 0, i32 18
  store i64 0, i64* %122, align 8
  %123 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %124 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %123, i32 0, i32 17
  store i64 0, i64* %124, align 8
  %125 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %126 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %125, i32 0, i32 15
  store i32 0, i32* %126, align 4
  %127 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %128 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %129 = call i32 @snd_trident_write_voice_regs(%struct.snd_trident* %127, %struct.snd_trident_voice* %128)
  %130 = load i32, i32* %8, align 4
  %131 = and i32 %130, 65535
  %132 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %133 = load i64, i64* @NX_SPESO, align 8
  %134 = call i32 @TRID_REG(%struct.snd_trident* %132, i64 %133)
  %135 = call i32 @outw(i32 %131, i32 %134)
  %136 = load i32, i32* %8, align 4
  %137 = lshr i32 %136, 16
  %138 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %139 = load i64, i64* @NX_SPESO, align 8
  %140 = add nsw i64 %139, 2
  %141 = call i32 @TRID_REG(%struct.snd_trident* %138, i64 %140)
  %142 = call i32 @outb(i32 %137, i32 %141)
  %143 = load i32, i32* %9, align 4
  %144 = and i32 %143, -4
  %145 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %146 = load i64, i64* @NX_SPLBA, align 8
  %147 = call i32 @TRID_REG(%struct.snd_trident* %145, i64 %146)
  %148 = call i32 @outl(i32 %144, i32 %147)
  %149 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %150 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %149, i32 0, i32 14
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, 65535
  %153 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %154 = load i64, i64* @NX_SPCTRL_SPCSO, align 8
  %155 = call i32 @TRID_REG(%struct.snd_trident* %153, i64 %154)
  %156 = call i32 @outw(i32 %152, i32 %155)
  %157 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %158 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %157, i32 0, i32 14
  %159 = load i32, i32* %158, align 8
  %160 = ashr i32 %159, 16
  %161 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %162 = load i64, i64* @NX_SPCTRL_SPCSO, align 8
  %163 = add nsw i64 %162, 2
  %164 = call i32 @TRID_REG(%struct.snd_trident* %161, i64 %163)
  %165 = call i32 @outb(i32 %160, i32 %164)
  %166 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %167 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %170 = load i64, i64* @NX_SPCTRL_SPCSO, align 8
  %171 = add nsw i64 %170, 3
  %172 = call i32 @TRID_REG(%struct.snd_trident* %169, i64 %171)
  %173 = call i32 @outb(i32 %168, i32 %172)
  %174 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %175 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %178 = load i64, i64* @NX_SPCSTATUS, align 8
  %179 = call i32 @TRID_REG(%struct.snd_trident* %177, i64 %178)
  %180 = call i32 @outl(i32 %176, i32 %179)
  br label %364

181:                                              ; preds = %1
  %182 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %183 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %182, i32 0, i32 0
  store i32 2048, i32* %183, align 8
  %184 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %185 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i8* @snd_trident_spurious_threshold(i32 48000, i32 %186)
  %188 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %189 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %188, i32 0, i32 21
  store i8* %187, i8** %189, align 8
  %190 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %191 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %190, i32 0, i32 22
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = icmp ne %struct.TYPE_2__* %192, null
  br i1 %193, label %194, label %202

194:                                              ; preds = %181
  %195 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %196 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %195, i32 0, i32 22
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %201 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  br label %208

202:                                              ; preds = %181
  %203 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %204 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %207 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  br label %208

208:                                              ; preds = %202, %194
  %209 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %210 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %209, i32 0, i32 14
  store i32 0, i32* %210, align 8
  %211 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %212 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = sub nsw i32 %213, 1
  %215 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %216 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %215, i32 0, i32 6
  store i32 %214, i32* %216, align 8
  %217 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %218 = call i8* @snd_trident_control_mode(%struct.snd_pcm_substream* %217)
  %219 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %220 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %219, i32 0, i32 20
  store i8* %218, i8** %220, align 8
  %221 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %222 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %221, i32 0, i32 8
  store i32 3, i32* %222, align 8
  %223 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %224 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %223, i32 0, i32 11
  store i32 1, i32* %224, align 4
  %225 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %226 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %225, i32 0, i32 19
  store i64 0, i64* %226, align 8
  %227 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %228 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %227, i32 0, i32 18
  store i64 0, i64* %228, align 8
  %229 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %230 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %229, i32 0, i32 17
  store i64 0, i64* %230, align 8
  %231 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %7, align 8
  %232 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %235 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %234, i32 0, i32 13
  store i32 %233, i32* %235, align 4
  %236 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %7, align 8
  %237 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %240 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %239, i32 0, i32 9
  store i32 %238, i32* %240, align 4
  %241 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %7, align 8
  %242 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %245 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %244, i32 0, i32 10
  store i32 %243, i32* %245, align 8
  %246 = load %struct.snd_trident_pcm_mixer*, %struct.snd_trident_pcm_mixer** %7, align 8
  %247 = getelementptr inbounds %struct.snd_trident_pcm_mixer, %struct.snd_trident_pcm_mixer* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %250 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %249, i32 0, i32 12
  store i32 %248, i32* %250, align 8
  %251 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %252 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %251, i32 0, i32 15
  store i32 23552, i32* %252, align 4
  %253 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %254 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %255 = call i32 @snd_trident_write_voice_regs(%struct.snd_trident* %253, %struct.snd_trident_voice* %254)
  %256 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %257 = icmp ne %struct.snd_trident_voice* %256, null
  br i1 %257, label %258, label %333

258:                                              ; preds = %208
  %259 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %260 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %263 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 8
  %264 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %265 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %264, i32 0, i32 21
  %266 = load i8*, i8** %265, align 8
  %267 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %268 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %267, i32 0, i32 21
  store i8* %266, i8** %268, align 8
  %269 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %270 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %273 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  %274 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %275 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %274, i32 0, i32 14
  store i32 0, i32* %275, align 8
  %276 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %277 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = mul nsw i32 %278, 2
  %280 = add nsw i32 %279, 4
  %281 = sub nsw i32 %280, 1
  %282 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %283 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %282, i32 0, i32 6
  store i32 %281, i32* %283, align 8
  %284 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %285 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %284, i32 0, i32 20
  %286 = load i8*, i8** %285, align 8
  %287 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %288 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %287, i32 0, i32 20
  store i8* %286, i8** %288, align 8
  %289 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %290 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %289, i32 0, i32 8
  store i32 3, i32* %290, align 8
  %291 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %292 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @TRIDENT_DEVICE_ID_SI7018, align 8
  %295 = icmp eq i64 %293, %294
  %296 = zext i1 %295 to i64
  %297 = select i1 %295, i32 0, i32 1
  %298 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %299 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %298, i32 0, i32 11
  store i32 %297, i32* %299, align 4
  %300 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %301 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %300, i32 0, i32 19
  store i64 0, i64* %301, align 8
  %302 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %303 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %302, i32 0, i32 18
  store i64 0, i64* %303, align 8
  %304 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %305 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %304, i32 0, i32 17
  store i64 0, i64* %305, align 8
  %306 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %307 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %306, i32 0, i32 13
  store i32 1023, i32* %307, align 4
  %308 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %309 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %308, i32 0, i32 10
  store i32 127, i32* %309, align 8
  %310 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %311 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %310, i32 0, i32 9
  store i32 127, i32* %311, align 4
  %312 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %313 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %312, i32 0, i32 12
  store i32 127, i32* %313, align 8
  %314 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %315 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %314, i32 0, i32 15
  store i32 0, i32* %315, align 4
  %316 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %317 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %318 = call i32 @snd_trident_write_voice_regs(%struct.snd_trident* %316, %struct.snd_trident_voice* %317)
  %319 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %320 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %319, i32 0, i32 16
  store i32 1, i32* %320, align 8
  %321 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %322 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %325 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %324, i32 0, i32 4
  store i32 %323, i32* %325, align 8
  %326 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %327 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = mul nsw i32 %328, 2
  %330 = sub nsw i32 %329, 1
  %331 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %332 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %331, i32 0, i32 6
  store i32 %330, i32* %332, align 8
  br label %333

333:                                              ; preds = %258, %208
  %334 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %335 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %338 = load i64, i64* @SI_SPDIF_CS, align 8
  %339 = call i32 @TRID_REG(%struct.snd_trident* %337, i64 %338)
  %340 = call i32 @outl(i32 %336, i32 %339)
  %341 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %342 = load i64, i64* @T4D_LFO_GC_CIR, align 8
  %343 = call i32 @TRID_REG(%struct.snd_trident* %341, i64 %342)
  %344 = call i32 @inl(i32 %343)
  store i32 %344, i32* %10, align 4
  %345 = load i32, i32* %10, align 4
  %346 = and i32 %345, -524289
  store i32 %346, i32* %10, align 4
  %347 = load i32, i32* %10, align 4
  %348 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %349 = load i64, i64* @T4D_LFO_GC_CIR, align 8
  %350 = call i32 @TRID_REG(%struct.snd_trident* %348, i64 %349)
  %351 = call i32 @outl(i32 %347, i32 %350)
  %352 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %353 = load i64, i64* @SI_SERIAL_INTF_CTRL, align 8
  %354 = call i32 @TRID_REG(%struct.snd_trident* %352, i64 %353)
  %355 = call i32 @inl(i32 %354)
  store i32 %355, i32* %10, align 4
  %356 = load i32, i32* @SPDIF_EN, align 4
  %357 = load i32, i32* %10, align 4
  %358 = or i32 %357, %356
  store i32 %358, i32* %10, align 4
  %359 = load i32, i32* %10, align 4
  %360 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %361 = load i64, i64* @SI_SERIAL_INTF_CTRL, align 8
  %362 = call i32 @TRID_REG(%struct.snd_trident* %360, i64 %361)
  %363 = call i32 @outl(i32 %359, i32 %362)
  br label %364

364:                                              ; preds = %333, %72
  %365 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %366 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %365, i32 0, i32 3
  %367 = call i32 @spin_unlock_irq(i32* %366)
  ret i32 0
}

declare dso_local %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_trident_convert_rate(i32) #1

declare dso_local i8* @snd_trident_spurious_threshold(i32, i32) #1

declare dso_local i8* @snd_trident_control_mode(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_trident_write_voice_regs(%struct.snd_trident*, %struct.snd_trident_voice*) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
