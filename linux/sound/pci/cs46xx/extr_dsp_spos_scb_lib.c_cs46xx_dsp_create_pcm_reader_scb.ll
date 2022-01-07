; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_pcm_reader_scb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_pcm_reader_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.TYPE_8__*, %struct.dsp_spos_instance* }
%struct.TYPE_8__ = type { i32 }
%struct.dsp_spos_instance = type { i32* }
%struct.dsp_scb_descriptor = type { i32 }
%struct.dsp_generic_scb = type { i32, i32, %struct.TYPE_7__, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@DMA_RQ_C1_SOURCE_ON_HOST = common dso_local global i64 0, align 8
@DMA_RQ_C1_SOURCE_MOD1024 = common dso_local global i64 0, align 8
@DMA_RQ_C1_DEST_MOD32 = common dso_local global i64 0, align 8
@DMA_RQ_C1_WRITEBACK_SRC_FLAG = common dso_local global i64 0, align 8
@DMA_RQ_C1_WRITEBACK_DEST_FLAG = common dso_local global i64 0, align 8
@NULL_SCB_ADDR = common dso_local global i32 0, align 4
@RSCONFIG_DMA_ENABLE = common dso_local global i32 0, align 4
@RSCONFIG_MAX_DMA_SIZE_SHIFT = common dso_local global i32 0, align 4
@RSCONFIG_STREAM_NUM_SHIFT = common dso_local global i32 0, align 4
@RSCONFIG_SAMPLE_16STEREO = common dso_local global i32 0, align 4
@RSCONFIG_MODULO_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"NULLALGORITHM\00", align 1
@SYMBOL_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"dsp_spos: symbol NULLALGORITHM not found\0A\00", align 1
@DMA_RQ_C2_AC_NONE = common dso_local global i64 0, align 8
@DMA_RQ_C2_SIGNAL_SOURCE_PINGPONG = common dso_local global i64 0, align 8
@DMA_RQ_SD_SP_SAMPLE_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dsp_scb_descriptor* (%struct.snd_cs46xx*, i8*, i32, i32, i32, i32, %struct.dsp_scb_descriptor*, i32)* @cs46xx_dsp_create_pcm_reader_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dsp_scb_descriptor* @cs46xx_dsp_create_pcm_reader_scb(%struct.snd_cs46xx* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.dsp_scb_descriptor* %6, i32 %7) #0 {
  %9 = alloca %struct.dsp_scb_descriptor*, align 8
  %10 = alloca %struct.snd_cs46xx*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dsp_scb_descriptor*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.dsp_spos_instance*, align 8
  %19 = alloca %struct.dsp_scb_descriptor*, align 8
  %20 = alloca %struct.dsp_generic_scb, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.dsp_scb_descriptor* %6, %struct.dsp_scb_descriptor** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %10, align 8
  %22 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %21, i32 0, i32 1
  %23 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %22, align 8
  store %struct.dsp_spos_instance* %23, %struct.dsp_spos_instance** %18, align 8
  %24 = getelementptr inbounds %struct.dsp_generic_scb, %struct.dsp_generic_scb* %20, i32 0, i32 0
  %25 = load i64, i64* @DMA_RQ_C1_SOURCE_ON_HOST, align 8
  %26 = load i64, i64* @DMA_RQ_C1_SOURCE_MOD1024, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* @DMA_RQ_C1_DEST_MOD32, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* @DMA_RQ_C1_WRITEBACK_SRC_FLAG, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* @DMA_RQ_C1_WRITEBACK_DEST_FLAG, align 8
  %33 = add nsw i64 %31, %32
  %34 = add nsw i64 %33, 15
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %24, align 4
  %36 = getelementptr inbounds %struct.dsp_generic_scb, %struct.dsp_generic_scb* %20, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.dsp_generic_scb, %struct.dsp_generic_scb* %20, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* @NULL_SCB_ADDR, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %41 = load i32, i32* @NULL_SCB_ADDR, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %44 = load i32, i32* @NULL_SCB_ADDR, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds %struct.dsp_generic_scb, %struct.dsp_generic_scb* %20, i32 0, i32 3
  %46 = load i32, i32* @RSCONFIG_DMA_ENABLE, align 4
  %47 = load i32, i32* @RSCONFIG_MAX_DMA_SIZE_SHIFT, align 4
  %48 = shl i32 19, %47
  %49 = add nsw i32 %46, %48
  %50 = load i32, i32* %13, align 4
  %51 = ashr i32 %50, 4
  %52 = load i32, i32* @RSCONFIG_STREAM_NUM_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = add nsw i32 %49, %53
  %55 = load i32, i32* @RSCONFIG_SAMPLE_16STEREO, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* @RSCONFIG_MODULO_32, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %45, align 4
  %59 = getelementptr inbounds %struct.dsp_generic_scb, %struct.dsp_generic_scb* %20, i32 0, i32 4
  %60 = load i32, i32* %12, align 4
  %61 = shl i32 %60, 16
  store i32 %61, i32* %59, align 4
  %62 = getelementptr inbounds %struct.dsp_generic_scb, %struct.dsp_generic_scb* %20, i32 0, i32 5
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds %struct.dsp_generic_scb, %struct.dsp_generic_scb* %20, i32 0, i32 6
  store i32 65535, i32* %63, align 4
  %64 = getelementptr inbounds %struct.dsp_generic_scb, %struct.dsp_generic_scb* %20, i32 0, i32 7
  store i32 0, i32* %64, align 4
  %65 = getelementptr inbounds %struct.dsp_generic_scb, %struct.dsp_generic_scb* %20, i32 0, i32 8
  %66 = bitcast %struct.TYPE_6__* %65 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %66, i8 0, i64 20, i1 false)
  %67 = getelementptr inbounds %struct.dsp_generic_scb, %struct.dsp_generic_scb* %20, i32 0, i32 9
  %68 = bitcast %struct.TYPE_5__* %67 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %68, i8 0, i64 16, i1 false)
  %69 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %18, align 8
  %70 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %91

73:                                               ; preds = %8
  %74 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %10, align 8
  %75 = load i32, i32* @SYMBOL_CODE, align 4
  %76 = call i32* @cs46xx_dsp_lookup_symbol(%struct.snd_cs46xx* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %18, align 8
  %78 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %77, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %18, align 8
  %80 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %73
  %84 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %10, align 8
  %85 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dsp_scb_descriptor* null, %struct.dsp_scb_descriptor** %9, align 8
  br label %103

90:                                               ; preds = %73
  br label %91

91:                                               ; preds = %90, %8
  %92 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %10, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = bitcast %struct.dsp_generic_scb* %20 to i32*
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %18, align 8
  %97 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %16, align 8
  %100 = load i32, i32* %17, align 4
  %101 = call %struct.dsp_scb_descriptor* @_dsp_create_generic_scb(%struct.snd_cs46xx* %92, i8* %93, i32* %94, i32 %95, i32* %98, %struct.dsp_scb_descriptor* %99, i32 %100)
  store %struct.dsp_scb_descriptor* %101, %struct.dsp_scb_descriptor** %19, align 8
  %102 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %19, align 8
  store %struct.dsp_scb_descriptor* %102, %struct.dsp_scb_descriptor** %9, align 8
  br label %103

103:                                              ; preds = %91, %83
  %104 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %9, align 8
  ret %struct.dsp_scb_descriptor* %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @cs46xx_dsp_lookup_symbol(%struct.snd_cs46xx*, i8*, i32) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local %struct.dsp_scb_descriptor* @_dsp_create_generic_scb(%struct.snd_cs46xx*, i8*, i32*, i32, i32*, %struct.dsp_scb_descriptor*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
