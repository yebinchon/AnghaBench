; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_snd_emu8000_update_chorus_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_snd_emu8000_update_chorus_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.snd_emu8000 = type { i32 }

@SNDRV_EMU8000_CHORUS_NUMBERS = common dso_local global i32 0, align 4
@SNDRV_EMU8000_CHORUS_PREDEFINED = common dso_local global i32 0, align 4
@chorus_defined = common dso_local global i32* null, align 8
@chorus_parm = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emu8000_update_chorus_mode(%struct.snd_emu8000* %0) #0 {
  %2 = alloca %struct.snd_emu8000*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %2, align 8
  %4 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %5 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SNDRV_EMU8000_CHORUS_NUMBERS, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SNDRV_EMU8000_CHORUS_PREDEFINED, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32*, i32** @chorus_defined, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17, %9, %1
  br label %70

25:                                               ; preds = %17, %13
  %26 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chorus_parm, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @EMU8000_INIT3_WRITE(%struct.snd_emu8000* %26, i32 9, i32 %32)
  %34 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chorus_parm, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @EMU8000_INIT3_WRITE(%struct.snd_emu8000* %34, i32 12, i32 %40)
  %42 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chorus_parm, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @EMU8000_INIT4_WRITE(%struct.snd_emu8000* %42, i32 3, i32 %48)
  %50 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chorus_parm, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @EMU8000_HWCF4_WRITE(%struct.snd_emu8000* %50, i32 %56)
  %58 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chorus_parm, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @EMU8000_HWCF5_WRITE(%struct.snd_emu8000* %58, i32 %64)
  %66 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %67 = call i32 @EMU8000_HWCF6_WRITE(%struct.snd_emu8000* %66, i32 32768)
  %68 = load %struct.snd_emu8000*, %struct.snd_emu8000** %2, align 8
  %69 = call i32 @EMU8000_HWCF7_WRITE(%struct.snd_emu8000* %68, i32 0)
  br label %70

70:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @EMU8000_INIT3_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_INIT4_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_HWCF4_WRITE(%struct.snd_emu8000*, i32) #1

declare dso_local i32 @EMU8000_HWCF5_WRITE(%struct.snd_emu8000*, i32) #1

declare dso_local i32 @EMU8000_HWCF6_WRITE(%struct.snd_emu8000*, i32) #1

declare dso_local i32 @EMU8000_HWCF7_WRITE(%struct.snd_emu8000*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
