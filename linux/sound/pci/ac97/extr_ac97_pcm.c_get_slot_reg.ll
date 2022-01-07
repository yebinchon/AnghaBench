; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_pcm.c_get_slot_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_pcm.c_get_slot_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_pcm = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64* }

@AC97_SPDIF = common dso_local global i8 0, align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@rate_reg_tables = common dso_local global i8*** null, align 8
@rate_cregs = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.ac97_pcm*, i16, i16, i32)* @get_slot_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @get_slot_reg(%struct.ac97_pcm* %0, i16 zeroext %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.ac97_pcm*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.ac97_pcm* %0, %struct.ac97_pcm** %6, align 8
  store i16 %1, i16* %7, align 2
  store i16 %2, i16* %8, align 2
  store i32 %3, i32* %9, align 4
  %10 = load i16, i16* %8, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i8 -1, i8* %5, align 1
  br label %66

14:                                               ; preds = %4
  %15 = load i16, i16* %8, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp sgt i32 %16, 11
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8 -1, i8* %5, align 1
  br label %66

19:                                               ; preds = %14
  %20 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %21 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8, i8* @AC97_SPDIF, align 1
  store i8 %25, i8* %5, align 1
  br label %66

26:                                               ; preds = %19
  %27 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %28 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %26
  %33 = load i8***, i8**** @rate_reg_tables, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8**, i8*** %33, i64 %35
  %37 = load i8**, i8*** %36, align 8
  %38 = load %struct.ac97_pcm*, %struct.ac97_pcm** %6, align 8
  %39 = getelementptr inbounds %struct.ac97_pcm, %struct.ac97_pcm* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i16, i16* %7, align 2
  %47 = zext i16 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8*, i8** %37, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i16, i16* %8, align 2
  %53 = zext i16 %52 to i32
  %54 = sub nsw i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = load i8, i8* %56, align 1
  store i8 %57, i8* %5, align 1
  br label %66

58:                                               ; preds = %26
  %59 = load i8*, i8** @rate_cregs, align 8
  %60 = load i16, i16* %8, align 2
  %61 = zext i16 %60 to i32
  %62 = sub nsw i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %5, align 1
  br label %66

66:                                               ; preds = %58, %32, %24, %18, %13
  %67 = load i8, i8* %5, align 1
  ret i8 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
