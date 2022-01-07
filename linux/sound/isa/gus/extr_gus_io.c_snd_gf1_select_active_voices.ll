; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_io.c_snd_gf1_select_active_voices.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_io.c_snd_gf1_select_active_voices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16, i32, i64 }

@snd_gf1_select_active_voices.voices_tbl = internal global [19 x i16] [i16 -21436, i16 -24376, i16 -26949, i16 -29219, i16 -31236, i16 32494, i16 30870, i16 29400, i16 28063, i16 26843, i16 25725, i16 24696, i16 23746, i16 22866, i16 22050, i16 21289, i16 20580, i16 19916, i16 19293], align 16
@SNDRV_GF1_GB_ACTIVE_VOICES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_gf1_select_active_voices(%struct.snd_gus_card* %0) #0 {
  %2 = alloca %struct.snd_gus_card*, align 8
  %3 = alloca i16, align 2
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %2, align 8
  %4 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %5 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i16, i16* %6, align 8
  store i16 %7, i16* %3, align 2
  %8 = load i16, i16* %3, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp sgt i32 %9, 32
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i16 32, i16* %3, align 2
  br label %12

12:                                               ; preds = %11, %1
  %13 = load i16, i16* %3, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp slt i32 %14, 14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i16 14, i16* %3, align 2
  br label %17

17:                                               ; preds = %16, %12
  %18 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %19 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i16 32, i16* %3, align 2
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i16, i16* %3, align 2
  %26 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %27 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i16 %25, i16* %28, align 8
  %29 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %30 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %43

35:                                               ; preds = %24
  %36 = load i16, i16* %3, align 2
  %37 = zext i16 %36 to i32
  %38 = sub nsw i32 %37, 14
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [19 x i16], [19 x i16]* @snd_gf1_select_active_voices.voices_tbl, i64 0, i64 %39
  %41 = load i16, i16* %40, align 2
  %42 = zext i16 %41 to i32
  br label %43

43:                                               ; preds = %35, %34
  %44 = phi i32 [ 44100, %34 ], [ %42, %35 ]
  %45 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %46 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %49 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %43
  %54 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %55 = load i32, i32* @SNDRV_GF1_GB_ACTIVE_VOICES, align 4
  %56 = load i16, i16* %3, align 2
  %57 = zext i16 %56 to i32
  %58 = sub nsw i32 %57, 1
  %59 = or i32 192, %58
  %60 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %54, i32 %55, i32 %59)
  %61 = call i32 @udelay(i32 100)
  br label %62

62:                                               ; preds = %53, %43
  ret void
}

declare dso_local i32 @snd_gf1_i_write8(%struct.snd_gus_card*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
