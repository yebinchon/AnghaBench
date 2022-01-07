; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_capture_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_pcm_hardware, i32, %struct.snd_card_asihpi_pcm* }
%struct.snd_pcm_hardware = type { i64, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.snd_card_asihpi_pcm = type { i32, %struct.snd_pcm_substream*, i32 }
%struct.snd_card_asihpi = type { i64, i64, i64, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"capture open adapter %d stream %d\0A\00", align 1
@HPI_ERROR_OBJ_ALREADY_OPEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@snd_card_asihpi_timer_function = common dso_local global i32 0, align 4
@snd_card_asihpi_runtime_free = common dso_local global i32 0, align 4
@BUFFER_BYTES_MAX = common dso_local global i64 0, align 8
@PERIOD_BYTES_MIN = common dso_local global i64 0, align 8
@PERIODS_MIN = common dso_local global i64 0, align 8
@SNDRV_PCM_INFO_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP_VALID = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_SYNC_START = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_card_asihpi_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_card_asihpi_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_card_asihpi*, align 8
  %6 = alloca %struct.snd_card_asihpi_pcm*, align 8
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
  store %struct.snd_card_asihpi* %14, %struct.snd_card_asihpi** %5, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.snd_card_asihpi_pcm* @kzalloc(i32 24, i32 %15)
  store %struct.snd_card_asihpi_pcm* %16, %struct.snd_card_asihpi_pcm** %6, align 8
  %17 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %6, align 8
  %18 = icmp eq %struct.snd_card_asihpi_pcm* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %190

22:                                               ; preds = %1
  %23 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %5, align 8
  %24 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %23, i32 0, i32 6
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @snd_printdd(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %5, align 8
  %35 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %34, i32 0, i32 6
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %6, align 8
  %45 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %44, i32 0, i32 0
  %46 = call i32 @hpi_instream_open(i32 %40, i32 %43, i32* %45)
  %47 = call i32 @hpi_handle_error(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %22
  %51 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %6, align 8
  %52 = call i32 @kfree(%struct.snd_card_asihpi_pcm* %51)
  br label %53

53:                                               ; preds = %50, %22
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @HPI_ERROR_OBJ_ALREADY_OPEN, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %190

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %190

66:                                               ; preds = %60
  %67 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %6, align 8
  %68 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %67, i32 0, i32 2
  %69 = load i32, i32* @snd_card_asihpi_timer_function, align 4
  %70 = call i32 @timer_setup(i32* %68, i32 %69, i32 0)
  %71 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %72 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %6, align 8
  %73 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %72, i32 0, i32 1
  store %struct.snd_pcm_substream* %71, %struct.snd_pcm_substream** %73, align 8
  %74 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %6, align 8
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 2
  store %struct.snd_card_asihpi_pcm* %74, %struct.snd_card_asihpi_pcm** %76, align 8
  %77 = load i32, i32* @snd_card_asihpi_runtime_free, align 4
  %78 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = call i32 @memset(%struct.snd_pcm_hardware* %7, i32 0, i32 56)
  %81 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %5, align 8
  %82 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %81, i32 0, i32 6
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %66
  %88 = load i64, i64* @BUFFER_BYTES_MAX, align 8
  %89 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 0
  store i64 %88, i64* %89, align 8
  %90 = load i64, i64* @PERIOD_BYTES_MIN, align 8
  %91 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 1
  store i64 %90, i64* %91, align 8
  %92 = load i64, i64* @BUFFER_BYTES_MAX, align 8
  %93 = load i64, i64* @PERIODS_MIN, align 8
  %94 = udiv i64 %92, %93
  %95 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 2
  store i64 %94, i64* %95, align 8
  %96 = load i64, i64* @PERIODS_MIN, align 8
  %97 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 3
  store i64 %96, i64* %97, align 8
  %98 = load i64, i64* @BUFFER_BYTES_MAX, align 8
  %99 = load i64, i64* @PERIOD_BYTES_MIN, align 8
  %100 = udiv i64 %98, %99
  %101 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 4
  store i64 %100, i64* %101, align 8
  br label %124

102:                                              ; preds = %66
  %103 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %5, align 8
  %104 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %5, align 8
  %107 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = mul i64 %105, %108
  store i64 %109, i64* %9, align 8
  %110 = load i64, i64* @BUFFER_BYTES_MAX, align 8
  %111 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 0
  store i64 %110, i64* %111, align 8
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 1
  store i64 %112, i64* %113, align 8
  %114 = load i64, i64* @BUFFER_BYTES_MAX, align 8
  %115 = load i64, i64* @PERIODS_MIN, align 8
  %116 = udiv i64 %114, %115
  %117 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 2
  store i64 %116, i64* %117, align 8
  %118 = load i64, i64* @PERIODS_MIN, align 8
  %119 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 3
  store i64 %118, i64* %119, align 8
  %120 = load i64, i64* @BUFFER_BYTES_MAX, align 8
  %121 = load i64, i64* %9, align 8
  %122 = udiv i64 %120, %121
  %123 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 4
  store i64 %122, i64* %123, align 8
  br label %124

124:                                              ; preds = %102, %87
  %125 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %5, align 8
  %126 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 8
  store i32 %127, i32* %128, align 4
  %129 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %5, align 8
  %130 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 7
  store i32 %131, i32* %132, align 8
  %133 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %5, align 8
  %134 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %6, align 8
  %135 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @snd_card_asihpi_capture_formats(%struct.snd_card_asihpi* %133, i32 %136)
  %138 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 6
  store i32 %137, i32* %138, align 4
  %139 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %5, align 8
  %140 = call i32 @snd_card_asihpi_pcm_samplerates(%struct.snd_card_asihpi* %139, %struct.snd_pcm_hardware* %7)
  %141 = load i32, i32* @SNDRV_PCM_INFO_INTERLEAVED, align 4
  %142 = load i32, i32* @SNDRV_PCM_INFO_MMAP, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @SNDRV_PCM_INFO_MMAP_VALID, align 4
  %145 = or i32 %143, %144
  %146 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 5
  store i32 %145, i32* %146, align 8
  %147 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %5, align 8
  %148 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %124
  %152 = load i32, i32* @SNDRV_PCM_INFO_SYNC_START, align 4
  %153 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %7, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %152
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %151, %124
  %157 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %158 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %157, i32 0, i32 0
  %159 = bitcast %struct.snd_pcm_hardware* %158 to i8*
  %160 = bitcast %struct.snd_pcm_hardware* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 56, i1 false)
  %161 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %5, align 8
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
  br label %190

174:                                              ; preds = %169
  %175 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %176 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %177 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %5, align 8
  %178 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %175, i32 0, i32 %176, i64 %179)
  %181 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %182 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %183 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %5, align 8
  %184 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* @UINT_MAX, align 4
  %187 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %181, i32 %182, i64 %185, i32 %186)
  %188 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %189 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %188)
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %174, %172, %63, %57, %19
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.snd_card_asihpi* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_card_asihpi_pcm* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_printdd(i8*, i32, i32) #1

declare dso_local i32 @hpi_handle_error(i32) #1

declare dso_local i32 @hpi_instream_open(i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.snd_card_asihpi_pcm*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.snd_pcm_hardware*, i32, i32) #1

declare dso_local i32 @snd_card_asihpi_capture_formats(%struct.snd_card_asihpi*, i32) #1

declare dso_local i32 @snd_card_asihpi_pcm_samplerates(%struct.snd_card_asihpi*, %struct.snd_pcm_hardware*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_hw_constraint_pow2(%struct.snd_pcm_runtime*, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i64) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i64, i32) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
