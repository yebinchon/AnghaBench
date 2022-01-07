; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_fx8010_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_fx8010_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32 }
%struct.snd_hwdep = type { %struct.snd_emu10k1*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"FX8010\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"EMU10K1 (FX8010)\00", align 1
@SNDRV_HWDEP_IFACE_EMU10K1 = common dso_local global i32 0, align 4
@snd_emu10k1_fx8010_open = common dso_local global i32 0, align 4
@snd_emu10k1_fx8010_ioctl = common dso_local global i32 0, align 4
@snd_emu10k1_fx8010_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_fx8010_new(%struct.snd_emu10k1* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_hwdep*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %9 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @snd_hwdep_new(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11, %struct.snd_hwdep** %6)
  store i32 %12, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.snd_hwdep*, %struct.snd_hwdep** %6, align 8
  %18 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @strcpy(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @SNDRV_HWDEP_IFACE_EMU10K1, align 4
  %22 = load %struct.snd_hwdep*, %struct.snd_hwdep** %6, align 8
  %23 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @snd_emu10k1_fx8010_open, align 4
  %25 = load %struct.snd_hwdep*, %struct.snd_hwdep** %6, align 8
  %26 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @snd_emu10k1_fx8010_ioctl, align 4
  %29 = load %struct.snd_hwdep*, %struct.snd_hwdep** %6, align 8
  %30 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @snd_emu10k1_fx8010_release, align 4
  %33 = load %struct.snd_hwdep*, %struct.snd_hwdep** %6, align 8
  %34 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %37 = load %struct.snd_hwdep*, %struct.snd_hwdep** %6, align 8
  %38 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %37, i32 0, i32 0
  store %struct.snd_emu10k1* %36, %struct.snd_emu10k1** %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %16, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @snd_hwdep_new(i32, i8*, i32, %struct.snd_hwdep**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
