; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_is_identical_font.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_is_identical_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soundfont = type { i32, i32 }

@SNDRV_SFNT_PAT_SHARED = common dso_local global i32 0, align 4
@SNDRV_SFNT_PATCH_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soundfont*, i32, i8*)* @is_identical_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_identical_font(%struct.snd_soundfont* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.snd_soundfont*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.snd_soundfont* %0, %struct.snd_soundfont** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.snd_soundfont*, %struct.snd_soundfont** %4, align 8
  %8 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SNDRV_SFNT_PAT_SHARED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load %struct.snd_soundfont*, %struct.snd_soundfont** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 15
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 15
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = load %struct.snd_soundfont*, %struct.snd_soundfont** %4, align 8
  %26 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @SNDRV_SFNT_PATCH_NAME_LEN, align 4
  %30 = call i64 @memcmp(i32 %27, i8* %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br label %32

32:                                               ; preds = %24, %21
  %33 = phi i1 [ true, %21 ], [ %31, %24 ]
  br label %34

34:                                               ; preds = %32, %13, %3
  %35 = phi i1 [ false, %13 ], [ false, %3 ], [ %33, %32 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i64 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
