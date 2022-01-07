; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme32.c_snd_rme32_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme32 = type { i32, i32, i32*, i32*, %struct.TYPE_6__*, i64, i64, i64, %struct.TYPE_7__*, i64, %struct.TYPE_7__*, i32, i64, %struct.pci_dev*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i32, i32, %struct.rme32* }
%struct.pci_dev = type { i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"RME32\00", align 1
@RME32_IO_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"unable to remap memory region 0x%lx-0x%lx\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@snd_rme32_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"unable to grab IRQ %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Digi32 IEC958\00", align 1
@snd_rme32_free_spdif_pcm = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_rme32_playback_spdif_fd_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_rme32_capture_spdif_fd_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_CONTINUOUS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RME32_MID_BUFFER_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_JOINT_DUPLEX = common dso_local global i8* null, align 8
@snd_rme32_playback_spdif_ops = common dso_local global i32 0, align 4
@snd_rme32_capture_spdif_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_HALF_DUPLEX = common dso_local global i8* null, align 8
@PCI_DEVICE_ID_RME_DIGI32 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_RME_DIGI32_PRO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"Digi32 ADAT\00", align 1
@snd_rme32_free_adat_pcm = common dso_local global i32 0, align 4
@snd_rme32_playback_adat_fd_ops = common dso_local global i32 0, align 4
@snd_rme32_capture_adat_fd_ops = common dso_local global i32 0, align 4
@snd_rme32_playback_adat_ops = common dso_local global i32 0, align 4
@snd_rme32_capture_adat_ops = common dso_local global i32 0, align 4
@RME32_IO_RESET_POS = common dso_local global i64 0, align 8
@RME32_WCR_SEL = common dso_local global i32 0, align 4
@RME32_WCR_INP_0 = common dso_local global i32 0, align 4
@RME32_WCR_MUTE = common dso_local global i32 0, align 4
@RME32_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rme32*)* @snd_rme32_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme32_create(%struct.rme32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rme32*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.rme32* %0, %struct.rme32** %3, align 8
  %6 = load %struct.rme32*, %struct.rme32** %3, align 8
  %7 = getelementptr inbounds %struct.rme32, %struct.rme32* %6, i32 0, i32 13
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.rme32*, %struct.rme32** %3, align 8
  %10 = getelementptr inbounds %struct.rme32, %struct.rme32* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  %11 = load %struct.rme32*, %struct.rme32** %3, align 8
  %12 = getelementptr inbounds %struct.rme32, %struct.rme32* %11, i32 0, i32 14
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @pci_enable_device(%struct.pci_dev* %14)
  store i32 %15, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %297

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32 @pci_request_regions(%struct.pci_dev* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %297

25:                                               ; preds = %19
  %26 = load %struct.rme32*, %struct.rme32** %3, align 8
  %27 = getelementptr inbounds %struct.rme32, %struct.rme32* %26, i32 0, i32 13
  %28 = load %struct.pci_dev*, %struct.pci_dev** %27, align 8
  %29 = call i64 @pci_resource_start(%struct.pci_dev* %28, i32 0)
  %30 = load %struct.rme32*, %struct.rme32** %3, align 8
  %31 = getelementptr inbounds %struct.rme32, %struct.rme32* %30, i32 0, i32 12
  store i64 %29, i64* %31, align 8
  %32 = load %struct.rme32*, %struct.rme32** %3, align 8
  %33 = getelementptr inbounds %struct.rme32, %struct.rme32* %32, i32 0, i32 12
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RME32_IO_SIZE, align 8
  %36 = call i64 @ioremap_nocache(i64 %34, i64 %35)
  %37 = load %struct.rme32*, %struct.rme32** %3, align 8
  %38 = getelementptr inbounds %struct.rme32, %struct.rme32* %37, i32 0, i32 5
  store i64 %36, i64* %38, align 8
  %39 = load %struct.rme32*, %struct.rme32** %3, align 8
  %40 = getelementptr inbounds %struct.rme32, %struct.rme32* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %25
  %44 = load %struct.rme32*, %struct.rme32** %3, align 8
  %45 = getelementptr inbounds %struct.rme32, %struct.rme32* %44, i32 0, i32 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rme32*, %struct.rme32** %3, align 8
  %50 = getelementptr inbounds %struct.rme32, %struct.rme32* %49, i32 0, i32 12
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.rme32*, %struct.rme32** %3, align 8
  %54 = getelementptr inbounds %struct.rme32, %struct.rme32* %53, i32 0, i32 12
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RME32_IO_SIZE, align 8
  %57 = add nsw i64 %55, %56
  %58 = sub nsw i64 %57, 1
  %59 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %52, i64 %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %297

62:                                               ; preds = %25
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @snd_rme32_interrupt, align 4
  %67 = load i32, i32* @IRQF_SHARED, align 4
  %68 = load i32, i32* @KBUILD_MODNAME, align 4
  %69 = load %struct.rme32*, %struct.rme32** %3, align 8
  %70 = call i64 @request_irq(i32 %65, i32 %66, i32 %67, i32 %68, %struct.rme32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %62
  %73 = load %struct.rme32*, %struct.rme32** %3, align 8
  %74 = getelementptr inbounds %struct.rme32, %struct.rme32* %73, i32 0, i32 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %297

84:                                               ; preds = %62
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.rme32*, %struct.rme32** %3, align 8
  %89 = getelementptr inbounds %struct.rme32, %struct.rme32* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = load %struct.rme32*, %struct.rme32** %3, align 8
  %92 = getelementptr inbounds %struct.rme32, %struct.rme32* %91, i32 0, i32 11
  %93 = call i32 @pci_read_config_byte(%struct.pci_dev* %90, i32 8, i32* %92)
  %94 = load %struct.rme32*, %struct.rme32** %3, align 8
  %95 = getelementptr inbounds %struct.rme32, %struct.rme32* %94, i32 0, i32 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load %struct.rme32*, %struct.rme32** %3, align 8
  %98 = getelementptr inbounds %struct.rme32, %struct.rme32* %97, i32 0, i32 10
  %99 = call i32 @snd_pcm_new(%struct.TYPE_6__* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 1, i32 1, %struct.TYPE_7__** %98)
  store i32 %99, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %84
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %297

103:                                              ; preds = %84
  %104 = load %struct.rme32*, %struct.rme32** %3, align 8
  %105 = load %struct.rme32*, %struct.rme32** %3, align 8
  %106 = getelementptr inbounds %struct.rme32, %struct.rme32* %105, i32 0, i32 10
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  store %struct.rme32* %104, %struct.rme32** %108, align 8
  %109 = load i32, i32* @snd_rme32_free_spdif_pcm, align 4
  %110 = load %struct.rme32*, %struct.rme32** %3, align 8
  %111 = getelementptr inbounds %struct.rme32, %struct.rme32* %110, i32 0, i32 10
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  store i32 %109, i32* %113, align 4
  %114 = load %struct.rme32*, %struct.rme32** %3, align 8
  %115 = getelementptr inbounds %struct.rme32, %struct.rme32* %114, i32 0, i32 10
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @strcpy(i32 %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %120 = load %struct.rme32*, %struct.rme32** %3, align 8
  %121 = getelementptr inbounds %struct.rme32, %struct.rme32* %120, i32 0, i32 9
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %103
  %125 = load %struct.rme32*, %struct.rme32** %3, align 8
  %126 = getelementptr inbounds %struct.rme32, %struct.rme32* %125, i32 0, i32 10
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %129 = call i32 @snd_pcm_set_ops(%struct.TYPE_7__* %127, i32 %128, i32* @snd_rme32_playback_spdif_fd_ops)
  %130 = load %struct.rme32*, %struct.rme32** %3, align 8
  %131 = getelementptr inbounds %struct.rme32, %struct.rme32* %130, i32 0, i32 10
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %134 = call i32 @snd_pcm_set_ops(%struct.TYPE_7__* %132, i32 %133, i32* @snd_rme32_capture_spdif_fd_ops)
  %135 = load %struct.rme32*, %struct.rme32** %3, align 8
  %136 = getelementptr inbounds %struct.rme32, %struct.rme32* %135, i32 0, i32 10
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = load i32, i32* @SNDRV_DMA_TYPE_CONTINUOUS, align 4
  %139 = load i32, i32* @GFP_KERNEL, align 4
  %140 = call i32 @snd_dma_continuous_data(i32 %139)
  %141 = load i32, i32* @RME32_MID_BUFFER_SIZE, align 4
  %142 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.TYPE_7__* %137, i32 %138, i32 %140, i32 0, i32 %141)
  %143 = load i8*, i8** @SNDRV_PCM_INFO_JOINT_DUPLEX, align 8
  %144 = load %struct.rme32*, %struct.rme32** %3, align 8
  %145 = getelementptr inbounds %struct.rme32, %struct.rme32* %144, i32 0, i32 10
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  store i8* %143, i8** %147, align 8
  br label %164

148:                                              ; preds = %103
  %149 = load %struct.rme32*, %struct.rme32** %3, align 8
  %150 = getelementptr inbounds %struct.rme32, %struct.rme32* %149, i32 0, i32 10
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %153 = call i32 @snd_pcm_set_ops(%struct.TYPE_7__* %151, i32 %152, i32* @snd_rme32_playback_spdif_ops)
  %154 = load %struct.rme32*, %struct.rme32** %3, align 8
  %155 = getelementptr inbounds %struct.rme32, %struct.rme32* %154, i32 0, i32 10
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %158 = call i32 @snd_pcm_set_ops(%struct.TYPE_7__* %156, i32 %157, i32* @snd_rme32_capture_spdif_ops)
  %159 = load i8*, i8** @SNDRV_PCM_INFO_HALF_DUPLEX, align 8
  %160 = load %struct.rme32*, %struct.rme32** %3, align 8
  %161 = getelementptr inbounds %struct.rme32, %struct.rme32* %160, i32 0, i32 10
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  store i8* %159, i8** %163, align 8
  br label %164

164:                                              ; preds = %148, %124
  %165 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %166 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @PCI_DEVICE_ID_RME_DIGI32, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %176, label %170

170:                                              ; preds = %164
  %171 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %172 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @PCI_DEVICE_ID_RME_DIGI32_PRO, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %170, %164
  %177 = load %struct.rme32*, %struct.rme32** %3, align 8
  %178 = getelementptr inbounds %struct.rme32, %struct.rme32* %177, i32 0, i32 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %178, align 8
  br label %251

179:                                              ; preds = %170
  %180 = load %struct.rme32*, %struct.rme32** %3, align 8
  %181 = getelementptr inbounds %struct.rme32, %struct.rme32* %180, i32 0, i32 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = load %struct.rme32*, %struct.rme32** %3, align 8
  %184 = getelementptr inbounds %struct.rme32, %struct.rme32* %183, i32 0, i32 8
  %185 = call i32 @snd_pcm_new(%struct.TYPE_6__* %182, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 1, i32 1, i32 1, %struct.TYPE_7__** %184)
  store i32 %185, i32* %5, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %179
  %188 = load i32, i32* %5, align 4
  store i32 %188, i32* %2, align 4
  br label %297

189:                                              ; preds = %179
  %190 = load %struct.rme32*, %struct.rme32** %3, align 8
  %191 = load %struct.rme32*, %struct.rme32** %3, align 8
  %192 = getelementptr inbounds %struct.rme32, %struct.rme32* %191, i32 0, i32 8
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 3
  store %struct.rme32* %190, %struct.rme32** %194, align 8
  %195 = load i32, i32* @snd_rme32_free_adat_pcm, align 4
  %196 = load %struct.rme32*, %struct.rme32** %3, align 8
  %197 = getelementptr inbounds %struct.rme32, %struct.rme32* %196, i32 0, i32 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 2
  store i32 %195, i32* %199, align 4
  %200 = load %struct.rme32*, %struct.rme32** %3, align 8
  %201 = getelementptr inbounds %struct.rme32, %struct.rme32* %200, i32 0, i32 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @strcpy(i32 %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %206 = load %struct.rme32*, %struct.rme32** %3, align 8
  %207 = getelementptr inbounds %struct.rme32, %struct.rme32* %206, i32 0, i32 9
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %234

210:                                              ; preds = %189
  %211 = load %struct.rme32*, %struct.rme32** %3, align 8
  %212 = getelementptr inbounds %struct.rme32, %struct.rme32* %211, i32 0, i32 8
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %212, align 8
  %214 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %215 = call i32 @snd_pcm_set_ops(%struct.TYPE_7__* %213, i32 %214, i32* @snd_rme32_playback_adat_fd_ops)
  %216 = load %struct.rme32*, %struct.rme32** %3, align 8
  %217 = getelementptr inbounds %struct.rme32, %struct.rme32* %216, i32 0, i32 8
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %220 = call i32 @snd_pcm_set_ops(%struct.TYPE_7__* %218, i32 %219, i32* @snd_rme32_capture_adat_fd_ops)
  %221 = load %struct.rme32*, %struct.rme32** %3, align 8
  %222 = getelementptr inbounds %struct.rme32, %struct.rme32* %221, i32 0, i32 8
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = load i32, i32* @SNDRV_DMA_TYPE_CONTINUOUS, align 4
  %225 = load i32, i32* @GFP_KERNEL, align 4
  %226 = call i32 @snd_dma_continuous_data(i32 %225)
  %227 = load i32, i32* @RME32_MID_BUFFER_SIZE, align 4
  %228 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.TYPE_7__* %223, i32 %224, i32 %226, i32 0, i32 %227)
  %229 = load i8*, i8** @SNDRV_PCM_INFO_JOINT_DUPLEX, align 8
  %230 = load %struct.rme32*, %struct.rme32** %3, align 8
  %231 = getelementptr inbounds %struct.rme32, %struct.rme32* %230, i32 0, i32 8
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  store i8* %229, i8** %233, align 8
  br label %250

234:                                              ; preds = %189
  %235 = load %struct.rme32*, %struct.rme32** %3, align 8
  %236 = getelementptr inbounds %struct.rme32, %struct.rme32* %235, i32 0, i32 8
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %236, align 8
  %238 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %239 = call i32 @snd_pcm_set_ops(%struct.TYPE_7__* %237, i32 %238, i32* @snd_rme32_playback_adat_ops)
  %240 = load %struct.rme32*, %struct.rme32** %3, align 8
  %241 = getelementptr inbounds %struct.rme32, %struct.rme32* %240, i32 0, i32 8
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %241, align 8
  %243 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %244 = call i32 @snd_pcm_set_ops(%struct.TYPE_7__* %242, i32 %243, i32* @snd_rme32_capture_adat_ops)
  %245 = load i8*, i8** @SNDRV_PCM_INFO_HALF_DUPLEX, align 8
  %246 = load %struct.rme32*, %struct.rme32** %3, align 8
  %247 = getelementptr inbounds %struct.rme32, %struct.rme32* %246, i32 0, i32 8
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  store i8* %245, i8** %249, align 8
  br label %250

250:                                              ; preds = %234, %210
  br label %251

251:                                              ; preds = %250, %176
  %252 = load %struct.rme32*, %struct.rme32** %3, align 8
  %253 = getelementptr inbounds %struct.rme32, %struct.rme32* %252, i32 0, i32 7
  store i64 0, i64* %253, align 8
  %254 = load %struct.rme32*, %struct.rme32** %3, align 8
  %255 = getelementptr inbounds %struct.rme32, %struct.rme32* %254, i32 0, i32 6
  store i64 0, i64* %255, align 8
  %256 = load %struct.rme32*, %struct.rme32** %3, align 8
  %257 = call i32 @snd_rme32_pcm_stop(%struct.rme32* %256, i32 0)
  %258 = load %struct.rme32*, %struct.rme32** %3, align 8
  %259 = call i32 @snd_rme32_reset_dac(%struct.rme32* %258)
  %260 = load %struct.rme32*, %struct.rme32** %3, align 8
  %261 = getelementptr inbounds %struct.rme32, %struct.rme32* %260, i32 0, i32 5
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @RME32_IO_RESET_POS, align 8
  %264 = add nsw i64 %262, %263
  %265 = call i32 @writel(i32 0, i64 %264)
  %266 = load i32, i32* @RME32_WCR_SEL, align 4
  %267 = load i32, i32* @RME32_WCR_INP_0, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @RME32_WCR_MUTE, align 4
  %270 = or i32 %268, %269
  %271 = load %struct.rme32*, %struct.rme32** %3, align 8
  %272 = getelementptr inbounds %struct.rme32, %struct.rme32* %271, i32 0, i32 1
  store i32 %270, i32* %272, align 4
  %273 = load %struct.rme32*, %struct.rme32** %3, align 8
  %274 = getelementptr inbounds %struct.rme32, %struct.rme32* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.rme32*, %struct.rme32** %3, align 8
  %277 = getelementptr inbounds %struct.rme32, %struct.rme32* %276, i32 0, i32 5
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @RME32_IO_CONTROL_REGISTER, align 8
  %280 = add nsw i64 %278, %279
  %281 = call i32 @writel(i32 %275, i64 %280)
  %282 = load %struct.rme32*, %struct.rme32** %3, align 8
  %283 = getelementptr inbounds %struct.rme32, %struct.rme32* %282, i32 0, i32 4
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %283, align 8
  %285 = load %struct.rme32*, %struct.rme32** %3, align 8
  %286 = call i32 @snd_rme32_create_switches(%struct.TYPE_6__* %284, %struct.rme32* %285)
  store i32 %286, i32* %5, align 4
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %251
  %289 = load i32, i32* %5, align 4
  store i32 %289, i32* %2, align 4
  br label %297

290:                                              ; preds = %251
  %291 = load %struct.rme32*, %struct.rme32** %3, align 8
  %292 = call i32 @snd_rme32_proc_init(%struct.rme32* %291)
  %293 = load %struct.rme32*, %struct.rme32** %3, align 8
  %294 = getelementptr inbounds %struct.rme32, %struct.rme32* %293, i32 0, i32 3
  store i32* null, i32** %294, align 8
  %295 = load %struct.rme32*, %struct.rme32** %3, align 8
  %296 = getelementptr inbounds %struct.rme32, %struct.rme32* %295, i32 0, i32 2
  store i32* null, i32** %296, align 8
  store i32 0, i32* %2, align 4
  br label %297

297:                                              ; preds = %290, %288, %187, %101, %72, %43, %23, %17
  %298 = load i32, i32* %2, align 4
  ret i32 %298
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @ioremap_nocache(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.rme32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @snd_pcm_new(%struct.TYPE_6__*, i8*, i32, i32, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_continuous_data(i32) #1

declare dso_local i32 @snd_rme32_pcm_stop(%struct.rme32*, i32) #1

declare dso_local i32 @snd_rme32_reset_dac(%struct.rme32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @snd_rme32_create_switches(%struct.TYPE_6__*, %struct.rme32*) #1

declare dso_local i32 @snd_rme32_proc_init(%struct.rme32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
