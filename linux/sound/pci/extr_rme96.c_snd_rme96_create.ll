; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i32, i32, i32, %struct.TYPE_5__*, i64*, i64, i64, i64, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i64, %struct.pci_dev*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32, %struct.rme96* }
%struct.pci_dev = type { i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"RME96\00", align 1
@RME96_IO_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"unable to remap memory region 0x%lx-0x%lx\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@snd_rme96_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"unable to grab IRQ %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Digi96 IEC958\00", align 1
@snd_rme96_free_spdif_pcm = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_rme96_playback_spdif_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_rme96_capture_spdif_ops = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_RME_DIGI96 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"Digi96 ADAT\00", align 1
@snd_rme96_free_adat_pcm = common dso_local global i32 0, align 4
@snd_rme96_playback_adat_ops = common dso_local global i32 0, align 4
@snd_rme96_capture_adat_ops = common dso_local global i32 0, align 4
@RME96_STOP_BOTH = common dso_local global i32 0, align 4
@RME96_WCR_FREQ_1 = common dso_local global i32 0, align 4
@RME96_WCR_SEL = common dso_local global i32 0, align 4
@RME96_WCR_MASTER = common dso_local global i32 0, align 4
@RME96_WCR_INP_0 = common dso_local global i32 0, align 4
@RME96_AR_FREQPAD_1 = common dso_local global i32 0, align 4
@RME96_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@RME96_IO_ADDITIONAL_REG = common dso_local global i64 0, align 8
@RME96_AR_PD2 = common dso_local global i32 0, align 4
@RME96_AR_DAC_EN = common dso_local global i32 0, align 4
@RME96_IO_RESET_PLAY_POS = common dso_local global i64 0, align 8
@RME96_IO_RESET_REC_POS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rme96*)* @snd_rme96_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_create(%struct.rme96* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rme96*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.rme96* %0, %struct.rme96** %3, align 8
  %6 = load %struct.rme96*, %struct.rme96** %3, align 8
  %7 = getelementptr inbounds %struct.rme96, %struct.rme96* %6, i32 0, i32 12
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.rme96*, %struct.rme96** %3, align 8
  %10 = getelementptr inbounds %struct.rme96, %struct.rme96* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  %11 = load %struct.rme96*, %struct.rme96** %3, align 8
  %12 = getelementptr inbounds %struct.rme96, %struct.rme96* %11, i32 0, i32 13
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @pci_enable_device(%struct.pci_dev* %14)
  store i32 %15, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %295

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32 @pci_request_regions(%struct.pci_dev* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %295

25:                                               ; preds = %19
  %26 = load %struct.rme96*, %struct.rme96** %3, align 8
  %27 = getelementptr inbounds %struct.rme96, %struct.rme96* %26, i32 0, i32 12
  %28 = load %struct.pci_dev*, %struct.pci_dev** %27, align 8
  %29 = call i64 @pci_resource_start(%struct.pci_dev* %28, i32 0)
  %30 = load %struct.rme96*, %struct.rme96** %3, align 8
  %31 = getelementptr inbounds %struct.rme96, %struct.rme96* %30, i32 0, i32 11
  store i64 %29, i64* %31, align 8
  %32 = load %struct.rme96*, %struct.rme96** %3, align 8
  %33 = getelementptr inbounds %struct.rme96, %struct.rme96* %32, i32 0, i32 11
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RME96_IO_SIZE, align 8
  %36 = call i64 @ioremap_nocache(i64 %34, i64 %35)
  %37 = load %struct.rme96*, %struct.rme96** %3, align 8
  %38 = getelementptr inbounds %struct.rme96, %struct.rme96* %37, i32 0, i32 5
  store i64 %36, i64* %38, align 8
  %39 = load %struct.rme96*, %struct.rme96** %3, align 8
  %40 = getelementptr inbounds %struct.rme96, %struct.rme96* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %25
  %44 = load %struct.rme96*, %struct.rme96** %3, align 8
  %45 = getelementptr inbounds %struct.rme96, %struct.rme96* %44, i32 0, i32 3
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rme96*, %struct.rme96** %3, align 8
  %50 = getelementptr inbounds %struct.rme96, %struct.rme96* %49, i32 0, i32 11
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.rme96*, %struct.rme96** %3, align 8
  %54 = getelementptr inbounds %struct.rme96, %struct.rme96* %53, i32 0, i32 11
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RME96_IO_SIZE, align 8
  %57 = add nsw i64 %55, %56
  %58 = sub nsw i64 %57, 1
  %59 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %52, i64 %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %295

62:                                               ; preds = %25
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @snd_rme96_interrupt, align 4
  %67 = load i32, i32* @IRQF_SHARED, align 4
  %68 = load i32, i32* @KBUILD_MODNAME, align 4
  %69 = load %struct.rme96*, %struct.rme96** %3, align 8
  %70 = call i64 @request_irq(i32 %65, i32 %66, i32 %67, i32 %68, %struct.rme96* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %62
  %73 = load %struct.rme96*, %struct.rme96** %3, align 8
  %74 = getelementptr inbounds %struct.rme96, %struct.rme96* %73, i32 0, i32 3
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %295

84:                                               ; preds = %62
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.rme96*, %struct.rme96** %3, align 8
  %89 = getelementptr inbounds %struct.rme96, %struct.rme96* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = load %struct.rme96*, %struct.rme96** %3, align 8
  %92 = getelementptr inbounds %struct.rme96, %struct.rme96* %91, i32 0, i32 10
  %93 = call i32 @pci_read_config_byte(%struct.pci_dev* %90, i32 8, i32* %92)
  %94 = load %struct.rme96*, %struct.rme96** %3, align 8
  %95 = getelementptr inbounds %struct.rme96, %struct.rme96* %94, i32 0, i32 3
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load %struct.rme96*, %struct.rme96** %3, align 8
  %98 = getelementptr inbounds %struct.rme96, %struct.rme96* %97, i32 0, i32 9
  %99 = call i32 @snd_pcm_new(%struct.TYPE_5__* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 1, i32 1, %struct.TYPE_6__** %98)
  store i32 %99, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %84
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %295

103:                                              ; preds = %84
  %104 = load %struct.rme96*, %struct.rme96** %3, align 8
  %105 = load %struct.rme96*, %struct.rme96** %3, align 8
  %106 = getelementptr inbounds %struct.rme96, %struct.rme96* %105, i32 0, i32 9
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  store %struct.rme96* %104, %struct.rme96** %108, align 8
  %109 = load i32, i32* @snd_rme96_free_spdif_pcm, align 4
  %110 = load %struct.rme96*, %struct.rme96** %3, align 8
  %111 = getelementptr inbounds %struct.rme96, %struct.rme96* %110, i32 0, i32 9
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  store i32 %109, i32* %113, align 4
  %114 = load %struct.rme96*, %struct.rme96** %3, align 8
  %115 = getelementptr inbounds %struct.rme96, %struct.rme96* %114, i32 0, i32 9
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @strcpy(i32 %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %120 = load %struct.rme96*, %struct.rme96** %3, align 8
  %121 = getelementptr inbounds %struct.rme96, %struct.rme96* %120, i32 0, i32 9
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %124 = call i32 @snd_pcm_set_ops(%struct.TYPE_6__* %122, i32 %123, i32* @snd_rme96_playback_spdif_ops)
  %125 = load %struct.rme96*, %struct.rme96** %3, align 8
  %126 = getelementptr inbounds %struct.rme96, %struct.rme96* %125, i32 0, i32 9
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %129 = call i32 @snd_pcm_set_ops(%struct.TYPE_6__* %127, i32 %128, i32* @snd_rme96_capture_spdif_ops)
  %130 = load %struct.rme96*, %struct.rme96** %3, align 8
  %131 = getelementptr inbounds %struct.rme96, %struct.rme96* %130, i32 0, i32 9
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  %134 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %135 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @PCI_DEVICE_ID_RME_DIGI96, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %103
  %140 = load %struct.rme96*, %struct.rme96** %3, align 8
  %141 = getelementptr inbounds %struct.rme96, %struct.rme96* %140, i32 0, i32 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %141, align 8
  br label %183

142:                                              ; preds = %103
  %143 = load %struct.rme96*, %struct.rme96** %3, align 8
  %144 = getelementptr inbounds %struct.rme96, %struct.rme96* %143, i32 0, i32 3
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = load %struct.rme96*, %struct.rme96** %3, align 8
  %147 = getelementptr inbounds %struct.rme96, %struct.rme96* %146, i32 0, i32 8
  %148 = call i32 @snd_pcm_new(%struct.TYPE_5__* %145, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 1, i32 1, i32 1, %struct.TYPE_6__** %147)
  store i32 %148, i32* %5, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = load i32, i32* %5, align 4
  store i32 %151, i32* %2, align 4
  br label %295

152:                                              ; preds = %142
  %153 = load %struct.rme96*, %struct.rme96** %3, align 8
  %154 = load %struct.rme96*, %struct.rme96** %3, align 8
  %155 = getelementptr inbounds %struct.rme96, %struct.rme96* %154, i32 0, i32 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 3
  store %struct.rme96* %153, %struct.rme96** %157, align 8
  %158 = load i32, i32* @snd_rme96_free_adat_pcm, align 4
  %159 = load %struct.rme96*, %struct.rme96** %3, align 8
  %160 = getelementptr inbounds %struct.rme96, %struct.rme96* %159, i32 0, i32 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  store i32 %158, i32* %162, align 4
  %163 = load %struct.rme96*, %struct.rme96** %3, align 8
  %164 = getelementptr inbounds %struct.rme96, %struct.rme96* %163, i32 0, i32 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @strcpy(i32 %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %169 = load %struct.rme96*, %struct.rme96** %3, align 8
  %170 = getelementptr inbounds %struct.rme96, %struct.rme96* %169, i32 0, i32 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %173 = call i32 @snd_pcm_set_ops(%struct.TYPE_6__* %171, i32 %172, i32* @snd_rme96_playback_adat_ops)
  %174 = load %struct.rme96*, %struct.rme96** %3, align 8
  %175 = getelementptr inbounds %struct.rme96, %struct.rme96* %174, i32 0, i32 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %178 = call i32 @snd_pcm_set_ops(%struct.TYPE_6__* %176, i32 %177, i32* @snd_rme96_capture_adat_ops)
  %179 = load %struct.rme96*, %struct.rme96** %3, align 8
  %180 = getelementptr inbounds %struct.rme96, %struct.rme96* %179, i32 0, i32 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  store i64 0, i64* %182, align 8
  br label %183

183:                                              ; preds = %152, %139
  %184 = load %struct.rme96*, %struct.rme96** %3, align 8
  %185 = getelementptr inbounds %struct.rme96, %struct.rme96* %184, i32 0, i32 7
  store i64 0, i64* %185, align 8
  %186 = load %struct.rme96*, %struct.rme96** %3, align 8
  %187 = getelementptr inbounds %struct.rme96, %struct.rme96* %186, i32 0, i32 6
  store i64 0, i64* %187, align 8
  %188 = load %struct.rme96*, %struct.rme96** %3, align 8
  %189 = load i32, i32* @RME96_STOP_BOTH, align 4
  %190 = call i32 @snd_rme96_trigger(%struct.rme96* %188, i32 %189)
  %191 = load i32, i32* @RME96_WCR_FREQ_1, align 4
  %192 = load i32, i32* @RME96_WCR_SEL, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @RME96_WCR_MASTER, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @RME96_WCR_INP_0, align 4
  %197 = or i32 %195, %196
  %198 = load %struct.rme96*, %struct.rme96** %3, align 8
  %199 = getelementptr inbounds %struct.rme96, %struct.rme96* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* @RME96_AR_FREQPAD_1, align 4
  %201 = load %struct.rme96*, %struct.rme96** %3, align 8
  %202 = getelementptr inbounds %struct.rme96, %struct.rme96* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.rme96*, %struct.rme96** %3, align 8
  %204 = getelementptr inbounds %struct.rme96, %struct.rme96* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.rme96*, %struct.rme96** %3, align 8
  %207 = getelementptr inbounds %struct.rme96, %struct.rme96* %206, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 @writel(i32 %205, i64 %210)
  %212 = load %struct.rme96*, %struct.rme96** %3, align 8
  %213 = getelementptr inbounds %struct.rme96, %struct.rme96* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.rme96*, %struct.rme96** %3, align 8
  %216 = getelementptr inbounds %struct.rme96, %struct.rme96* %215, i32 0, i32 5
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @RME96_IO_ADDITIONAL_REG, align 8
  %219 = add nsw i64 %217, %218
  %220 = call i32 @writel(i32 %214, i64 %219)
  %221 = load %struct.rme96*, %struct.rme96** %3, align 8
  %222 = getelementptr inbounds %struct.rme96, %struct.rme96* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @RME96_AR_PD2, align 4
  %225 = or i32 %223, %224
  %226 = load %struct.rme96*, %struct.rme96** %3, align 8
  %227 = getelementptr inbounds %struct.rme96, %struct.rme96* %226, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @RME96_IO_ADDITIONAL_REG, align 8
  %230 = add nsw i64 %228, %229
  %231 = call i32 @writel(i32 %225, i64 %230)
  %232 = load %struct.rme96*, %struct.rme96** %3, align 8
  %233 = getelementptr inbounds %struct.rme96, %struct.rme96* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.rme96*, %struct.rme96** %3, align 8
  %236 = getelementptr inbounds %struct.rme96, %struct.rme96* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @RME96_IO_ADDITIONAL_REG, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i32 @writel(i32 %234, i64 %239)
  %241 = load %struct.rme96*, %struct.rme96** %3, align 8
  %242 = call i32 @snd_rme96_reset_dac(%struct.rme96* %241)
  %243 = load i32, i32* @RME96_AR_DAC_EN, align 4
  %244 = load %struct.rme96*, %struct.rme96** %3, align 8
  %245 = getelementptr inbounds %struct.rme96, %struct.rme96* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  %248 = load %struct.rme96*, %struct.rme96** %3, align 8
  %249 = getelementptr inbounds %struct.rme96, %struct.rme96* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.rme96*, %struct.rme96** %3, align 8
  %252 = getelementptr inbounds %struct.rme96, %struct.rme96* %251, i32 0, i32 5
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @RME96_IO_ADDITIONAL_REG, align 8
  %255 = add nsw i64 %253, %254
  %256 = call i32 @writel(i32 %250, i64 %255)
  %257 = load %struct.rme96*, %struct.rme96** %3, align 8
  %258 = getelementptr inbounds %struct.rme96, %struct.rme96* %257, i32 0, i32 5
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @RME96_IO_RESET_PLAY_POS, align 8
  %261 = add nsw i64 %259, %260
  %262 = call i32 @writel(i32 0, i64 %261)
  %263 = load %struct.rme96*, %struct.rme96** %3, align 8
  %264 = getelementptr inbounds %struct.rme96, %struct.rme96* %263, i32 0, i32 5
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @RME96_IO_RESET_REC_POS, align 8
  %267 = add nsw i64 %265, %266
  %268 = call i32 @writel(i32 0, i64 %267)
  %269 = load %struct.rme96*, %struct.rme96** %3, align 8
  %270 = getelementptr inbounds %struct.rme96, %struct.rme96* %269, i32 0, i32 4
  %271 = load i64*, i64** %270, align 8
  %272 = getelementptr inbounds i64, i64* %271, i64 1
  store i64 0, i64* %272, align 8
  %273 = load %struct.rme96*, %struct.rme96** %3, align 8
  %274 = getelementptr inbounds %struct.rme96, %struct.rme96* %273, i32 0, i32 4
  %275 = load i64*, i64** %274, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 0
  store i64 0, i64* %276, align 8
  %277 = load %struct.rme96*, %struct.rme96** %3, align 8
  %278 = call i64 @RME96_HAS_ANALOG_OUT(%struct.rme96* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %183
  %281 = load %struct.rme96*, %struct.rme96** %3, align 8
  %282 = call i32 @snd_rme96_apply_dac_volume(%struct.rme96* %281)
  br label %283

283:                                              ; preds = %280, %183
  %284 = load %struct.rme96*, %struct.rme96** %3, align 8
  %285 = getelementptr inbounds %struct.rme96, %struct.rme96* %284, i32 0, i32 3
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %285, align 8
  %287 = load %struct.rme96*, %struct.rme96** %3, align 8
  %288 = call i32 @snd_rme96_create_switches(%struct.TYPE_5__* %286, %struct.rme96* %287)
  store i32 %288, i32* %5, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %283
  %291 = load i32, i32* %5, align 4
  store i32 %291, i32* %2, align 4
  br label %295

292:                                              ; preds = %283
  %293 = load %struct.rme96*, %struct.rme96** %3, align 8
  %294 = call i32 @snd_rme96_proc_init(%struct.rme96* %293)
  store i32 0, i32* %2, align 4
  br label %295

295:                                              ; preds = %292, %290, %150, %101, %72, %43, %23, %17
  %296 = load i32, i32* %2, align 4
  ret i32 %296
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @ioremap_nocache(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.rme96*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @snd_pcm_new(%struct.TYPE_5__*, i8*, i32, i32, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @snd_rme96_trigger(%struct.rme96*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @snd_rme96_reset_dac(%struct.rme96*) #1

declare dso_local i64 @RME96_HAS_ANALOG_OUT(%struct.rme96*) #1

declare dso_local i32 @snd_rme96_apply_dac_volume(%struct.rme96*) #1

declare dso_local i32 @snd_rme96_create_switches(%struct.TYPE_5__*, %struct.rme96*) #1

declare dso_local i32 @snd_rme96_proc_init(%struct.rme96*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
