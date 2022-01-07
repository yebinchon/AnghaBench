; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_codec_out_scb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_codec_out_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }
%struct.dsp_scb_descriptor = type { i32 }
%struct.dsp_codec_output_scb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@NULL_SCB_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"S16_CODECOUTPUTTASK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_codec_out_scb(%struct.snd_cs46xx* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.dsp_scb_descriptor* %6, i32 %7) #0 {
  %9 = alloca %struct.snd_cs46xx*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dsp_scb_descriptor*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dsp_scb_descriptor*, align 8
  %18 = alloca %struct.dsp_codec_output_scb, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.dsp_scb_descriptor* %6, %struct.dsp_scb_descriptor** %15, align 8
  store i32 %7, i32* %16, align 4
  %19 = getelementptr inbounds %struct.dsp_codec_output_scb, %struct.dsp_codec_output_scb* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.dsp_codec_output_scb, %struct.dsp_codec_output_scb* %18, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.dsp_codec_output_scb, %struct.dsp_codec_output_scb* %18, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.dsp_codec_output_scb, %struct.dsp_codec_output_scb* %18, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.dsp_codec_output_scb, %struct.dsp_codec_output_scb* %18, i32 0, i32 4
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.dsp_codec_output_scb, %struct.dsp_codec_output_scb* %18, i32 0, i32 5
  %25 = load i32, i32* @NULL_SCB_ADDR, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.dsp_codec_output_scb, %struct.dsp_codec_output_scb* %18, i32 0, i32 6
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.dsp_codec_output_scb, %struct.dsp_codec_output_scb* %18, i32 0, i32 7
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.dsp_codec_output_scb, %struct.dsp_codec_output_scb* %18, i32 0, i32 8
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.dsp_codec_output_scb, %struct.dsp_codec_output_scb* %18, i32 0, i32 9
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.dsp_codec_output_scb, %struct.dsp_codec_output_scb* %18, i32 0, i32 10
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.dsp_codec_output_scb, %struct.dsp_codec_output_scb* %18, i32 0, i32 11
  store i32 128, i32* %33, align 4
  %34 = getelementptr inbounds %struct.dsp_codec_output_scb, %struct.dsp_codec_output_scb* %18, i32 0, i32 12
  %35 = bitcast %struct.TYPE_4__* %34 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %35, i8 0, i64 20, i1 false)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.dsp_codec_output_scb, %struct.dsp_codec_output_scb* %18, i32 0, i32 13
  %39 = bitcast %struct.TYPE_3__* %38 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %39, i8 0, i64 16, i1 false)
  %40 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = bitcast %struct.dsp_codec_output_scb* %18 to i32*
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %15, align 8
  %45 = load i32, i32* %16, align 4
  %46 = call %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx* %40, i8* %41, i32* %42, i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.dsp_scb_descriptor* %44, i32 %45)
  store %struct.dsp_scb_descriptor* %46, %struct.dsp_scb_descriptor** %17, align 8
  %47 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  ret %struct.dsp_scb_descriptor* %47
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
