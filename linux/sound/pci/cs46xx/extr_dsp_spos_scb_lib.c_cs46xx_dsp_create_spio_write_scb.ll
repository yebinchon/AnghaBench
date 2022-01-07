; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_spio_write_scb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_spio_write_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }
%struct.dsp_scb_descriptor = type { i32 }
%struct.dsp_spio_write_scb = type { %struct.TYPE_4__, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"SPIOWRITE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_spio_write_scb(%struct.snd_cs46xx* %0, i8* %1, i32 %2, %struct.dsp_scb_descriptor* %3, i32 %4) #0 {
  %6 = alloca %struct.snd_cs46xx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dsp_scb_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dsp_scb_descriptor*, align 8
  %12 = alloca %struct.dsp_spio_write_scb, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.dsp_scb_descriptor* %3, %struct.dsp_scb_descriptor** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = bitcast %struct.dsp_spio_write_scb* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 84, i1 false)
  %14 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast %struct.dsp_spio_write_scb* %12 to i32*
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx* %14, i8* %15, i32* %16, i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.dsp_scb_descriptor* %18, i32 %19)
  store %struct.dsp_scb_descriptor* %20, %struct.dsp_scb_descriptor** %11, align 8
  %21 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %11, align 8
  ret %struct.dsp_scb_descriptor* %21
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
