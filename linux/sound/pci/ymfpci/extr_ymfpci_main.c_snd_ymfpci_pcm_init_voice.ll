; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_pcm_init_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_pcm_init_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci_pcm = type { i32, i32, i32, i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.snd_ymfpci_voice** }
%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.snd_ymfpci_voice = type { i64, %struct.snd_ymfpci_playback_bank* }
%struct.snd_ymfpci_playback_bank = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32 }

@PCI_DEVICE_ID_YAMAHA_754 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ymfpci_pcm*, i32, %struct.snd_pcm_runtime*, i32)* @snd_ymfpci_pcm_init_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ymfpci_pcm_init_voice(%struct.snd_ymfpci_pcm* %0, i32 %1, %struct.snd_pcm_runtime* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_ymfpci_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_ymfpci_voice*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_ymfpci_playback_bank*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.snd_ymfpci_pcm* %0, %struct.snd_ymfpci_pcm** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_pcm_runtime* %2, %struct.snd_pcm_runtime** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %22 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %21, i32 0, i32 7
  %23 = load %struct.snd_ymfpci_voice**, %struct.snd_ymfpci_voice*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %23, i64 %25
  %27 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %26, align 8
  store %struct.snd_ymfpci_voice* %27, %struct.snd_ymfpci_voice** %9, align 8
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @snd_ymfpci_calc_delta(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snd_ymfpci_calc_lpfQ(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @snd_ymfpci_calc_lpfK(i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %9, align 8
  %41 = icmp ne %struct.snd_ymfpci_voice* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @snd_BUG_ON(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %4
  br label %339

47:                                               ; preds = %4
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 1, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %62

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %19, align 4
  br label %62

62:                                               ; preds = %53, %52
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %62
  %66 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %67 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %66, i32 0, i32 5
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %72 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %71, i32 0, i32 6
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 15
  %80 = call i8* @cpu_to_le32(i32 %79)
  store i8* %80, i8** %16, align 8
  %81 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %82 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %81, i32 0, i32 5
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %87 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %86, i32 0, i32 6
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 15
  %95 = call i8* @cpu_to_le32(i32 %94)
  store i8* %95, i8** %17, align 8
  br label %99

96:                                               ; preds = %62
  %97 = call i8* @cpu_to_le32(i32 1073741824)
  store i8* %97, i8** %16, align 8
  %98 = call i8* @cpu_to_le32(i32 1073741824)
  store i8* %98, i8** %17, align 8
  br label %99

99:                                               ; preds = %96, %65
  %100 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %101 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %100, i32 0, i32 5
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i64, i64* %20, align 8
  %105 = call i32 @spin_lock_irqsave(i32* %103, i64 %104)
  %106 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %107 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 2
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 65536, i32 0
  store i32 %111, i32* %10, align 4
  %112 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %113 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @snd_pcm_format_width(i32 %114)
  %116 = icmp eq i32 %115, 8
  br i1 %116, label %117, label %120

117:                                              ; preds = %99
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, -2147483648
  store i32 %119, i32* %10, align 4
  br label %173

120:                                              ; preds = %99
  %121 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %122 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %121, i32 0, i32 5
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @PCI_DEVICE_ID_YAMAHA_754, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %172

128:                                              ; preds = %120
  %129 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %130 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 44100
  br i1 %132, label %133, label %172

133:                                              ; preds = %128
  %134 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %135 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %172

138:                                              ; preds = %133
  %139 = load i32, i32* %6, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %172

141:                                              ; preds = %138
  %142 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %143 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %142, i32 0, i32 5
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %159, label %148

148:                                              ; preds = %141
  %149 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %150 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %149, i32 0, i32 5
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %9, align 8
  %156 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %154, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %148, %141
  %160 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %9, align 8
  %161 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %165 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %164, i32 0, i32 5
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  store i32 %163, i32* %167, align 8
  %168 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %169 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %168, i32 0, i32 0
  store i32 1, i32* %169, align 8
  %170 = load i32, i32* %10, align 4
  %171 = or i32 %170, 268435456
  store i32 %171, i32* %10, align 4
  br label %172

172:                                              ; preds = %159, %148, %138, %133, %128, %120
  br label %173

173:                                              ; preds = %172, %117
  %174 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %175 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %174, i32 0, i32 5
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %9, align 8
  %181 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %179, %182
  br i1 %183, label %184, label %195

184:                                              ; preds = %173
  %185 = load i32, i32* %10, align 4
  %186 = and i32 %185, 268435456
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %184
  %189 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %190 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %189, i32 0, i32 5
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  store i32 -1, i32* %192, align 8
  %193 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %194 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %193, i32 0, i32 0
  store i32 0, i32* %194, align 8
  br label %195

195:                                              ; preds = %188, %184, %173
  %196 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %197 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 2
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = load i32, i32* %6, align 4
  %202 = and i32 %201, 1
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %200
  %205 = load i32, i32* %10, align 4
  %206 = or i32 %205, 1
  store i32 %206, i32* %10, align 4
  br label %207

207:                                              ; preds = %204, %200, %195
  %208 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %209 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %208, i32 0, i32 5
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 2
  %212 = load i64, i64* %20, align 8
  %213 = call i32 @spin_unlock_irqrestore(i32* %211, i64 %212)
  store i32 0, i32* %15, align 4
  br label %214

214:                                              ; preds = %336, %207
  %215 = load i32, i32* %15, align 4
  %216 = icmp ult i32 %215, 2
  br i1 %216, label %217, label %339

217:                                              ; preds = %214
  %218 = load %struct.snd_ymfpci_voice*, %struct.snd_ymfpci_voice** %9, align 8
  %219 = getelementptr inbounds %struct.snd_ymfpci_voice, %struct.snd_ymfpci_voice* %218, i32 0, i32 1
  %220 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %219, align 8
  %221 = load i32, i32* %15, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %220, i64 %222
  store %struct.snd_ymfpci_playback_bank* %223, %struct.snd_ymfpci_playback_bank** %14, align 8
  %224 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %225 = call i32 @memset(%struct.snd_ymfpci_playback_bank* %224, i32 0, i32 144)
  %226 = load i32, i32* %10, align 4
  %227 = call i8* @cpu_to_le32(i32 %226)
  %228 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %229 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %228, i32 0, i32 17
  store i8* %227, i8** %229, align 8
  %230 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %231 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = call i8* @cpu_to_le32(i32 %232)
  %234 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %235 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %234, i32 0, i32 16
  store i8* %233, i8** %235, align 8
  %236 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %237 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i8* @cpu_to_le32(i32 %238)
  %240 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %241 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %240, i32 0, i32 15
  store i8* %239, i8** %241, align 8
  %242 = load i32, i32* %12, align 4
  %243 = call i8* @cpu_to_le32(i32 %242)
  %244 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %245 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %244, i32 0, i32 14
  store i8* %243, i8** %245, align 8
  %246 = load i32, i32* %11, align 4
  %247 = call i8* @cpu_to_le32(i32 %246)
  %248 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %249 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %248, i32 0, i32 12
  store i8* %247, i8** %249, align 8
  %250 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %251 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %250, i32 0, i32 13
  store i8* %247, i8** %251, align 8
  %252 = load i32, i32* %13, align 4
  %253 = call i8* @cpu_to_le32(i32 %252)
  %254 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %255 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %254, i32 0, i32 10
  store i8* %253, i8** %255, align 8
  %256 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %257 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %256, i32 0, i32 11
  store i8* %253, i8** %257, align 8
  %258 = call i8* @cpu_to_le32(i32 1073741824)
  %259 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %260 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %259, i32 0, i32 8
  store i8* %258, i8** %260, align 8
  %261 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %262 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %261, i32 0, i32 9
  store i8* %258, i8** %262, align 8
  %263 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %264 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %286

267:                                              ; preds = %217
  %268 = load i32, i32* %18, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %267
  %271 = load i8*, i8** %16, align 8
  %272 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %273 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %272, i32 0, i32 6
  store i8* %271, i8** %273, align 8
  %274 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %275 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %274, i32 0, i32 7
  store i8* %271, i8** %275, align 8
  br label %276

276:                                              ; preds = %270, %267
  %277 = load i32, i32* %19, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %276
  %280 = load i8*, i8** %17, align 8
  %281 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %282 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %281, i32 0, i32 4
  store i8* %280, i8** %282, align 8
  %283 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %284 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %283, i32 0, i32 5
  store i8* %280, i8** %284, align 8
  br label %285

285:                                              ; preds = %279, %276
  br label %286

286:                                              ; preds = %285, %217
  %287 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %288 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %335

291:                                              ; preds = %286
  %292 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %293 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %315, label %296

296:                                              ; preds = %291
  %297 = load i32, i32* %18, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %305

299:                                              ; preds = %296
  %300 = load i8*, i8** %16, align 8
  %301 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %302 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %301, i32 0, i32 0
  store i8* %300, i8** %302, align 8
  %303 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %304 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %303, i32 0, i32 1
  store i8* %300, i8** %304, align 8
  br label %305

305:                                              ; preds = %299, %296
  %306 = load i32, i32* %19, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %305
  %309 = load i8*, i8** %17, align 8
  %310 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %311 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %310, i32 0, i32 2
  store i8* %309, i8** %311, align 8
  %312 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %313 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %312, i32 0, i32 3
  store i8* %309, i8** %313, align 8
  br label %314

314:                                              ; preds = %308, %305
  br label %334

315:                                              ; preds = %291
  %316 = load i32, i32* %18, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %324

318:                                              ; preds = %315
  %319 = load i8*, i8** %16, align 8
  %320 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %321 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %320, i32 0, i32 2
  store i8* %319, i8** %321, align 8
  %322 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %323 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %322, i32 0, i32 3
  store i8* %319, i8** %323, align 8
  br label %324

324:                                              ; preds = %318, %315
  %325 = load i32, i32* %19, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %324
  %328 = load i8*, i8** %17, align 8
  %329 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %330 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %329, i32 0, i32 0
  store i8* %328, i8** %330, align 8
  %331 = load %struct.snd_ymfpci_playback_bank*, %struct.snd_ymfpci_playback_bank** %14, align 8
  %332 = getelementptr inbounds %struct.snd_ymfpci_playback_bank, %struct.snd_ymfpci_playback_bank* %331, i32 0, i32 1
  store i8* %328, i8** %332, align 8
  br label %333

333:                                              ; preds = %327, %324
  br label %334

334:                                              ; preds = %333, %314
  br label %335

335:                                              ; preds = %334, %286
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %15, align 4
  %338 = add i32 %337, 1
  store i32 %338, i32* %15, align 4
  br label %214

339:                                              ; preds = %46, %214
  ret void
}

declare dso_local i32 @snd_ymfpci_calc_delta(i32) #1

declare dso_local i32 @snd_ymfpci_calc_lpfQ(i32) #1

declare dso_local i32 @snd_ymfpci_calc_lpfK(i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(%struct.snd_ymfpci_playback_bank*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
