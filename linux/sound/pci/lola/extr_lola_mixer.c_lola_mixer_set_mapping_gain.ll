; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_mixer.c_lola_mixer_set_mapping_gain.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_mixer.c_lola_mixer_set_mapping_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32** }

@EINVAL = common dso_local global i32 0, align 4
@LOLA_VERB_SET_MIX_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lola*, i32, i32, i16, i32)* @lola_mixer_set_mapping_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lola_mixer_set_mapping_gain(%struct.lola* %0, i32 %1, i32 %2, i16 zeroext %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lola*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i16 %3, i16* %10, align 2
  store i32 %4, i32* %11, align 4
  %13 = load %struct.lola*, %struct.lola** %7, align 8
  %14 = getelementptr inbounds %struct.lola, %struct.lola* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %5
  %22 = load %struct.lola*, %struct.lola** %7, align 8
  %23 = getelementptr inbounds %struct.lola, %struct.lola* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21, %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %99

33:                                               ; preds = %21
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load i16, i16* %10, align 2
  %38 = load %struct.lola*, %struct.lola** %7, align 8
  %39 = getelementptr inbounds %struct.lola, %struct.lola* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @writew(i16 zeroext %37, i32* %50)
  br label %52

52:                                               ; preds = %36, %33
  %53 = load %struct.lola*, %struct.lola** %7, align 8
  %54 = getelementptr inbounds %struct.lola, %struct.lola* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i32 @readl(i32* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 1, %66
  %68 = load i32, i32* %12, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %12, align 4
  br label %76

70:                                               ; preds = %52
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 1, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %12, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %70, %65
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.lola*, %struct.lola** %7, align 8
  %79 = getelementptr inbounds %struct.lola, %struct.lola* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @writel(i32 %77, i32* %86)
  %88 = load %struct.lola*, %struct.lola** %7, align 8
  %89 = call i32 @lola_codec_flush(%struct.lola* %88)
  %90 = load %struct.lola*, %struct.lola** %7, align 8
  %91 = load %struct.lola*, %struct.lola** %7, align 8
  %92 = getelementptr inbounds %struct.lola, %struct.lola* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @LOLA_VERB_SET_MIX_GAIN, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @lola_codec_write(%struct.lola* %90, i32 %94, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %76, %30
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @writew(i16 zeroext, i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @lola_codec_flush(%struct.lola*) #1

declare dso_local i32 @lola_codec_write(%struct.lola*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
