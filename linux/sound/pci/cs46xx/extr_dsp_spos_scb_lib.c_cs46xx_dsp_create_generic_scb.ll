; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_generic_scb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_generic_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dsp_scb_descriptor = type { i32 }
%struct.dsp_symbol_entry = type { i32 }

@SYMBOL_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"dsp_spos: symbol %s not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dsp_scb_descriptor* (%struct.snd_cs46xx*, i8*, i32*, i32, i8*, %struct.dsp_scb_descriptor*, i32)* @cs46xx_dsp_create_generic_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx* %0, i8* %1, i32* %2, i32 %3, i8* %4, %struct.dsp_scb_descriptor* %5, i32 %6) #0 {
  %8 = alloca %struct.dsp_scb_descriptor*, align 8
  %9 = alloca %struct.snd_cs46xx*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.dsp_scb_descriptor*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.dsp_symbol_entry*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store %struct.dsp_scb_descriptor* %5, %struct.dsp_scb_descriptor** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %9, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = load i32, i32* @SYMBOL_CODE, align 4
  %20 = call %struct.dsp_symbol_entry* @cs46xx_dsp_lookup_symbol(%struct.snd_cs46xx* %17, i8* %18, i32 %19)
  store %struct.dsp_symbol_entry* %20, %struct.dsp_symbol_entry** %16, align 8
  %21 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %16, align 8
  %22 = icmp eq %struct.dsp_symbol_entry* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %7
  %24 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %9, align 8
  %25 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %29)
  store %struct.dsp_scb_descriptor* null, %struct.dsp_scb_descriptor** %8, align 8
  br label %40

31:                                               ; preds = %7
  %32 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %16, align 8
  %37 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %14, align 8
  %38 = load i32, i32* %15, align 4
  %39 = call %struct.dsp_scb_descriptor* @_dsp_create_generic_scb(%struct.snd_cs46xx* %32, i8* %33, i32* %34, i32 %35, %struct.dsp_symbol_entry* %36, %struct.dsp_scb_descriptor* %37, i32 %38)
  store %struct.dsp_scb_descriptor* %39, %struct.dsp_scb_descriptor** %8, align 8
  br label %40

40:                                               ; preds = %31, %23
  %41 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  ret %struct.dsp_scb_descriptor* %41
}

declare dso_local %struct.dsp_symbol_entry* @cs46xx_dsp_lookup_symbol(%struct.snd_cs46xx*, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local %struct.dsp_scb_descriptor* @_dsp_create_generic_scb(%struct.snd_cs46xx*, i8*, i32*, i32, %struct.dsp_symbol_entry*, %struct.dsp_scb_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
