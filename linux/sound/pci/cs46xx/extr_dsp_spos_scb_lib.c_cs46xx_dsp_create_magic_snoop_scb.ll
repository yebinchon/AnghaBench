; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_magic_snoop_scb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_magic_snoop_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }
%struct.dsp_scb_descriptor = type { i32 }
%struct.dsp_magic_snoop_task = type { i32, i32, %struct.TYPE_2__, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@RSCONFIG_SAMPLE_16STEREO = common dso_local global i64 0, align 8
@RSCONFIG_MODULO_64 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"MAGICSNOOPTASK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_magic_snoop_scb(%struct.snd_cs46xx* %0, i8* %1, i32 %2, i32 %3, %struct.dsp_scb_descriptor* %4, %struct.dsp_scb_descriptor* %5, i32 %6) #0 {
  %8 = alloca %struct.snd_cs46xx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dsp_scb_descriptor*, align 8
  %13 = alloca %struct.dsp_scb_descriptor*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dsp_scb_descriptor*, align 8
  %16 = alloca %struct.dsp_magic_snoop_task, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.dsp_scb_descriptor* %4, %struct.dsp_scb_descriptor** %12, align 8
  store %struct.dsp_scb_descriptor* %5, %struct.dsp_scb_descriptor** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %11, align 4
  %22 = shl i32 %21, 16
  store i32 %22, i32* %20, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %25 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %12, align 8
  %26 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 3
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 5
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 6
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 7
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 8
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 9
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 10
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 11
  %38 = load i64, i64* @RSCONFIG_SAMPLE_16STEREO, align 8
  %39 = load i64, i64* @RSCONFIG_MODULO_64, align 8
  %40 = add nsw i64 %38, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 8
  %42 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 12
  %43 = load i32, i32* %11, align 4
  %44 = shl i32 %43, 16
  store i32 %44, i32* %42, align 4
  %45 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 13
  store i32 0, i32* %45, align 8
  %46 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 14
  store i32 32768, i32* %46, align 4
  %47 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 15
  store i32 0, i32* %47, align 8
  %48 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 16
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds %struct.dsp_magic_snoop_task, %struct.dsp_magic_snoop_task* %16, i32 0, i32 17
  store i32 0, i32* %49, align 8
  %50 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = bitcast %struct.dsp_magic_snoop_task* %16 to i32*
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %13, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx* %50, i8* %51, i32* %52, i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.dsp_scb_descriptor* %54, i32 %55)
  store %struct.dsp_scb_descriptor* %56, %struct.dsp_scb_descriptor** %15, align 8
  %57 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %15, align 8
  ret %struct.dsp_scb_descriptor* %57
}

declare dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx*, i8*, i32*, i32, i8*, %struct.dsp_scb_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
