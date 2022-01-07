; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_async_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_async_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.TYPE_4__*, %struct.dsp_spos_instance* }
%struct.TYPE_4__ = type { i32 }
%struct.dsp_spos_instance = type { i32 }
%struct.dsp_scb_descriptor = type { %struct.dsp_scb_descriptor*, %struct.dsp_symbol_entry*, i32, %struct.dsp_scb_descriptor* }
%struct.dsp_symbol_entry = type { i32 }
%struct.dsp_spdifoscb = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i64, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.dsp_spdifiscb = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsp_async_codec_input_scb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"S16_ASYNCCODECINPUTTASK\00", align 1
@SYMBOL_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"dsp_spos: symbol S16_ASYNCCODECINPUTTASK not found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"SPDIFOTASK\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"dsp_spos: symbol SPDIFOTASK not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"SPDIFITASK\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"dsp_spos: symbol SPDIFITASK not found\0A\00", align 1
@DSP_SPOS_UUUU = common dso_local global i32 0, align 4
@RSCONFIG_SAMPLE_16MONO = common dso_local global i64 0, align 8
@RSCONFIG_MODULO_256 = common dso_local global i64 0, align 8
@SPDIFO_IP_OUTPUT_BUFFER1 = common dso_local global i32 0, align 4
@FG_TASK_HEADER_ADDR = common dso_local global i32 0, align 4
@NULL_SCB_ADDR = common dso_local global i32 0, align 4
@SPDIFO_SCB_INST = common dso_local global i64 0, align 8
@SPDIFOFIFOPointer = common dso_local global i64 0, align 8
@DSP_SPOS_UULO = common dso_local global i32 0, align 4
@DSP_SPOS_UUHI = common dso_local global i32 0, align 4
@DSP_SPOS_UU = common dso_local global i32 0, align 4
@DSP_SPOS_DC = common dso_local global i32 0, align 4
@SPDIFI_SCB_INST = common dso_local global i64 0, align 8
@SPDIFIFIFOPointer = common dso_local global i64 0, align 8
@RSCONFIG_MODULO_128 = common dso_local global i64 0, align 8
@SPDIFI_IP_OUTPUT_BUFFER1 = common dso_local global i32 0, align 4
@RSCONFIG_MODULO_64 = common dso_local global i64 0, align 8
@ASYNC_IP_OUTPUT_BUFFER1 = common dso_local global i32 0, align 4
@HFG_TREE_SCB = common dso_local global i64 0, align 8
@AsyncCIOFIFOPointer = common dso_local global i64 0, align 8
@RSCONFIG_SAMPLE_16STEREO = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"SPDIFOSCB\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"SPDIFISCB\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"AsynCodecInputSCB\00", align 1
@BA0_ASER_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_cs46xx*, %struct.dsp_scb_descriptor*)* @cs46xx_dsp_async_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs46xx_dsp_async_init(%struct.snd_cs46xx* %0, %struct.dsp_scb_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_cs46xx*, align 8
  %5 = alloca %struct.dsp_scb_descriptor*, align 8
  %6 = alloca %struct.dsp_spos_instance*, align 8
  %7 = alloca %struct.dsp_symbol_entry*, align 8
  %8 = alloca %struct.dsp_symbol_entry*, align 8
  %9 = alloca %struct.dsp_symbol_entry*, align 8
  %10 = alloca %struct.dsp_scb_descriptor*, align 8
  %11 = alloca %struct.dsp_scb_descriptor*, align 8
  %12 = alloca %struct.dsp_scb_descriptor*, align 8
  %13 = alloca %struct.dsp_spdifoscb, align 8
  %14 = alloca %struct.dsp_spdifiscb, align 8
  %15 = alloca %struct.dsp_async_codec_input_scb, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %4, align 8
  store %struct.dsp_scb_descriptor* %1, %struct.dsp_scb_descriptor** %5, align 8
  %16 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %17 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %16, i32 0, i32 1
  %18 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %17, align 8
  store %struct.dsp_spos_instance* %18, %struct.dsp_spos_instance** %6, align 8
  %19 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %20 = load i32, i32* @SYMBOL_CODE, align 4
  %21 = call %struct.dsp_symbol_entry* @cs46xx_dsp_lookup_symbol(%struct.snd_cs46xx* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20)
  store %struct.dsp_symbol_entry* %21, %struct.dsp_symbol_entry** %7, align 8
  %22 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %7, align 8
  %23 = icmp eq %struct.dsp_symbol_entry* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %26 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %310

33:                                               ; preds = %2
  %34 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %35 = load i32, i32* @SYMBOL_CODE, align 4
  %36 = call %struct.dsp_symbol_entry* @cs46xx_dsp_lookup_symbol(%struct.snd_cs46xx* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  store %struct.dsp_symbol_entry* %36, %struct.dsp_symbol_entry** %8, align 8
  %37 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %8, align 8
  %38 = icmp eq %struct.dsp_symbol_entry* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %41 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %310

48:                                               ; preds = %33
  %49 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %50 = load i32, i32* @SYMBOL_CODE, align 4
  %51 = call %struct.dsp_symbol_entry* @cs46xx_dsp_lookup_symbol(%struct.snd_cs46xx* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  store %struct.dsp_symbol_entry* %51, %struct.dsp_symbol_entry** %9, align 8
  %52 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %9, align 8
  %53 = icmp eq %struct.dsp_symbol_entry* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %56 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %310

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.dsp_spdifoscb, %struct.dsp_spdifoscb* %13, i32 0, i32 0
  %65 = load i32, i32* @DSP_SPOS_UUUU, align 4
  store i32 %65, i32* %64, align 8
  %66 = getelementptr inbounds %struct.dsp_spdifoscb, %struct.dsp_spdifoscb* %13, i32 0, i32 1
  store i32 176, i32* %66, align 4
  %67 = getelementptr inbounds %struct.dsp_spdifoscb, %struct.dsp_spdifoscb* %13, i32 0, i32 2
  %68 = load i64, i64* @RSCONFIG_SAMPLE_16MONO, align 8
  %69 = load i64, i64* @RSCONFIG_MODULO_256, align 8
  %70 = add nsw i64 %68, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  %72 = getelementptr inbounds %struct.dsp_spdifoscb, %struct.dsp_spdifoscb* %13, i32 0, i32 3
  %73 = load i32, i32* @SPDIFO_IP_OUTPUT_BUFFER1, align 4
  %74 = shl i32 %73, 16
  %75 = or i32 %74, 65532
  store i32 %75, i32* %72, align 4
  %76 = getelementptr inbounds %struct.dsp_spdifoscb, %struct.dsp_spdifoscb* %13, i32 0, i32 4
  store i32 0, i32* %76, align 8
  %77 = getelementptr inbounds %struct.dsp_spdifoscb, %struct.dsp_spdifoscb* %13, i32 0, i32 5
  store i32 0, i32* %77, align 4
  %78 = getelementptr inbounds %struct.dsp_spdifoscb, %struct.dsp_spdifoscb* %13, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %81 = load i32, i32* @FG_TASK_HEADER_ADDR, align 4
  store i32 %81, i32* %80, align 4
  %82 = getelementptr inbounds %struct.dsp_spdifoscb, %struct.dsp_spdifoscb* %13, i32 0, i32 7
  %83 = load i32, i32* @NULL_SCB_ADDR, align 4
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %82, align 8
  %85 = getelementptr inbounds %struct.dsp_spdifoscb, %struct.dsp_spdifoscb* %13, i32 0, i32 8
  %86 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %8, align 8
  %87 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %85, align 8
  %89 = getelementptr inbounds %struct.dsp_spdifoscb, %struct.dsp_spdifoscb* %13, i32 0, i32 9
  %90 = load i64, i64* @SPDIFO_SCB_INST, align 8
  %91 = load i64, i64* @SPDIFOFIFOPointer, align 8
  %92 = add nsw i64 %90, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 4
  %94 = getelementptr inbounds %struct.dsp_spdifoscb, %struct.dsp_spdifoscb* %13, i32 0, i32 10
  store i32 64, i32* %94, align 8
  %95 = getelementptr inbounds %struct.dsp_spdifoscb, %struct.dsp_spdifoscb* %13, i32 0, i32 11
  store i32 32844, i32* %95, align 4
  %96 = getelementptr inbounds %struct.dsp_spdifoscb, %struct.dsp_spdifoscb* %13, i32 0, i32 12
  store i32 0, i32* %96, align 8
  %97 = getelementptr inbounds %struct.dsp_spdifoscb, %struct.dsp_spdifoscb* %13, i32 0, i32 13
  store i32 264, i32* %97, align 4
  %98 = getelementptr inbounds %struct.dsp_spdifoscb, %struct.dsp_spdifoscb* %13, i32 0, i32 14
  store i64 1, i64* %98, align 8
  %99 = getelementptr inbounds %struct.dsp_spdifoscb, %struct.dsp_spdifoscb* %13, i32 0, i32 15
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* @DSP_SPOS_UUUU, align 4
  store i32 %101, i32* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  store i32 0, i32* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  store i32 0, i32* %104, align 4
  %105 = getelementptr inbounds %struct.dsp_spdifoscb, %struct.dsp_spdifoscb* %13, i32 0, i32 16
  store i32 0, i32* %105, align 8
  %106 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 0
  %107 = load i32, i32* @DSP_SPOS_UULO, align 4
  store i32 %107, i32* %106, align 8
  %108 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 1
  %109 = load i32, i32* @DSP_SPOS_UUHI, align 4
  store i32 %109, i32* %108, align 4
  %110 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 2
  store i32 0, i32* %110, align 8
  %111 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 3
  store i32 0, i32* %111, align 4
  %112 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 4
  store i32 1, i32* %112, align 8
  %113 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 5
  store i32 4000, i32* %113, align 4
  %114 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 6
  %115 = load i32, i32* @DSP_SPOS_UUUU, align 4
  store i32 %115, i32* %114, align 8
  %116 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 7
  store i32 0, i32* %116, align 4
  %117 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 8
  %118 = load i32, i32* @DSP_SPOS_UUHI, align 4
  %119 = sext i32 %118 to i64
  store i64 %119, i64* %117, align 8
  %120 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 9
  %121 = load i32, i32* @DSP_SPOS_UUUU, align 4
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %120, align 8
  %123 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 10
  %124 = load i32, i32* @DSP_SPOS_UU, align 4
  store i32 %124, i32* %123, align 8
  %125 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 11
  %126 = load i32, i32* @DSP_SPOS_DC, align 4
  store i32 %126, i32* %125, align 4
  %127 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 12
  %128 = load i32, i32* @DSP_SPOS_UUUU, align 4
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %127, align 8
  %130 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 13
  %131 = load i64, i64* @SPDIFO_SCB_INST, align 8
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %130, align 8
  %133 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 14
  %134 = load i32, i32* @NULL_SCB_ADDR, align 4
  store i32 %134, i32* %133, align 4
  %135 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 15
  %136 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %9, align 8
  %137 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %135, align 8
  %139 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 16
  %140 = load i64, i64* @SPDIFI_SCB_INST, align 8
  %141 = load i64, i64* @SPDIFIFIFOPointer, align 8
  %142 = add nsw i64 %140, %141
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %139, align 4
  %144 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 17
  %145 = load i64, i64* @RSCONFIG_SAMPLE_16MONO, align 8
  %146 = load i64, i64* @RSCONFIG_MODULO_128, align 8
  %147 = add nsw i64 %145, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %144, align 8
  %149 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 18
  %150 = load i32, i32* @SPDIFI_IP_OUTPUT_BUFFER1, align 4
  %151 = shl i32 %150, 16
  %152 = or i32 %151, 65532
  store i32 %152, i32* %149, align 4
  %153 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 19
  store i32 32840, i32* %153, align 8
  %154 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 20
  store i32 0, i32* %154, align 4
  %155 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 21
  store i32 496, i32* %155, align 8
  %156 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 22
  store i32 1, i32* %156, align 4
  %157 = getelementptr inbounds %struct.dsp_spdifiscb, %struct.dsp_spdifiscb* %14, i32 0, i32 23
  %158 = load i32, i32* @DSP_SPOS_UUUU, align 4
  store i32 %158, i32* %157, align 8
  %159 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 0
  %160 = load i32, i32* @DSP_SPOS_UUUU, align 4
  store i32 %160, i32* %159, align 8
  %161 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 1
  store i32 0, i32* %161, align 4
  %162 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 2
  store i32 0, i32* %162, align 8
  %163 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 3
  store i32 1, i32* %163, align 4
  %164 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 4
  store i32 4000, i32* %164, align 8
  %165 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 5
  store i32 280, i32* %165, align 4
  %166 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 6
  store i32 1, i32* %166, align 8
  %167 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 7
  %168 = load i64, i64* @RSCONFIG_SAMPLE_16MONO, align 8
  %169 = load i64, i64* @RSCONFIG_MODULO_64, align 8
  %170 = add nsw i64 %168, %169
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %167, align 4
  %172 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 8
  %173 = load i32, i32* @ASYNC_IP_OUTPUT_BUFFER1, align 4
  %174 = shl i32 %173, 16
  %175 = or i32 %174, 65532
  store i32 %175, i32* %172, align 8
  %176 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 9
  %177 = load i32, i32* @DSP_SPOS_UU, align 4
  store i32 %177, i32* %176, align 4
  %178 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 10
  store i32 3, i32* %178, align 8
  %179 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 11
  %180 = load i32, i32* @DSP_SPOS_UUUU, align 4
  store i32 %180, i32* %179, align 4
  %181 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 12
  %182 = load i64, i64* @SPDIFI_SCB_INST, align 8
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %181, align 8
  %184 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 13
  %185 = load i32, i32* @NULL_SCB_ADDR, align 4
  store i32 %185, i32* %184, align 4
  %186 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 14
  %187 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %7, align 8
  %188 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %186, align 8
  %190 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 15
  %191 = load i64, i64* @HFG_TREE_SCB, align 8
  %192 = load i64, i64* @AsyncCIOFIFOPointer, align 8
  %193 = add nsw i64 %191, %192
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %190, align 4
  %195 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 16
  %196 = load i64, i64* @RSCONFIG_SAMPLE_16STEREO, align 8
  %197 = load i64, i64* @RSCONFIG_MODULO_64, align 8
  %198 = add nsw i64 %196, %197
  store i64 %198, i64* %195, align 8
  %199 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 17
  %200 = load i32, i32* @ASYNC_IP_OUTPUT_BUFFER1, align 4
  %201 = shl i32 %200, 16
  %202 = sext i32 %201 to i64
  store i64 %202, i64* %199, align 8
  %203 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 18
  store i32 0, i32* %203, align 8
  %204 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 19
  store i32 0, i32* %204, align 4
  %205 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 20
  store i64 0, i64* %205, align 8
  %206 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 21
  store i32 0, i32* %206, align 8
  %207 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 22
  store i32 0, i32* %207, align 4
  %208 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 23
  store i64 0, i64* %208, align 8
  %209 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 24
  store i32 0, i32* %209, align 8
  %210 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 25
  store i32 0, i32* %210, align 4
  %211 = getelementptr inbounds %struct.dsp_async_codec_input_scb, %struct.dsp_async_codec_input_scb* %15, i32 0, i32 26
  store i32 0, i32* %211, align 8
  %212 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %213 = bitcast %struct.dsp_spdifoscb* %13 to i32*
  %214 = load i64, i64* @SPDIFO_SCB_INST, align 8
  %215 = call %struct.dsp_scb_descriptor* @cs46xx_dsp_create_scb(%struct.snd_cs46xx* %212, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* %213, i64 %214)
  store %struct.dsp_scb_descriptor* %215, %struct.dsp_scb_descriptor** %11, align 8
  %216 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %11, align 8
  %217 = icmp ne %struct.dsp_scb_descriptor* %216, null
  %218 = xor i1 %217, true
  %219 = zext i1 %218 to i32
  %220 = call i64 @snd_BUG_ON(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %63
  %223 = load i32, i32* @EIO, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %3, align 4
  br label %310

225:                                              ; preds = %63
  %226 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %227 = bitcast %struct.dsp_spdifiscb* %14 to i32*
  %228 = load i64, i64* @SPDIFI_SCB_INST, align 8
  %229 = call %struct.dsp_scb_descriptor* @cs46xx_dsp_create_scb(%struct.snd_cs46xx* %226, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32* %227, i64 %228)
  store %struct.dsp_scb_descriptor* %229, %struct.dsp_scb_descriptor** %10, align 8
  %230 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %10, align 8
  %231 = icmp ne %struct.dsp_scb_descriptor* %230, null
  %232 = xor i1 %231, true
  %233 = zext i1 %232 to i32
  %234 = call i64 @snd_BUG_ON(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %225
  %237 = load i32, i32* @EIO, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %3, align 4
  br label %310

239:                                              ; preds = %225
  %240 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %241 = bitcast %struct.dsp_async_codec_input_scb* %15 to i32*
  %242 = load i64, i64* @HFG_TREE_SCB, align 8
  %243 = call %struct.dsp_scb_descriptor* @cs46xx_dsp_create_scb(%struct.snd_cs46xx* %240, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32* %241, i64 %242)
  store %struct.dsp_scb_descriptor* %243, %struct.dsp_scb_descriptor** %12, align 8
  %244 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %12, align 8
  %245 = icmp ne %struct.dsp_scb_descriptor* %244, null
  %246 = xor i1 %245, true
  %247 = zext i1 %246 to i32
  %248 = call i64 @snd_BUG_ON(i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %239
  %251 = load i32, i32* @EIO, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %3, align 4
  br label %310

253:                                              ; preds = %239
  %254 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %12, align 8
  %255 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %254, i32 0, i32 0
  store %struct.dsp_scb_descriptor* null, %struct.dsp_scb_descriptor** %255, align 8
  %256 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %10, align 8
  %257 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %12, align 8
  %258 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %257, i32 0, i32 3
  store %struct.dsp_scb_descriptor* %256, %struct.dsp_scb_descriptor** %258, align 8
  %259 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %260 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %12, align 8
  %263 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %262, i32 0, i32 2
  store i32 %261, i32* %263, align 8
  %264 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %7, align 8
  %265 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %12, align 8
  %266 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %265, i32 0, i32 1
  store %struct.dsp_symbol_entry* %264, %struct.dsp_symbol_entry** %266, align 8
  %267 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %12, align 8
  %268 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %10, align 8
  %269 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %268, i32 0, i32 0
  store %struct.dsp_scb_descriptor* %267, %struct.dsp_scb_descriptor** %269, align 8
  %270 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %11, align 8
  %271 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %10, align 8
  %272 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %271, i32 0, i32 3
  store %struct.dsp_scb_descriptor* %270, %struct.dsp_scb_descriptor** %272, align 8
  %273 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %274 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %10, align 8
  %277 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %276, i32 0, i32 2
  store i32 %275, i32* %277, align 8
  %278 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %9, align 8
  %279 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %10, align 8
  %280 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %279, i32 0, i32 1
  store %struct.dsp_symbol_entry* %278, %struct.dsp_symbol_entry** %280, align 8
  %281 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %10, align 8
  %282 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %11, align 8
  %283 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %282, i32 0, i32 0
  store %struct.dsp_scb_descriptor* %281, %struct.dsp_scb_descriptor** %283, align 8
  %284 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %5, align 8
  %285 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %11, align 8
  %286 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %285, i32 0, i32 3
  store %struct.dsp_scb_descriptor* %284, %struct.dsp_scb_descriptor** %286, align 8
  %287 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %288 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %11, align 8
  %291 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 8
  %292 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %8, align 8
  %293 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %11, align 8
  %294 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %293, i32 0, i32 1
  store %struct.dsp_symbol_entry* %292, %struct.dsp_symbol_entry** %294, align 8
  %295 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %11, align 8
  %296 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %5, align 8
  %297 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %296, i32 0, i32 0
  store %struct.dsp_scb_descriptor* %295, %struct.dsp_scb_descriptor** %297, align 8
  %298 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %299 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %11, align 8
  %300 = call i32 @cs46xx_dsp_proc_register_scb_desc(%struct.snd_cs46xx* %298, %struct.dsp_scb_descriptor* %299)
  %301 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %302 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %10, align 8
  %303 = call i32 @cs46xx_dsp_proc_register_scb_desc(%struct.snd_cs46xx* %301, %struct.dsp_scb_descriptor* %302)
  %304 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %305 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %12, align 8
  %306 = call i32 @cs46xx_dsp_proc_register_scb_desc(%struct.snd_cs46xx* %304, %struct.dsp_scb_descriptor* %305)
  %307 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %308 = load i32, i32* @BA0_ASER_MASTER, align 4
  %309 = call i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx* %307, i32 %308, i32 1)
  store i32 0, i32* %3, align 4
  br label %310

310:                                              ; preds = %253, %250, %236, %222, %54, %39, %24
  %311 = load i32, i32* %3, align 4
  ret i32 %311
}

declare dso_local %struct.dsp_symbol_entry* @cs46xx_dsp_lookup_symbol(%struct.snd_cs46xx*, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_scb(%struct.snd_cs46xx*, i8*, i32*, i64) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @cs46xx_dsp_proc_register_scb_desc(%struct.snd_cs46xx*, %struct.dsp_scb_descriptor*) #1

declare dso_local i32 @snd_cs46xx_pokeBA0(%struct.snd_cs46xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
