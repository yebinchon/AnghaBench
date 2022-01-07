; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_midi.c_snd_opl3_calc_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_midi.c_snd_opl3_calc_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_channel = type { i32, i32 }

@OPL3_TOTAL_LEVEL_MASK = common dso_local global i8 0, align 1
@opl3_volume_table = common dso_local global i32* null, align 8
@OPL3_KSL_MASK = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_opl3_calc_volume(i8* %0, i32 %1, %struct.snd_midi_channel* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_midi_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_midi_channel* %2, %struct.snd_midi_channel** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %13 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %6, align 8
  %17 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = sdiv i32 %19, 16129
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 127
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 127, i32* %10, align 4
  br label %24

24:                                               ; preds = %23, %3
  %25 = load i8, i8* @OPL3_TOTAL_LEVEL_MASK, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @OPL3_TOTAL_LEVEL_MASK, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = sub nsw i32 %26, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32*, i32** @opl3_volume_table, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i8, i8* @OPL3_TOTAL_LEVEL_MASK, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %24
  %46 = load i8, i8* @OPL3_TOTAL_LEVEL_MASK, align 1
  %47 = zext i8 %46 to i32
  store i32 %47, i32* %8, align 4
  br label %53

48:                                               ; preds = %24
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %51, %48
  br label %53

53:                                               ; preds = %52, %45
  %54 = load i8, i8* @OPL3_TOTAL_LEVEL_MASK, align 1
  %55 = zext i8 %54 to i32
  %56 = load i32, i32* %8, align 4
  %57 = load i8, i8* @OPL3_TOTAL_LEVEL_MASK, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %56, %58
  %60 = sub nsw i32 %55, %59
  store i32 %60, i32* %9, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @OPL3_KSL_MASK, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %63, %65
  %67 = load i32, i32* %9, align 4
  %68 = load i8, i8* @OPL3_TOTAL_LEVEL_MASK, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %67, %69
  %71 = or i32 %66, %70
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %4, align 8
  store i8 %72, i8* %73, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
