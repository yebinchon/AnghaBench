; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_create_scb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_create_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsp_scb_descriptor = type { i32* }
%struct.snd_cs46xx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"dsp_spos: failed to map SCB\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@SCB_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_scb(%struct.snd_cs46xx* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_cs46xx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dsp_scb_descriptor*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.dsp_scb_descriptor* @_map_scb(%struct.snd_cs46xx* %10, i8* %11, i32 %12)
  store %struct.dsp_scb_descriptor* %13, %struct.dsp_scb_descriptor** %9, align 8
  %14 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %9, align 8
  %15 = icmp ne %struct.dsp_scb_descriptor* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %9, align 8
  %19 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @_dsp_create_scb(%struct.snd_cs46xx* %20, i32* %21, i32 %22)
  br label %31

24:                                               ; preds = %4
  %25 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %26 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %24, %16
  %32 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %9, align 8
  ret %struct.dsp_scb_descriptor* %32
}

declare dso_local %struct.dsp_scb_descriptor* @_map_scb(%struct.snd_cs46xx*, i8*, i32) #1

declare dso_local i32 @_dsp_create_scb(%struct.snd_cs46xx*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
