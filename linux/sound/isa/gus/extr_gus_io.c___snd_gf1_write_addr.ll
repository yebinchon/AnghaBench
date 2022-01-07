; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_io.c___snd_gf1_write_addr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_io.c___snd_gf1_write_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SNDRV_GF1_VB_UPPER_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_gus_card*, i8, i32, i32)* @__snd_gf1_write_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__snd_gf1_write_addr(%struct.snd_gus_card* %0, i8 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_gus_card*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %10 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = lshr i32 %18, 1
  %20 = and i32 %19, -16
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 15
  %23 = or i32 %20, %22
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %17, %14
  %25 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %26 = load i32, i32* @SNDRV_GF1_VB_UPPER_ADDRESS, align 4
  %27 = load i32, i32* %7, align 4
  %28 = lshr i32 %27, 26
  %29 = and i32 %28, 3
  %30 = trunc i32 %29 to i8
  %31 = call i32 @__snd_gf1_write8(%struct.snd_gus_card* %25, i32 %26, i8 zeroext %30)
  br label %43

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 12582927
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 4194288
  %40 = lshr i32 %39, 1
  %41 = or i32 %37, %40
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %35, %32
  br label %43

43:                                               ; preds = %42, %24
  %44 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %45 = load i8, i8* %6, align 1
  %46 = load i32, i32* %7, align 4
  %47 = lshr i32 %46, 11
  %48 = trunc i32 %47 to i16
  %49 = call i32 @__snd_gf1_write16(%struct.snd_gus_card* %44, i8 zeroext %45, i16 zeroext %48)
  %50 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %51 = load i8, i8* %6, align 1
  %52 = zext i8 %51 to i32
  %53 = add nsw i32 %52, 1
  %54 = trunc i32 %53 to i8
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 %55, 5
  %57 = trunc i32 %56 to i16
  %58 = call i32 @__snd_gf1_write16(%struct.snd_gus_card* %50, i8 zeroext %54, i16 zeroext %57)
  ret void
}

declare dso_local i32 @__snd_gf1_write8(%struct.snd_gus_card*, i32, i8 zeroext) #1

declare dso_local i32 @__snd_gf1_write16(%struct.snd_gus_card*, i8 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
