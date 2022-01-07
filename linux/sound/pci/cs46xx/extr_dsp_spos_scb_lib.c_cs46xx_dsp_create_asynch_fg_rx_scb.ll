; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_asynch_fg_rx_scb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_asynch_fg_rx_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { i32, i32 }
%struct.dsp_scb_descriptor = type { i32 }
%struct.dsp_asynch_fg_rx_scb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@RSCONFIG_MODULO_128 = common dso_local global i32 0, align 4
@RSCONFIG_SAMPLE_16STEREO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ASYNCHFGRXCODE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_asynch_fg_rx_scb(%struct.snd_cs46xx* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.dsp_scb_descriptor* %5, i32 %6) #0 {
  %8 = alloca %struct.snd_cs46xx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dsp_scb_descriptor*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dsp_spos_instance*, align 8
  %16 = alloca %struct.dsp_scb_descriptor*, align 8
  %17 = alloca %struct.dsp_asynch_fg_rx_scb, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.dsp_scb_descriptor* %5, %struct.dsp_scb_descriptor** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %8, align 8
  %19 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %18, i32 0, i32 0
  %20 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %19, align 8
  store %struct.dsp_spos_instance* %20, %struct.dsp_spos_instance** %15, align 8
  %21 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 0
  store i32 65024, i32* %21, align 4
  %22 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 1
  store i32 511, i32* %22, align 4
  %23 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 2
  store i32 100, i32* %23, align 4
  %24 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 3
  store i32 28, i32* %24, align 4
  %25 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 4
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 5
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 6
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 7
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 8
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 9
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 10
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 11
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 12
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 13
  %37 = load i32, i32* @RSCONFIG_MODULO_128, align 4
  %38 = load i32, i32* @RSCONFIG_SAMPLE_16STEREO, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %36, align 4
  %40 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 14
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 64
  %43 = shl i32 %42, 16
  store i32 %43, i32* %40, align 4
  %44 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 15
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 402653184, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %47 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %15, align 8
  %48 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 65535, %49
  store i32 %50, i32* %46, align 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %52 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %15, align 8
  %53 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 65535, %54
  store i32 %55, i32* %51, align 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %57 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %15, align 8
  %58 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 65535, %59
  store i32 %60, i32* %56, align 4
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  %62 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %15, align 8
  %63 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 65535, %64
  store i32 %65, i32* %61, align 4
  %66 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 16
  store i32 0, i32* %66, align 4
  %67 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 17
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 18
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, %struct.dsp_asynch_fg_rx_scb* %17, i32 0, i32 19
  store i32 0, i32* %69, align 4
  %70 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %8, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = bitcast %struct.dsp_asynch_fg_rx_scb* %17 to i32*
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %13, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx* %70, i8* %71, i32* %72, i32 %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.dsp_scb_descriptor* %74, i32 %75)
  store %struct.dsp_scb_descriptor* %76, %struct.dsp_scb_descriptor** %16, align 8
  %77 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %16, align 8
  ret %struct.dsp_scb_descriptor* %77
}

declare dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx*, i8*, i32*, i32, i8*, %struct.dsp_scb_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
