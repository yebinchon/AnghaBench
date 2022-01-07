; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_io.c___snd_gf1_read_addr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_io.c___snd_gf1_read_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SNDRV_GF1_VB_UPPER_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_gus_card*, i8, i16)* @__snd_gf1_read_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__snd_gf1_read_addr(%struct.snd_gus_card* %0, i8 zeroext %1, i16 signext %2) #0 {
  %4 = alloca %struct.snd_gus_card*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %4, align 8
  store i8 %1, i8* %5, align 1
  store i16 %2, i16* %6, align 2
  %8 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i32
  %11 = or i32 %10, 128
  %12 = trunc i32 %11 to i8
  %13 = call i64 @__snd_gf1_look16(%struct.snd_gus_card* %8, i8 zeroext %12)
  %14 = trunc i64 %13 to i32
  %15 = shl i32 %14, 11
  %16 = and i32 %15, 16775168
  store i32 %16, i32* %7, align 4
  %17 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = add nsw i32 %19, 1
  %21 = or i32 %20, 128
  %22 = trunc i32 %21 to i8
  %23 = call i64 @__snd_gf1_look16(%struct.snd_gus_card* %17, i8 zeroext %22)
  %24 = trunc i64 %23 to i32
  %25 = lshr i32 %24, 5
  %26 = and i32 %25, 2047
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %30 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %3
  %35 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %36 = load i32, i32* @SNDRV_GF1_VB_UPPER_ADDRESS, align 4
  %37 = or i32 %36, 128
  %38 = call i64 @__snd_gf1_look8(%struct.snd_gus_card* %35, i32 %37)
  %39 = trunc i64 %38 to i32
  %40 = shl i32 %39, 26
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i16, i16* %6, align 2
  %44 = icmp ne i16 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, 1
  %48 = and i32 %47, -32
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 15
  %51 = or i32 %48, %50
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %45, %34
  br label %64

53:                                               ; preds = %3
  %54 = load i16, i16* %6, align 2
  %55 = icmp ne i16 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 2097136
  %59 = shl i32 %58, 1
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 12582927
  %62 = or i32 %59, %61
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %56, %53
  br label %64

64:                                               ; preds = %63, %52
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i64 @__snd_gf1_look16(%struct.snd_gus_card*, i8 zeroext) #1

declare dso_local i64 @__snd_gf1_look8(%struct.snd_gus_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
