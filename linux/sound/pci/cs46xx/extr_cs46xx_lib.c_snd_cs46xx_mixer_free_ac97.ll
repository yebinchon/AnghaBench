; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_mixer_free_ac97.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_mixer_free_ac97.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.snd_cs46xx* }
%struct.snd_cs46xx = type { %struct.snd_ac97**, i32* }

@CS46XX_PRIMARY_CODEC_INDEX = common dso_local global i64 0, align 8
@CS46XX_SECONDARY_CODEC_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @snd_cs46xx_mixer_free_ac97 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs46xx_mixer_free_ac97(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca %struct.snd_cs46xx*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %4 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %5 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %4, i32 0, i32 0
  %6 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  store %struct.snd_cs46xx* %6, %struct.snd_cs46xx** %3, align 8
  %7 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %8 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %9 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %8, i32 0, i32 0
  %10 = load %struct.snd_ac97**, %struct.snd_ac97*** %9, align 8
  %11 = load i64, i64* @CS46XX_PRIMARY_CODEC_INDEX, align 8
  %12 = getelementptr inbounds %struct.snd_ac97*, %struct.snd_ac97** %10, i64 %11
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %12, align 8
  %14 = icmp ne %struct.snd_ac97* %7, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %17 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %18 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %17, i32 0, i32 0
  %19 = load %struct.snd_ac97**, %struct.snd_ac97*** %18, align 8
  %20 = load i64, i64* @CS46XX_SECONDARY_CODEC_INDEX, align 8
  %21 = getelementptr inbounds %struct.snd_ac97*, %struct.snd_ac97** %19, i64 %20
  %22 = load %struct.snd_ac97*, %struct.snd_ac97** %21, align 8
  %23 = icmp ne %struct.snd_ac97* %16, %22
  br label %24

24:                                               ; preds = %15, %1
  %25 = phi i1 [ false, %1 ], [ %23, %15 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @snd_BUG_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %53

30:                                               ; preds = %24
  %31 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %32 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %33 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %32, i32 0, i32 0
  %34 = load %struct.snd_ac97**, %struct.snd_ac97*** %33, align 8
  %35 = load i64, i64* @CS46XX_PRIMARY_CODEC_INDEX, align 8
  %36 = getelementptr inbounds %struct.snd_ac97*, %struct.snd_ac97** %34, i64 %35
  %37 = load %struct.snd_ac97*, %struct.snd_ac97** %36, align 8
  %38 = icmp eq %struct.snd_ac97* %31, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %30
  %40 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %41 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %40, i32 0, i32 0
  %42 = load %struct.snd_ac97**, %struct.snd_ac97*** %41, align 8
  %43 = load i64, i64* @CS46XX_PRIMARY_CODEC_INDEX, align 8
  %44 = getelementptr inbounds %struct.snd_ac97*, %struct.snd_ac97** %42, i64 %43
  store %struct.snd_ac97* null, %struct.snd_ac97** %44, align 8
  %45 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %46 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  br label %53

47:                                               ; preds = %30
  %48 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %49 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %48, i32 0, i32 0
  %50 = load %struct.snd_ac97**, %struct.snd_ac97*** %49, align 8
  %51 = load i64, i64* @CS46XX_SECONDARY_CODEC_INDEX, align 8
  %52 = getelementptr inbounds %struct.snd_ac97*, %struct.snd_ac97** %50, i64 %51
  store %struct.snd_ac97* null, %struct.snd_ac97** %52, align 8
  br label %53

53:                                               ; preds = %29, %47, %39
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
