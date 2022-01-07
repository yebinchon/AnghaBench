; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_midi.c_snd_opl3_calc_pitch.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_midi.c_snd_opl3_calc_pitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_channel = type { i32 }

@opl3_note_table = common dso_local global i32* null, align 8
@OPL3_FNUM_HIGH_MASK = common dso_local global i32 0, align 4
@OPL3_BLOCKNUM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, %struct.snd_midi_channel*)* @snd_opl3_calc_pitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_opl3_calc_pitch(i8* %0, i8* %1, i32 %2, %struct.snd_midi_channel* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_midi_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.snd_midi_channel* %3, %struct.snd_midi_channel** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sdiv i32 %14, 12
  %16 = and i32 %15, 7
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = srem i32 %18, 12
  %20 = add nsw i32 %19, 2
  store i32 %20, i32* %10, align 4
  %21 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %22 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %4
  %26 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %27 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, -8192
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -8192, i32* %12, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %33, 8191
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 8191, i32* %12, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %12, align 4
  %38 = sdiv i32 %37, 4096
  store i32 %38, i32* %13, align 4
  %39 = load i32*, i32** @opl3_note_table, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load i32*, i32** @opl3_note_table, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %47, %48
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* %12, align 4
  %57 = srem i32 %56, 4096
  %58 = mul nsw i32 %55, %57
  %59 = sdiv i32 %58, 4096
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %68

62:                                               ; preds = %4
  %63 = load i32*, i32** @opl3_note_table, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %62, %36
  %69 = load i32, i32* %11, align 4
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %5, align 8
  store i8 %70, i8* %71, align 1
  %72 = load i32, i32* %11, align 4
  %73 = ashr i32 %72, 8
  %74 = load i32, i32* @OPL3_FNUM_HIGH_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 %76, 2
  %78 = load i32, i32* @OPL3_BLOCKNUM_MASK, align 4
  %79 = and i32 %77, %78
  %80 = or i32 %75, %79
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %6, align 8
  store i8 %81, i8* %82, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
