; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_sync.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_oss_file = type { %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime*, i32, i32 }
%struct.snd_pcm_runtime = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_RW_INTERLEAVED = common dso_local global i64 0, align 8
@SNDRV_PCM_ACCESS_RW_NONINTERLEAVED = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@SNDRV_PCM_IOCTL_DRAIN = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SNDRV_PCM_IOCTL_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_oss_file*)* @snd_pcm_oss_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_sync(%struct.snd_pcm_oss_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_oss_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.snd_pcm_oss_file* %0, %struct.snd_pcm_oss_file** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %12, align 8
  %14 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, i64 %14
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %15, align 8
  store %struct.snd_pcm_substream* %16, %struct.snd_pcm_substream** %6, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %18 = icmp ne %struct.snd_pcm_substream* %17, null
  br i1 %18, label %19, label %225

19:                                               ; preds = %1
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 1
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %21, align 8
  store %struct.snd_pcm_runtime* %22, %struct.snd_pcm_runtime** %7, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 3
  %25 = call i64 @atomic_read(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %193

28:                                               ; preds = %19
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %30 = call i32 @snd_pcm_oss_make_ready(%struct.snd_pcm_substream* %29)
  store i32 %30, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %267

34:                                               ; preds = %28
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 6
  %38 = call i32 @atomic_inc(i32* %37)
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 5
  %42 = call i64 @mutex_lock_interruptible(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %34
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 6
  %48 = call i32 @atomic_dec(i32* %47)
  %49 = load i32, i32* @ERESTARTSYS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %267

51:                                               ; preds = %34
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @snd_pcm_oss_format_from(i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @snd_pcm_format_physical_width(i32 %57)
  store i64 %58, i64* %9, align 8
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %104

64:                                               ; preds = %51
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %69, %73
  %75 = mul nsw i64 8, %74
  %76 = add nsw i64 %75, 7
  %77 = load i64, i64* %9, align 8
  %78 = udiv i64 %76, %77
  store i64 %78, i64* %10, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %84, %88
  %90 = trunc i64 %89 to i32
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @snd_pcm_format_set_silence(i32 %79, i32 %90, i64 %91)
  %93 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %94 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %95 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = call i32 @snd_pcm_oss_sync1(%struct.snd_pcm_substream* %93, i64 %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %64
  br label %179

103:                                              ; preds = %64
  br label %139

104:                                              ; preds = %51
  %105 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %138

110:                                              ; preds = %104
  %111 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %117 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %115, %119
  store i64 %120, i64* %10, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %123 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* %10, align 8
  %127 = mul i64 %126, 8
  %128 = load i64, i64* %9, align 8
  %129 = udiv i64 %127, %128
  %130 = call i32 @snd_pcm_format_set_silence(i32 %121, i32 %125, i64 %129)
  %131 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %132 = load i64, i64* %10, align 8
  %133 = call i32 @snd_pcm_oss_sync1(%struct.snd_pcm_substream* %131, i64 %132)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %110
  br label %179

137:                                              ; preds = %110
  br label %138

138:                                              ; preds = %137, %104
  br label %139

139:                                              ; preds = %138, %103
  %140 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %141 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %140, i32 0, i32 3
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %146 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = urem i64 %144, %147
  store i64 %148, i64* %10, align 8
  %149 = load i64, i64* %10, align 8
  %150 = icmp ugt i64 %149, 0
  br i1 %150, label %151, label %178

151:                                              ; preds = %139
  %152 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %153 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %10, align 8
  %156 = sub i64 %154, %155
  store i64 %156, i64* %10, align 8
  %157 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %158 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %151
  %163 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %164 = load i64, i64* %10, align 8
  %165 = call i32 @snd_pcm_lib_write(%struct.snd_pcm_substream* %163, i32* null, i64 %164)
  br label %177

166:                                              ; preds = %151
  %167 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %168 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @SNDRV_PCM_ACCESS_RW_NONINTERLEAVED, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  %173 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %174 = load i64, i64* %10, align 8
  %175 = call i32 @snd_pcm_lib_writev(%struct.snd_pcm_substream* %173, i32* null, i64 %174)
  br label %176

176:                                              ; preds = %172, %166
  br label %177

177:                                              ; preds = %176, %162
  br label %178

178:                                              ; preds = %177, %139
  br label %179

179:                                              ; preds = %178, %136, %102
  %180 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %181 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 5
  %183 = call i32 @mutex_unlock(i32* %182)
  %184 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %185 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 6
  %187 = call i32 @atomic_dec(i32* %186)
  %188 = load i32, i32* %4, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %179
  %191 = load i32, i32* %4, align 4
  store i32 %191, i32* %2, align 4
  br label %267

192:                                              ; preds = %179
  br label %193

193:                                              ; preds = %192, %27
  %194 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %195 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* @O_NONBLOCK, align 4
  %198 = xor i32 %197, -1
  %199 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %200 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = and i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %204 = load i32, i32* @SNDRV_PCM_IOCTL_DRAIN, align 4
  %205 = call i32 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream* %203, i32 %204, i32* null)
  store i32 %205, i32* %4, align 4
  %206 = load i32, i32* %5, align 4
  %207 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %208 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* %4, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %193
  %212 = load i32, i32* %4, align 4
  store i32 %212, i32* %2, align 4
  br label %267

213:                                              ; preds = %193
  %214 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %215 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 5
  %217 = call i32 @mutex_lock(i32* %216)
  %218 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %219 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 4
  store i32 1, i32* %220, align 8
  %221 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %222 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 5
  %224 = call i32 @mutex_unlock(i32* %223)
  br label %225

225:                                              ; preds = %213, %1
  %226 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %3, align 8
  %227 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %226, i32 0, i32 0
  %228 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %227, align 8
  %229 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %230 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %228, i64 %229
  %231 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %230, align 8
  store %struct.snd_pcm_substream* %231, %struct.snd_pcm_substream** %6, align 8
  %232 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %233 = icmp ne %struct.snd_pcm_substream* %232, null
  br i1 %233, label %234, label %266

234:                                              ; preds = %225
  %235 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %236 = call i32 @snd_pcm_oss_make_ready(%struct.snd_pcm_substream* %235)
  store i32 %236, i32* %4, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %234
  %239 = load i32, i32* %4, align 4
  store i32 %239, i32* %2, align 4
  br label %267

240:                                              ; preds = %234
  %241 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %242 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %241, i32 0, i32 1
  %243 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %242, align 8
  store %struct.snd_pcm_runtime* %243, %struct.snd_pcm_runtime** %7, align 8
  %244 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %245 = load i32, i32* @SNDRV_PCM_IOCTL_DROP, align 4
  %246 = call i32 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream* %244, i32 %245, i32* null)
  store i32 %246, i32* %4, align 4
  %247 = load i32, i32* %4, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %240
  %250 = load i32, i32* %4, align 4
  store i32 %250, i32* %2, align 4
  br label %267

251:                                              ; preds = %240
  %252 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %253 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 5
  %255 = call i32 @mutex_lock(i32* %254)
  %256 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %257 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  store i64 0, i64* %258, align 8
  %259 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %260 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 4
  store i32 1, i32* %261, align 8
  %262 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %263 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 5
  %265 = call i32 @mutex_unlock(i32* %264)
  br label %266

266:                                              ; preds = %251, %225
  store i32 0, i32* %2, align 4
  br label %267

267:                                              ; preds = %266, %249, %238, %211, %190, %44, %32
  %268 = load i32, i32* %2, align 4
  ret i32 %268
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @snd_pcm_oss_make_ready(%struct.snd_pcm_substream*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @snd_pcm_oss_format_from(i32) #1

declare dso_local i64 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @snd_pcm_format_set_silence(i32, i32, i64) #1

declare dso_local i32 @snd_pcm_oss_sync1(%struct.snd_pcm_substream*, i64) #1

declare dso_local i32 @snd_pcm_lib_write(%struct.snd_pcm_substream*, i32*, i64) #1

declare dso_local i32 @snd_pcm_lib_writev(%struct.snd_pcm_substream*, i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
