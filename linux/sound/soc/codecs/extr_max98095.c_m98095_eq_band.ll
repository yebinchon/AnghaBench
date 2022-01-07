; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_m98095_eq_band.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_m98095_eq_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@M98095_142_DAI2_EQ_BASE = common dso_local global i32 0, align 4
@M98095_110_DAI1_EQ_BASE = common dso_local global i32 0, align 4
@M98095_COEFS_PER_BAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32, i32, i32*)* @m98095_eq_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m98095_eq_band(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ugt i32 %11, 4
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ugt i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %4
  br label %66

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @M98095_142_DAI2_EQ_BASE, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @M98095_110_DAI1_EQ_BASE, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @M98095_COEFS_PER_BAND, align 4
  %34 = shl i32 %33, 1
  %35 = mul i32 %32, %34
  %36 = load i32, i32* %9, align 4
  %37 = add i32 %36, %35
  store i32 %37, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %63, %30
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @M98095_COEFS_PER_BAND, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @M98095_BYTE1(i32 %50)
  %52 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %43, i32 %44, i32 %51)
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %9, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @M98095_BYTE0(i32 %60)
  %62 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %53, i32 %54, i32 %61)
  br label %63

63:                                               ; preds = %42
  %64 = load i32, i32* %10, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %38

66:                                               ; preds = %22, %38
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @M98095_BYTE1(i32) #1

declare dso_local i32 @M98095_BYTE0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
