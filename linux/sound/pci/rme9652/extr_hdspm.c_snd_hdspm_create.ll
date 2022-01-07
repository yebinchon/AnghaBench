; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32, i32, i32, i32 }
%struct.hdspm = type { i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32*, i8*, i64, i64, %struct.pci_dev*, i32, %struct.snd_card* }
%struct.pci_dev = type { i32 }

@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Xilinx FPGA\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"HDSPM\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"RME RayDAT\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"RME AIO\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"RME MADIface\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"RME AES32\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"RME MADI\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"unknown firmware revision %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"hdspm\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"grabbed memory region 0x%lx-0x%lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"unable to remap region 0x%lx-0x%lx\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"remapped region (0x%lx) 0x%lx-0x%lx\0A\00", align 1
@snd_hdspm_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"unable to use IRQ %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"use IRQ %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"kmalloc Mixer memory of %zd Bytes\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AES32_CHANNELS = common dso_local global i8* null, align 8
@channel_map_aes32 = common dso_local global i8* null, align 8
@texts_ports_aes32 = common dso_local global i8* null, align 8
@MADI_SS_CHANNELS = common dso_local global i32 0, align 4
@MADI_DS_CHANNELS = common dso_local global i32 0, align 4
@MADI_QS_CHANNELS = common dso_local global i32 0, align 4
@channel_map_unity_ss = common dso_local global i8* null, align 8
@texts_ports_madi = common dso_local global i8* null, align 8
@AIO_IN_SS_CHANNELS = common dso_local global i32 0, align 4
@AIO_IN_DS_CHANNELS = common dso_local global i32 0, align 4
@AIO_IN_QS_CHANNELS = common dso_local global i32 0, align 4
@AIO_OUT_SS_CHANNELS = common dso_local global i32 0, align 4
@AIO_OUT_DS_CHANNELS = common dso_local global i32 0, align 4
@AIO_OUT_QS_CHANNELS = common dso_local global i32 0, align 4
@HDSPM_statusRegister2 = common dso_local global i32 0, align 4
@HDSPM_s2_AEBI_D = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [23 x i8] c"AEB input board found\0A\00", align 1
@HDSPM_s2_AEBO_D = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c"AEB output board found\0A\00", align 1
@channel_map_aio_out_ss = common dso_local global i8* null, align 8
@channel_map_aio_out_ds = common dso_local global i8* null, align 8
@channel_map_aio_out_qs = common dso_local global i8* null, align 8
@channel_map_aio_in_ss = common dso_local global i8* null, align 8
@channel_map_aio_in_ds = common dso_local global i8* null, align 8
@channel_map_aio_in_qs = common dso_local global i8* null, align 8
@texts_ports_aio_in_ss = common dso_local global i8* null, align 8
@texts_ports_aio_out_ss = common dso_local global i8* null, align 8
@texts_ports_aio_in_ds = common dso_local global i8* null, align 8
@texts_ports_aio_out_ds = common dso_local global i8* null, align 8
@texts_ports_aio_in_qs = common dso_local global i8* null, align 8
@texts_ports_aio_out_qs = common dso_local global i8* null, align 8
@RAYDAT_SS_CHANNELS = common dso_local global i8* null, align 8
@RAYDAT_DS_CHANNELS = common dso_local global i32 0, align 4
@RAYDAT_QS_CHANNELS = common dso_local global i32 0, align 4
@channel_map_raydat_ss = common dso_local global i8* null, align 8
@channel_map_raydat_ds = common dso_local global i8* null, align 8
@channel_map_raydat_qs = common dso_local global i8* null, align 8
@texts_ports_raydat_ss = common dso_local global i8* null, align 8
@texts_ports_raydat_ds = common dso_local global i8* null, align 8
@texts_ports_raydat_qs = common dso_local global i8* null, align 8
@HDSPM_s2_tco_detect = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [29 x i8] c"AIO/RayDAT TCO module found\0A\00", align 1
@HDSPM_statusRegister = common dso_local global i32 0, align 4
@HDSPM_tco_detect = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [27 x i8] c"MADI/AES TCO module found\0A\00", align 1
@texts_autosync_aes_tco = common dso_local global i8* null, align 8
@texts_autosync_aes = common dso_local global i8* null, align 8
@texts_autosync_madi_tco = common dso_local global i8* null, align 8
@texts_autosync_madi = common dso_local global i8* null, align 8
@texts_autosync_raydat_tco = common dso_local global i8* null, align 8
@texts_autosync_raydat = common dso_local global i8* null, align 8
@texts_autosync_aio_tco = common dso_local global i8* null, align 8
@texts_autosync_aio = common dso_local global i8* null, align 8
@hdspm_midi_tasklet = common dso_local global i32 0, align 4
@HDSPM_midiStatusIn0 = common dso_local global i32 0, align 4
@id = common dso_local global i32* null, align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"HDSPMx%06x\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"create alsa devices.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.hdspm*)* @snd_hdspm_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_create(%struct.snd_card* %0, %struct.hdspm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.hdspm*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.hdspm* %1, %struct.hdspm** %5, align 8
  %9 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %10 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %9, i32 0, i32 38
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %13 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 8
  %14 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %15 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %16 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %15, i32 0, i32 40
  store %struct.snd_card* %14, %struct.snd_card** %16, align 8
  %17 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %18 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %17, i32 0, i32 39
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %21 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %20, i32 0, i32 38
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  %23 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %24 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %25 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %24, i32 0, i32 1
  %26 = call i32 @pci_read_config_word(%struct.pci_dev* %22, i32 %23, i32* %25)
  %27 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %28 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcpy(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %32 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcpy(i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %36 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %59 [
    i32 131, label %38
    i32 133, label %45
    i32 132, label %52
  ]

38:                                               ; preds = %2
  %39 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %40 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %39, i32 0, i32 2
  store i32 128, i32* %40, align 8
  %41 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %42 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %41, i32 0, i32 3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %42, align 8
  %43 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %44 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %43, i32 0, i32 4
  store i32 2, i32* %44, align 8
  br label %115

45:                                               ; preds = %2
  %46 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %47 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %46, i32 0, i32 2
  store i32 134, i32* %47, align 8
  %48 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %49 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %48, i32 0, i32 3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %49, align 8
  %50 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %51 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %50, i32 0, i32 4
  store i32 1, i32* %51, align 8
  br label %115

52:                                               ; preds = %2
  %53 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %54 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %53, i32 0, i32 2
  store i32 129, i32* %54, align 8
  %55 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %56 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %55, i32 0, i32 3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %56, align 8
  %57 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %58 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %57, i32 0, i32 4
  store i32 1, i32* %58, align 8
  br label %115

59:                                               ; preds = %2
  %60 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %61 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 240
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %66 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %67, 230
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %71 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sle i32 %72, 234
  br i1 %73, label %74, label %81

74:                                               ; preds = %69, %59
  %75 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %76 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %75, i32 0, i32 2
  store i32 135, i32* %76, align 8
  %77 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %78 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %77, i32 0, i32 3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %78, align 8
  %79 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %80 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %79, i32 0, i32 4
  store i32 2, i32* %80, align 8
  br label %114

81:                                               ; preds = %69, %64
  %82 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %83 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 210
  br i1 %85, label %96, label %86

86:                                               ; preds = %81
  %87 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %88 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %89, 200
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %93 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp sle i32 %94, 207
  br i1 %95, label %96, label %103

96:                                               ; preds = %91, %81
  %97 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %98 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %97, i32 0, i32 2
  store i32 130, i32* %98, align 8
  %99 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %100 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %99, i32 0, i32 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %100, align 8
  %101 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %102 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %101, i32 0, i32 4
  store i32 3, i32* %102, align 8
  br label %113

103:                                              ; preds = %91, %86
  %104 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %105 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %108 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %741

113:                                              ; preds = %96
  br label %114

114:                                              ; preds = %113, %74
  br label %115

115:                                              ; preds = %114, %52, %45, %38
  %116 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %117 = call i32 @pci_enable_device(%struct.pci_dev* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %741

122:                                              ; preds = %115
  %123 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %124 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %123, i32 0, i32 38
  %125 = load %struct.pci_dev*, %struct.pci_dev** %124, align 8
  %126 = call i32 @pci_set_master(%struct.pci_dev* %125)
  %127 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %128 = call i32 @pci_request_regions(%struct.pci_dev* %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %122
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %3, align 4
  br label %741

133:                                              ; preds = %122
  %134 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %135 = call i64 @pci_resource_start(%struct.pci_dev* %134, i32 0)
  %136 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %137 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %136, i32 0, i32 36
  store i64 %135, i64* %137, align 8
  %138 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %139 = call i64 @pci_resource_len(%struct.pci_dev* %138, i32 0)
  store i64 %139, i64* %8, align 8
  %140 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %141 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %144 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %143, i32 0, i32 36
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %147 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %146, i32 0, i32 36
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %8, align 8
  %150 = add i64 %148, %149
  %151 = sub i64 %150, 1
  %152 = call i32 (i32, i8*, ...) @dev_dbg(i32 %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i64 %145, i64 %151)
  %153 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %154 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %153, i32 0, i32 36
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %8, align 8
  %157 = call i64 @ioremap_nocache(i64 %155, i64 %156)
  %158 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %159 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %158, i32 0, i32 37
  store i64 %157, i64* %159, align 8
  %160 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %161 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %160, i32 0, i32 37
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %181, label %164

164:                                              ; preds = %133
  %165 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %166 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %169 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %168, i32 0, i32 36
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  %172 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %173 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %172, i32 0, i32 36
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %8, align 8
  %176 = add i64 %174, %175
  %177 = sub i64 %176, 1
  %178 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %167, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %171, i64 %177)
  %179 = load i32, i32* @EBUSY, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %3, align 4
  br label %741

181:                                              ; preds = %133
  %182 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %183 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %186 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %185, i32 0, i32 37
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %189 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %188, i32 0, i32 36
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %192 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %191, i32 0, i32 36
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %8, align 8
  %195 = add i64 %193, %194
  %196 = sub i64 %195, 1
  %197 = call i32 (i32, i8*, ...) @dev_dbg(i32 %184, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i64 %187, i64 %190, i64 %196)
  %198 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %199 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @snd_hdspm_interrupt, align 4
  %202 = load i32, i32* @IRQF_SHARED, align 4
  %203 = load i32, i32* @KBUILD_MODNAME, align 4
  %204 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %205 = call i64 @request_irq(i32 %200, i32 %201, i32 %202, i32 %203, %struct.hdspm* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %181
  %208 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %209 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %212 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %210, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* @EBUSY, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %3, align 4
  br label %741

217:                                              ; preds = %181
  %218 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %219 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %222 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i32, i8*, ...) @dev_dbg(i32 %220, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %223)
  %225 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %226 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %229 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  %230 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %231 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 (i32, i8*, ...) @dev_dbg(i32 %232, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i64 1)
  %234 = load i32, i32* @GFP_KERNEL, align 4
  %235 = call i8* @kzalloc(i32 1, i32 %234)
  %236 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %237 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %236, i32 0, i32 35
  store i8* %235, i8** %237, align 8
  %238 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %239 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %238, i32 0, i32 35
  %240 = load i8*, i8** %239, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %245, label %242

242:                                              ; preds = %217
  %243 = load i32, i32* @ENOMEM, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %3, align 4
  br label %741

245:                                              ; preds = %217
  %246 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %247 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %246, i32 0, i32 34
  store i32* null, i32** %247, align 8
  %248 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %249 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %248, i32 0, i32 33
  store i32* null, i32** %249, align 8
  %250 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %251 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  switch i32 %252, label %525 [
    i32 135, label %253
    i32 130, label %318
    i32 129, label %318
    i32 134, label %364
    i32 128, label %467
  ]

253:                                              ; preds = %245
  %254 = load i8*, i8** @AES32_CHANNELS, align 8
  %255 = ptrtoint i8* %254 to i32
  %256 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %257 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %256, i32 0, i32 6
  store i32 %255, i32* %257, align 8
  %258 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %259 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %258, i32 0, i32 5
  store i32 %255, i32* %259, align 4
  %260 = load i8*, i8** @AES32_CHANNELS, align 8
  %261 = ptrtoint i8* %260 to i32
  %262 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %263 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %262, i32 0, i32 8
  store i32 %261, i32* %263, align 8
  %264 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %265 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %264, i32 0, i32 7
  store i32 %261, i32* %265, align 4
  %266 = load i8*, i8** @AES32_CHANNELS, align 8
  %267 = ptrtoint i8* %266 to i32
  %268 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %269 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %268, i32 0, i32 10
  store i32 %267, i32* %269, align 8
  %270 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %271 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %270, i32 0, i32 9
  store i32 %267, i32* %271, align 4
  %272 = load i8*, i8** @channel_map_aes32, align 8
  %273 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %274 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %273, i32 0, i32 29
  store i8* %272, i8** %274, align 8
  %275 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %276 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %275, i32 0, i32 30
  store i8* %272, i8** %276, align 8
  %277 = load i8*, i8** @channel_map_aes32, align 8
  %278 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %279 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %278, i32 0, i32 27
  store i8* %277, i8** %279, align 8
  %280 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %281 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %280, i32 0, i32 28
  store i8* %277, i8** %281, align 8
  %282 = load i8*, i8** @channel_map_aes32, align 8
  %283 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %284 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %283, i32 0, i32 25
  store i8* %282, i8** %284, align 8
  %285 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %286 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %285, i32 0, i32 26
  store i8* %282, i8** %286, align 8
  %287 = load i8*, i8** @texts_ports_aes32, align 8
  %288 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %289 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %288, i32 0, i32 21
  store i8* %287, i8** %289, align 8
  %290 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %291 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %290, i32 0, i32 22
  store i8* %287, i8** %291, align 8
  %292 = load i8*, i8** @texts_ports_aes32, align 8
  %293 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %294 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %293, i32 0, i32 19
  store i8* %292, i8** %294, align 8
  %295 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %296 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %295, i32 0, i32 20
  store i8* %292, i8** %296, align 8
  %297 = load i8*, i8** @texts_ports_aes32, align 8
  %298 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %299 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %298, i32 0, i32 17
  store i8* %297, i8** %299, align 8
  %300 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %301 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %300, i32 0, i32 18
  store i8* %297, i8** %301, align 8
  %302 = load i8*, i8** @AES32_CHANNELS, align 8
  %303 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %304 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %303, i32 0, i32 32
  store i8* %302, i8** %304, align 8
  %305 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %306 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %305, i32 0, i32 31
  store i8* %302, i8** %306, align 8
  %307 = load i8*, i8** @texts_ports_aes32, align 8
  %308 = bitcast i8* %307 to i32*
  %309 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %310 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %309, i32 0, i32 33
  store i32* %308, i32** %310, align 8
  %311 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %312 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %311, i32 0, i32 34
  store i32* %308, i32** %312, align 8
  %313 = load i8*, i8** @channel_map_aes32, align 8
  %314 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %315 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %314, i32 0, i32 23
  store i8* %313, i8** %315, align 8
  %316 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %317 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %316, i32 0, i32 24
  store i8* %313, i8** %317, align 8
  br label %525

318:                                              ; preds = %245, %245
  %319 = load i32, i32* @MADI_SS_CHANNELS, align 4
  %320 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %321 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %320, i32 0, i32 6
  store i32 %319, i32* %321, align 8
  %322 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %323 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %322, i32 0, i32 5
  store i32 %319, i32* %323, align 4
  %324 = load i32, i32* @MADI_DS_CHANNELS, align 4
  %325 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %326 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %325, i32 0, i32 8
  store i32 %324, i32* %326, align 8
  %327 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %328 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %327, i32 0, i32 7
  store i32 %324, i32* %328, align 4
  %329 = load i32, i32* @MADI_QS_CHANNELS, align 4
  %330 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %331 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %330, i32 0, i32 10
  store i32 %329, i32* %331, align 8
  %332 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %333 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %332, i32 0, i32 9
  store i32 %329, i32* %333, align 4
  %334 = load i8*, i8** @channel_map_unity_ss, align 8
  %335 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %336 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %335, i32 0, i32 29
  store i8* %334, i8** %336, align 8
  %337 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %338 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %337, i32 0, i32 30
  store i8* %334, i8** %338, align 8
  %339 = load i8*, i8** @channel_map_unity_ss, align 8
  %340 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %341 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %340, i32 0, i32 27
  store i8* %339, i8** %341, align 8
  %342 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %343 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %342, i32 0, i32 28
  store i8* %339, i8** %343, align 8
  %344 = load i8*, i8** @channel_map_unity_ss, align 8
  %345 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %346 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %345, i32 0, i32 25
  store i8* %344, i8** %346, align 8
  %347 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %348 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %347, i32 0, i32 26
  store i8* %344, i8** %348, align 8
  %349 = load i8*, i8** @texts_ports_madi, align 8
  %350 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %351 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %350, i32 0, i32 21
  store i8* %349, i8** %351, align 8
  %352 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %353 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %352, i32 0, i32 22
  store i8* %349, i8** %353, align 8
  %354 = load i8*, i8** @texts_ports_madi, align 8
  %355 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %356 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %355, i32 0, i32 19
  store i8* %354, i8** %356, align 8
  %357 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %358 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %357, i32 0, i32 20
  store i8* %354, i8** %358, align 8
  %359 = load i8*, i8** @texts_ports_madi, align 8
  %360 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %361 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %360, i32 0, i32 17
  store i8* %359, i8** %361, align 8
  %362 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %363 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %362, i32 0, i32 18
  store i8* %359, i8** %363, align 8
  br label %525

364:                                              ; preds = %245
  %365 = load i32, i32* @AIO_IN_SS_CHANNELS, align 4
  %366 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %367 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %366, i32 0, i32 5
  store i32 %365, i32* %367, align 4
  %368 = load i32, i32* @AIO_IN_DS_CHANNELS, align 4
  %369 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %370 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %369, i32 0, i32 7
  store i32 %368, i32* %370, align 4
  %371 = load i32, i32* @AIO_IN_QS_CHANNELS, align 4
  %372 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %373 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %372, i32 0, i32 9
  store i32 %371, i32* %373, align 4
  %374 = load i32, i32* @AIO_OUT_SS_CHANNELS, align 4
  %375 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %376 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %375, i32 0, i32 6
  store i32 %374, i32* %376, align 8
  %377 = load i32, i32* @AIO_OUT_DS_CHANNELS, align 4
  %378 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %379 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %378, i32 0, i32 8
  store i32 %377, i32* %379, align 8
  %380 = load i32, i32* @AIO_OUT_QS_CHANNELS, align 4
  %381 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %382 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %381, i32 0, i32 10
  store i32 %380, i32* %382, align 8
  %383 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %384 = load i32, i32* @HDSPM_statusRegister2, align 4
  %385 = call i32 @hdspm_read(%struct.hdspm* %383, i32 %384)
  %386 = load i32, i32* @HDSPM_s2_AEBI_D, align 4
  %387 = and i32 %385, %386
  %388 = icmp eq i32 0, %387
  br i1 %388, label %389, label %406

389:                                              ; preds = %364
  %390 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %391 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @dev_info(i32 %392, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %394 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %395 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %394, i32 0, i32 5
  %396 = load i32, i32* %395, align 4
  %397 = add nsw i32 %396, 4
  store i32 %397, i32* %395, align 4
  %398 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %399 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %398, i32 0, i32 7
  %400 = load i32, i32* %399, align 4
  %401 = add nsw i32 %400, 4
  store i32 %401, i32* %399, align 4
  %402 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %403 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %402, i32 0, i32 9
  %404 = load i32, i32* %403, align 4
  %405 = add nsw i32 %404, 4
  store i32 %405, i32* %403, align 4
  br label %406

406:                                              ; preds = %389, %364
  %407 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %408 = load i32, i32* @HDSPM_statusRegister2, align 4
  %409 = call i32 @hdspm_read(%struct.hdspm* %407, i32 %408)
  %410 = load i32, i32* @HDSPM_s2_AEBO_D, align 4
  %411 = and i32 %409, %410
  %412 = icmp eq i32 0, %411
  br i1 %412, label %413, label %430

413:                                              ; preds = %406
  %414 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %415 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = call i32 @dev_info(i32 %416, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %418 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %419 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %418, i32 0, i32 6
  %420 = load i32, i32* %419, align 8
  %421 = add nsw i32 %420, 4
  store i32 %421, i32* %419, align 8
  %422 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %423 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %422, i32 0, i32 8
  %424 = load i32, i32* %423, align 8
  %425 = add nsw i32 %424, 4
  store i32 %425, i32* %423, align 8
  %426 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %427 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %426, i32 0, i32 10
  %428 = load i32, i32* %427, align 8
  %429 = add nsw i32 %428, 4
  store i32 %429, i32* %427, align 8
  br label %430

430:                                              ; preds = %413, %406
  %431 = load i8*, i8** @channel_map_aio_out_ss, align 8
  %432 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %433 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %432, i32 0, i32 29
  store i8* %431, i8** %433, align 8
  %434 = load i8*, i8** @channel_map_aio_out_ds, align 8
  %435 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %436 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %435, i32 0, i32 27
  store i8* %434, i8** %436, align 8
  %437 = load i8*, i8** @channel_map_aio_out_qs, align 8
  %438 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %439 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %438, i32 0, i32 25
  store i8* %437, i8** %439, align 8
  %440 = load i8*, i8** @channel_map_aio_in_ss, align 8
  %441 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %442 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %441, i32 0, i32 30
  store i8* %440, i8** %442, align 8
  %443 = load i8*, i8** @channel_map_aio_in_ds, align 8
  %444 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %445 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %444, i32 0, i32 28
  store i8* %443, i8** %445, align 8
  %446 = load i8*, i8** @channel_map_aio_in_qs, align 8
  %447 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %448 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %447, i32 0, i32 26
  store i8* %446, i8** %448, align 8
  %449 = load i8*, i8** @texts_ports_aio_in_ss, align 8
  %450 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %451 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %450, i32 0, i32 22
  store i8* %449, i8** %451, align 8
  %452 = load i8*, i8** @texts_ports_aio_out_ss, align 8
  %453 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %454 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %453, i32 0, i32 21
  store i8* %452, i8** %454, align 8
  %455 = load i8*, i8** @texts_ports_aio_in_ds, align 8
  %456 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %457 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %456, i32 0, i32 20
  store i8* %455, i8** %457, align 8
  %458 = load i8*, i8** @texts_ports_aio_out_ds, align 8
  %459 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %460 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %459, i32 0, i32 19
  store i8* %458, i8** %460, align 8
  %461 = load i8*, i8** @texts_ports_aio_in_qs, align 8
  %462 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %463 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %462, i32 0, i32 18
  store i8* %461, i8** %463, align 8
  %464 = load i8*, i8** @texts_ports_aio_out_qs, align 8
  %465 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %466 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %465, i32 0, i32 17
  store i8* %464, i8** %466, align 8
  br label %525

467:                                              ; preds = %245
  %468 = load i8*, i8** @RAYDAT_SS_CHANNELS, align 8
  %469 = ptrtoint i8* %468 to i32
  %470 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %471 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %470, i32 0, i32 6
  store i32 %469, i32* %471, align 8
  %472 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %473 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %472, i32 0, i32 5
  store i32 %469, i32* %473, align 4
  %474 = load i32, i32* @RAYDAT_DS_CHANNELS, align 4
  %475 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %476 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %475, i32 0, i32 8
  store i32 %474, i32* %476, align 8
  %477 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %478 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %477, i32 0, i32 7
  store i32 %474, i32* %478, align 4
  %479 = load i32, i32* @RAYDAT_QS_CHANNELS, align 4
  %480 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %481 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %480, i32 0, i32 10
  store i32 %479, i32* %481, align 8
  %482 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %483 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %482, i32 0, i32 9
  store i32 %479, i32* %483, align 4
  %484 = load i8*, i8** @RAYDAT_SS_CHANNELS, align 8
  %485 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %486 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %485, i32 0, i32 32
  store i8* %484, i8** %486, align 8
  %487 = load i8*, i8** @RAYDAT_SS_CHANNELS, align 8
  %488 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %489 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %488, i32 0, i32 31
  store i8* %487, i8** %489, align 8
  %490 = load i8*, i8** @channel_map_raydat_ss, align 8
  %491 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %492 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %491, i32 0, i32 29
  store i8* %490, i8** %492, align 8
  %493 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %494 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %493, i32 0, i32 30
  store i8* %490, i8** %494, align 8
  %495 = load i8*, i8** @channel_map_raydat_ds, align 8
  %496 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %497 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %496, i32 0, i32 27
  store i8* %495, i8** %497, align 8
  %498 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %499 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %498, i32 0, i32 28
  store i8* %495, i8** %499, align 8
  %500 = load i8*, i8** @channel_map_raydat_qs, align 8
  %501 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %502 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %501, i32 0, i32 25
  store i8* %500, i8** %502, align 8
  %503 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %504 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %503, i32 0, i32 26
  store i8* %500, i8** %504, align 8
  %505 = load i8*, i8** @channel_map_raydat_ss, align 8
  %506 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %507 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %506, i32 0, i32 23
  store i8* %505, i8** %507, align 8
  %508 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %509 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %508, i32 0, i32 24
  store i8* %505, i8** %509, align 8
  %510 = load i8*, i8** @texts_ports_raydat_ss, align 8
  %511 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %512 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %511, i32 0, i32 21
  store i8* %510, i8** %512, align 8
  %513 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %514 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %513, i32 0, i32 22
  store i8* %510, i8** %514, align 8
  %515 = load i8*, i8** @texts_ports_raydat_ds, align 8
  %516 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %517 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %516, i32 0, i32 19
  store i8* %515, i8** %517, align 8
  %518 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %519 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %518, i32 0, i32 20
  store i8* %515, i8** %519, align 8
  %520 = load i8*, i8** @texts_ports_raydat_qs, align 8
  %521 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %522 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %521, i32 0, i32 17
  store i8* %520, i8** %522, align 8
  %523 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %524 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %523, i32 0, i32 18
  store i8* %520, i8** %524, align 8
  br label %525

525:                                              ; preds = %245, %467, %430, %318, %253
  %526 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %527 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %526, i32 0, i32 2
  %528 = load i32, i32* %527, align 8
  switch i32 %528, label %595 [
    i32 134, label %529
    i32 128, label %529
    i32 130, label %562
    i32 135, label %562
  ]

529:                                              ; preds = %525, %525
  %530 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %531 = load i32, i32* @HDSPM_statusRegister2, align 4
  %532 = call i32 @hdspm_read(%struct.hdspm* %530, i32 %531)
  %533 = load i32, i32* @HDSPM_s2_tco_detect, align 4
  %534 = and i32 %532, %533
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %558

536:                                              ; preds = %529
  %537 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %538 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %537, i32 0, i32 4
  %539 = load i32, i32* %538, align 8
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* %538, align 8
  %541 = load i32, i32* @GFP_KERNEL, align 4
  %542 = call i8* @kzalloc(i32 4, i32 %541)
  %543 = bitcast i8* %542 to i32*
  %544 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %545 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %544, i32 0, i32 16
  store i32* %543, i32** %545, align 8
  %546 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %547 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %546, i32 0, i32 16
  %548 = load i32*, i32** %547, align 8
  %549 = icmp ne i32* %548, null
  br i1 %549, label %550, label %553

550:                                              ; preds = %536
  %551 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %552 = call i32 @hdspm_tco_write(%struct.hdspm* %551)
  br label %553

553:                                              ; preds = %550, %536
  %554 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %555 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 4
  %557 = call i32 @dev_info(i32 %556, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  br label %561

558:                                              ; preds = %529
  %559 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %560 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %559, i32 0, i32 16
  store i32* null, i32** %560, align 8
  br label %561

561:                                              ; preds = %558, %553
  br label %598

562:                                              ; preds = %525, %525
  %563 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %564 = load i32, i32* @HDSPM_statusRegister, align 4
  %565 = call i32 @hdspm_read(%struct.hdspm* %563, i32 %564)
  %566 = load i32, i32* @HDSPM_tco_detect, align 4
  %567 = and i32 %565, %566
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %591

569:                                              ; preds = %562
  %570 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %571 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %570, i32 0, i32 4
  %572 = load i32, i32* %571, align 8
  %573 = add nsw i32 %572, 1
  store i32 %573, i32* %571, align 8
  %574 = load i32, i32* @GFP_KERNEL, align 4
  %575 = call i8* @kzalloc(i32 4, i32 %574)
  %576 = bitcast i8* %575 to i32*
  %577 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %578 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %577, i32 0, i32 16
  store i32* %576, i32** %578, align 8
  %579 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %580 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %579, i32 0, i32 16
  %581 = load i32*, i32** %580, align 8
  %582 = icmp ne i32* %581, null
  br i1 %582, label %583, label %586

583:                                              ; preds = %569
  %584 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %585 = call i32 @hdspm_tco_write(%struct.hdspm* %584)
  br label %586

586:                                              ; preds = %583, %569
  %587 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %588 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 4
  %590 = call i32 @dev_info(i32 %589, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0))
  br label %594

591:                                              ; preds = %562
  %592 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %593 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %592, i32 0, i32 16
  store i32* null, i32** %593, align 8
  br label %594

594:                                              ; preds = %591, %586
  br label %598

595:                                              ; preds = %525
  %596 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %597 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %596, i32 0, i32 16
  store i32* null, i32** %597, align 8
  br label %598

598:                                              ; preds = %595, %594, %561
  %599 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %600 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %599, i32 0, i32 2
  %601 = load i32, i32* %600, align 8
  switch i32 %601, label %681 [
    i32 135, label %602
    i32 130, label %626
    i32 129, label %644
    i32 128, label %645
    i32 134, label %663
  ]

602:                                              ; preds = %598
  %603 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %604 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %603, i32 0, i32 16
  %605 = load i32*, i32** %604, align 8
  %606 = icmp ne i32* %605, null
  br i1 %606, label %607, label %616

607:                                              ; preds = %602
  %608 = load i8*, i8** @texts_autosync_aes_tco, align 8
  %609 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %610 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %609, i32 0, i32 15
  store i8* %608, i8** %610, align 8
  %611 = load i8*, i8** @texts_autosync_aes_tco, align 8
  %612 = call i8* @ARRAY_SIZE(i8* %611)
  %613 = ptrtoint i8* %612 to i32
  %614 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %615 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %614, i32 0, i32 11
  store i32 %613, i32* %615, align 4
  br label %625

616:                                              ; preds = %602
  %617 = load i8*, i8** @texts_autosync_aes, align 8
  %618 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %619 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %618, i32 0, i32 15
  store i8* %617, i8** %619, align 8
  %620 = load i8*, i8** @texts_autosync_aes, align 8
  %621 = call i8* @ARRAY_SIZE(i8* %620)
  %622 = ptrtoint i8* %621 to i32
  %623 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %624 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %623, i32 0, i32 11
  store i32 %622, i32* %624, align 4
  br label %625

625:                                              ; preds = %616, %607
  br label %681

626:                                              ; preds = %598
  %627 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %628 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %627, i32 0, i32 16
  %629 = load i32*, i32** %628, align 8
  %630 = icmp ne i32* %629, null
  br i1 %630, label %631, label %637

631:                                              ; preds = %626
  %632 = load i8*, i8** @texts_autosync_madi_tco, align 8
  %633 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %634 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %633, i32 0, i32 15
  store i8* %632, i8** %634, align 8
  %635 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %636 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %635, i32 0, i32 11
  store i32 4, i32* %636, align 4
  br label %643

637:                                              ; preds = %626
  %638 = load i8*, i8** @texts_autosync_madi, align 8
  %639 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %640 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %639, i32 0, i32 15
  store i8* %638, i8** %640, align 8
  %641 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %642 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %641, i32 0, i32 11
  store i32 3, i32* %642, align 4
  br label %643

643:                                              ; preds = %637, %631
  br label %681

644:                                              ; preds = %598
  br label %681

645:                                              ; preds = %598
  %646 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %647 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %646, i32 0, i32 16
  %648 = load i32*, i32** %647, align 8
  %649 = icmp ne i32* %648, null
  br i1 %649, label %650, label %656

650:                                              ; preds = %645
  %651 = load i8*, i8** @texts_autosync_raydat_tco, align 8
  %652 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %653 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %652, i32 0, i32 15
  store i8* %651, i8** %653, align 8
  %654 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %655 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %654, i32 0, i32 11
  store i32 9, i32* %655, align 4
  br label %662

656:                                              ; preds = %645
  %657 = load i8*, i8** @texts_autosync_raydat, align 8
  %658 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %659 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %658, i32 0, i32 15
  store i8* %657, i8** %659, align 8
  %660 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %661 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %660, i32 0, i32 11
  store i32 8, i32* %661, align 4
  br label %662

662:                                              ; preds = %656, %650
  br label %681

663:                                              ; preds = %598
  %664 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %665 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %664, i32 0, i32 16
  %666 = load i32*, i32** %665, align 8
  %667 = icmp ne i32* %666, null
  br i1 %667, label %668, label %674

668:                                              ; preds = %663
  %669 = load i8*, i8** @texts_autosync_aio_tco, align 8
  %670 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %671 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %670, i32 0, i32 15
  store i8* %669, i8** %671, align 8
  %672 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %673 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %672, i32 0, i32 11
  store i32 6, i32* %673, align 4
  br label %680

674:                                              ; preds = %663
  %675 = load i8*, i8** @texts_autosync_aio, align 8
  %676 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %677 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %676, i32 0, i32 15
  store i8* %675, i8** %677, align 8
  %678 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %679 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %678, i32 0, i32 11
  store i32 5, i32* %679, align 4
  br label %680

680:                                              ; preds = %674, %668
  br label %681

681:                                              ; preds = %598, %680, %662, %644, %643, %625
  %682 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %683 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %682, i32 0, i32 14
  %684 = load i32, i32* @hdspm_midi_tasklet, align 4
  %685 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %686 = ptrtoint %struct.hdspm* %685 to i64
  %687 = call i32 @tasklet_init(i32* %683, i32 %684, i64 %686)
  %688 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %689 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %688, i32 0, i32 2
  %690 = load i32, i32* %689, align 8
  %691 = icmp ne i32 %690, 129
  br i1 %691, label %692, label %726

692:                                              ; preds = %681
  %693 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %694 = load i32, i32* @HDSPM_midiStatusIn0, align 4
  %695 = call i32 @hdspm_read(%struct.hdspm* %693, i32 %694)
  %696 = ashr i32 %695, 8
  %697 = and i32 %696, 16777215
  %698 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %699 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %698, i32 0, i32 12
  store i32 %697, i32* %699, align 8
  %700 = load i32*, i32** @id, align 8
  %701 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %702 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %701, i32 0, i32 13
  %703 = load i64, i64* %702, align 8
  %704 = getelementptr inbounds i32, i32* %700, i64 %703
  %705 = load i32, i32* %704, align 4
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %725, label %707

707:                                              ; preds = %692
  %708 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %709 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %708, i32 0, i32 12
  %710 = load i32, i32* %709, align 8
  %711 = icmp ne i32 %710, 16777215
  br i1 %711, label %712, label %725

712:                                              ; preds = %707
  %713 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %714 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %713, i32 0, i32 1
  %715 = load i32, i32* %714, align 4
  %716 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %717 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %716, i32 0, i32 12
  %718 = load i32, i32* %717, align 8
  %719 = call i32 @snprintf(i32 %715, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 %718)
  %720 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %721 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %722 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %721, i32 0, i32 1
  %723 = load i32, i32* %722, align 4
  %724 = call i32 @snd_card_set_id(%struct.snd_card* %720, i32 %723)
  br label %725

725:                                              ; preds = %712, %707, %692
  br label %726

726:                                              ; preds = %725, %681
  %727 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %728 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %727, i32 0, i32 0
  %729 = load i32, i32* %728, align 4
  %730 = call i32 (i32, i8*, ...) @dev_dbg(i32 %729, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %731 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %732 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %733 = call i32 @snd_hdspm_create_alsa_devices(%struct.snd_card* %731, %struct.hdspm* %732)
  store i32 %733, i32* %7, align 4
  %734 = load i32, i32* %7, align 4
  %735 = icmp slt i32 %734, 0
  br i1 %735, label %736, label %738

736:                                              ; preds = %726
  %737 = load i32, i32* %7, align 4
  store i32 %737, i32* %3, align 4
  br label %741

738:                                              ; preds = %726
  %739 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %740 = call i32 @snd_hdspm_initialize_midi_flush(%struct.hdspm* %739)
  store i32 0, i32* %3, align 4
  br label %741

741:                                              ; preds = %738, %736, %242, %207, %164, %131, %120, %103
  %742 = load i32, i32* %3, align 4
  ret i32 %742
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @ioremap_nocache(i64, i64) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.hdspm*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @hdspm_read(%struct.hdspm*, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @hdspm_tco_write(%struct.hdspm*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @snd_card_set_id(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_hdspm_create_alsa_devices(%struct.snd_card*, %struct.hdspm*) #1

declare dso_local i32 @snd_hdspm_initialize_midi_flush(%struct.hdspm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
