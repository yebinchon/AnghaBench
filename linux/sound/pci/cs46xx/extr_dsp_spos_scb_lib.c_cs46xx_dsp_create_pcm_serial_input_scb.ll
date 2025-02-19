; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_pcm_serial_input_scb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_pcm_serial_input_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }
%struct.dsp_scb_descriptor = type { i32 }
%struct.dsp_pcm_serial_input_scb = type { %struct.TYPE_4__, i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@RSCONFIG_SAMPLE_16STEREO = common dso_local global i64 0, align 8
@RSCONFIG_MODULO_16 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"PCMSERIALINPUTTASK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dsp_scb_descriptor* (%struct.snd_cs46xx*, i8*, i32, %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor*, i32)* @cs46xx_dsp_create_pcm_serial_input_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dsp_scb_descriptor* @cs46xx_dsp_create_pcm_serial_input_scb(%struct.snd_cs46xx* %0, i8* %1, i32 %2, %struct.dsp_scb_descriptor* %3, %struct.dsp_scb_descriptor* %4, i32 %5) #0 {
  %7 = alloca %struct.snd_cs46xx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dsp_scb_descriptor*, align 8
  %11 = alloca %struct.dsp_scb_descriptor*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dsp_scb_descriptor*, align 8
  %14 = alloca %struct.dsp_pcm_serial_input_scb, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dsp_scb_descriptor* %3, %struct.dsp_scb_descriptor** %10, align 8
  store %struct.dsp_scb_descriptor* %4, %struct.dsp_scb_descriptor** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = bitcast %struct.dsp_pcm_serial_input_scb* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 96, i1 false)
  %16 = getelementptr inbounds %struct.dsp_pcm_serial_input_scb, %struct.dsp_pcm_serial_input_scb* %14, i32 0, i32 1
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.dsp_pcm_serial_input_scb, %struct.dsp_pcm_serial_input_scb* %14, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.dsp_pcm_serial_input_scb, %struct.dsp_pcm_serial_input_scb* %14, i32 0, i32 6
  %19 = load i64, i64* @RSCONFIG_SAMPLE_16STEREO, align 8
  %20 = load i64, i64* @RSCONFIG_MODULO_16, align 8
  %21 = add nsw i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 4
  %23 = getelementptr inbounds %struct.dsp_pcm_serial_input_scb, %struct.dsp_pcm_serial_input_scb* %14, i32 0, i32 9
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %10, align 8
  %26 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 32768, i32* %28, align 4
  %29 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = bitcast %struct.dsp_pcm_serial_input_scb* %14 to i32*
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx* %29, i8* %30, i32* %31, i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.dsp_scb_descriptor* %33, i32 %34)
  store %struct.dsp_scb_descriptor* %35, %struct.dsp_scb_descriptor** %13, align 8
  %36 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %13, align 8
  ret %struct.dsp_scb_descriptor* %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx*, i8*, i32*, i32, i8*, %struct.dsp_scb_descriptor*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
