; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_mixer.c_lola_mixer_set_src_gain.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_mixer.c_lola_mixer_set_src_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"lola_mixer_set_src_gain (id=%d, gain=%d) enable=%x\0A\00", align 1
@LOLA_VERB_SET_SOURCE_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lola*, i32, i16, i32)* @lola_mixer_set_src_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lola_mixer_set_src_gain(%struct.lola* %0, i32 %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lola*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %6, align 8
  store i32 %1, i32* %7, align 4
  store i16 %2, i16* %8, align 2
  store i32 %3, i32* %9, align 4
  %12 = load %struct.lola*, %struct.lola** %6, align 8
  %13 = getelementptr inbounds %struct.lola, %struct.lola* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %101

23:                                               ; preds = %4
  %24 = load %struct.lola*, %struct.lola** %6, align 8
  %25 = getelementptr inbounds %struct.lola, %struct.lola* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @readl(i32* %28)
  store i32 %29, i32* %11, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  br label %43

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = shl i32 1, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load i16, i16* %8, align 2
  %49 = zext i16 %48 to i32
  %50 = load %struct.lola*, %struct.lola** %6, align 8
  %51 = getelementptr inbounds %struct.lola, %struct.lola* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call zeroext i16 @readw(i32* %58)
  %60 = zext i16 %59 to i32
  %61 = icmp eq i32 %49, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %101

63:                                               ; preds = %47, %43
  %64 = load %struct.lola*, %struct.lola** %6, align 8
  %65 = getelementptr inbounds %struct.lola, %struct.lola* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i16, i16* %8, align 2
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %69, i16 zeroext %70, i32 %71)
  %73 = load i16, i16* %8, align 2
  %74 = load %struct.lola*, %struct.lola** %6, align 8
  %75 = getelementptr inbounds %struct.lola, %struct.lola* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @writew(i16 zeroext %73, i32* %82)
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.lola*, %struct.lola** %6, align 8
  %86 = getelementptr inbounds %struct.lola, %struct.lola* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = call i32 @writel(i32 %84, i32* %89)
  %91 = load %struct.lola*, %struct.lola** %6, align 8
  %92 = call i32 @lola_codec_flush(%struct.lola* %91)
  %93 = load %struct.lola*, %struct.lola** %6, align 8
  %94 = load %struct.lola*, %struct.lola** %6, align 8
  %95 = getelementptr inbounds %struct.lola, %struct.lola* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @LOLA_VERB_SET_SOURCE_GAIN, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @lola_codec_write(%struct.lola* %93, i32 %97, i32 %98, i32 %99, i32 0)
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %63, %62, %20
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @readl(i32*) #1

declare dso_local zeroext i16 @readw(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i16 zeroext, i32) #1

declare dso_local i32 @writew(i16 zeroext, i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @lola_codec_flush(%struct.lola*) #1

declare dso_local i32 @lola_codec_write(%struct.lola*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
