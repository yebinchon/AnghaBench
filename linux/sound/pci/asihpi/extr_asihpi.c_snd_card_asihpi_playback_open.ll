; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_playback_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_pcm_hardware, i32, %struct.snd_card_asihpi_pcm* }
%struct.snd_pcm_hardware = type { i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.snd_card_asihpi_pcm = type { i32, %struct.snd_pcm_substream*, i32 }
%struct.snd_card_asihpi = type { i64, i64, i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HPI_ERROR_OBJ_ALREADY_OPEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@snd_card_asihpi_timer_function = common dso_local global i32 0, align 4
@snd_card_asihpi_runtime_free = common dso_local global i32 0, align 4
@BUFFER_BYTES_MAX = common dso_local global i64 0, align 8
@PERIOD_BYTES_MIN = common dso_local global i64 0, align 8
@PERIODS_MIN = common dso_local global i64 0, align 8
@SNDRV_PCM_INFO_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_DOUBLE = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_BATCH = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_BLOCK_TRANSFER = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_PAUSE = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP_VALID = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_SYNC_START = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"playback open\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_card_asihpi_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_card_asihpi_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_card_asihpi_pcm*, align 8
  %6 = alloca %struct.snd_card_asihpi*, align 8
  %7 = alloca %struct.snd_pcm_hardware, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = call %struct.snd_card_asihpi* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %13)
  store %struct.snd_card_asihpi* %14, %struct.snd_card_asihpi** %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.snd_card_asihpi_pcm* @kzalloc(i32 24, i32 %15)
  store %struct.snd_card_asihpi_pcm* %16, %struct.snd_card_asihpi_pcm** %5, align 8
  %17 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %5, align 8
  %18 = icmp eq %struct.snd_card_asihpi_pcm* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %189

22:                                               ; preds = %1
  %23 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %6, align 8
  %24 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %23, i32 0, i32 5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %5, align 8
  %34 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %33, i32 0, i32 0
  %35 = call i32 @hpi_outstream_open(i32 %29, i32 %32, i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @hpi_handle_error(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %22
  %41 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %5, align 8
  %42 = call i32 @kfree(%struct.snd_card_asihpi_pcm* %41)
  br label %43

43:                                               ; preds = %40, %22
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @HPI_ERROR_OBJ_ALREADY_OPEN, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %189

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %189

56:                                               ; preds = %50
  %57 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %5, align 8
  %58 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %57, i32 0, i32 2
  %59 = load i32, i32* @snd_card_asihpi_timer_function, align 4
  %60 = call i32 @timer_setup(i32* %58, i32 %59, i32 0)
  %61 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %62 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %5, align 8
  %63 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %62, i32 0, i32 1
  store %struct.snd_pcm_substream* %61, %struct.snd_pcm_substream** %63, align 8
  %64 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %5, align 8
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %65, i32 0, i32 2
  store %struct.snd_card_asihpi_pcm* %64, %struct.snd_card_asihpi_pcm** %66, align 8
  %67 = load i32, i32* @snd_card_asihpi_runtime_free, align 4
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = call i32 @memset(%struct.snd_pcm_hardware* %7, i32 0, i32 64)
  %71 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %6, align 8
  %72 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %71, i32 0, i32 5
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %56
  %78 = load i64, i64* @BUFFER_BYTES_MAX, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 0
  store i64 %78, i64* %79, align 8
  %80 = load i64, i64* @PERIOD_BYTES_MIN, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 1
  store i64 %80, i64* %81, align 8
  %82 = load i64, i64* @BUFFER_BYTES_MAX, align 8
  %83 = load i64, i64* @PERIODS_MIN, align 8
  %84 = udiv i64 %82, %83
  %85 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 2
  store i64 %84, i64* %85, align 8
  %86 = load i64, i64* @PERIODS_MIN, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 3
  store i64 %86, i64* %87, align 8
  %88 = load i64, i64* @BUFFER_BYTES_MAX, align 8
  %89 = load i64, i64* @PERIOD_BYTES_MIN, align 8
  %90 = udiv i64 %88, %89
  %91 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 4
  store i64 %90, i64* %91, align 8
  br label %114

92:                                               ; preds = %56
  %93 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %6, align 8
  %94 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %6, align 8
  %97 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = mul i64 %95, %98
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* @BUFFER_BYTES_MAX, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 0
  store i64 %100, i64* %101, align 8
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 1
  store i64 %102, i64* %103, align 8
  %104 = load i64, i64* @BUFFER_BYTES_MAX, align 8
  %105 = load i64, i64* @PERIODS_MIN, align 8
  %106 = udiv i64 %104, %105
  %107 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 2
  store i64 %106, i64* %107, align 8
  %108 = load i64, i64* @PERIODS_MIN, align 8
  %109 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 3
  store i64 %108, i64* %109, align 8
  %110 = load i64, i64* @BUFFER_BYTES_MAX, align 8
  %111 = load i64, i64* %9, align 8
  %112 = udiv i64 %110, %111
  %113 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 4
  store i64 %112, i64* %113, align 8
  br label %114

114:                                              ; preds = %92, %77
  %115 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %6, align 8
  %116 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 5
  store i64 %117, i64* %118, align 8
  %119 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %6, align 8
  %120 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 8
  store i32 %121, i32* %122, align 8
  %123 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %6, align 8
  %124 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %5, align 8
  %125 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @snd_card_asihpi_playback_formats(%struct.snd_card_asihpi* %123, i32 %126)
  %128 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 7
  store i32 %127, i32* %128, align 4
  %129 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %6, align 8
  %130 = call i32 @snd_card_asihpi_pcm_samplerates(%struct.snd_card_asihpi* %129, %struct.snd_pcm_hardware* %7)
  %131 = load i32, i32* @SNDRV_PCM_INFO_INTERLEAVED, align 4
  %132 = load i32, i32* @SNDRV_PCM_INFO_DOUBLE, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @SNDRV_PCM_INFO_BATCH, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @SNDRV_PCM_INFO_BLOCK_TRANSFER, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @SNDRV_PCM_INFO_PAUSE, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @SNDRV_PCM_INFO_MMAP, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @SNDRV_PCM_INFO_MMAP_VALID, align 4
  %143 = or i32 %141, %142
  %144 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 6
  store i32 %143, i32* %144, align 8
  %145 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %6, align 8
  %146 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %114
  %150 = load i32, i32* @SNDRV_PCM_INFO_SYNC_START, align 4
  %151 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %150
  store i32 %153, i32* %151, align 8
  %154 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %155 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %154)
  br label %156

156:                                              ; preds = %149, %114
  %157 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %158 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %157, i32 0, i32 0
  %159 = bitcast %struct.snd_pcm_hardware* %158 to i8*
  %160 = bitcast %struct.snd_pcm_hardware* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 64, i1 false)
  %161 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %6, align 8
  %162 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %156
  %166 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %167 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %168 = call i32 @snd_pcm_hw_constraint_pow2(%struct.snd_pcm_runtime* %166, i32 0, i32 %167)
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %165, %156
  %170 = load i32, i32* %8, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %2, align 4
  br label %189

174:                                              ; preds = %169
  %175 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %176 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %177 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %6, align 8
  %178 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %175, i32 0, i32 %176, i64 %179)
  %181 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %182 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %183 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %6, align 8
  %184 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* @UINT_MAX, align 4
  %187 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %181, i32 %182, i64 %185, i32 %186)
  %188 = call i32 @snd_printdd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %174, %172, %53, %47, %19
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.snd_card_asihpi* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_card_asihpi_pcm* @kzalloc(i32, i32) #1

declare dso_local i32 @hpi_outstream_open(i32, i32, i32*) #1

declare dso_local i32 @hpi_handle_error(i32) #1

declare dso_local i32 @kfree(%struct.snd_card_asihpi_pcm*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.snd_pcm_hardware*, i32, i32) #1

declare dso_local i32 @snd_card_asihpi_playback_formats(%struct.snd_card_asihpi*, i32) #1

declare dso_local i32 @snd_card_asihpi_pcm_samplerates(%struct.snd_card_asihpi*, %struct.snd_pcm_hardware*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_hw_constraint_pow2(%struct.snd_pcm_runtime*, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i64) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i64, i32) #1

declare dso_local i32 @snd_printdd(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
