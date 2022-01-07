; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_configure_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_configure_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8960_priv = type { i32, i32 }

@sysclk_divs = common dso_local global i32* null, align 8
@dac_divs = common dso_local global i32* null, align 8
@bclk_divs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8960_priv*, i32, i32*, i32*, i32*)* @wm8960_configure_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8960_configure_sysclk(%struct.wm8960_priv* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.wm8960_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.wm8960_priv* %0, %struct.wm8960_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %18, align 4
  %20 = load i32*, i32** %10, align 8
  store i32 -1, i32* %20, align 4
  %21 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %22 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.wm8960_priv*, %struct.wm8960_priv** %6, align 8
  %25 = getelementptr inbounds %struct.wm8960_priv, %struct.wm8960_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %126, %5
  %28 = load i32, i32* %14, align 4
  %29 = load i32*, i32** @sysclk_divs, align 8
  %30 = call i32 @ARRAY_SIZE(i32* %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %129

32:                                               ; preds = %27
  %33 = load i32*, i32** @sysclk_divs, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %126

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** @sysclk_divs, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %41, %46
  store i32 %47, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %48

48:                                               ; preds = %116, %40
  %49 = load i32, i32* %15, align 4
  %50 = load i32*, i32** @dac_divs, align 8
  %51 = call i32 @ARRAY_SIZE(i32* %50)
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %119

53:                                               ; preds = %48
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** @dac_divs, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %13, align 4
  %61 = mul nsw i32 %59, %60
  %62 = icmp ne i32 %54, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %116

64:                                               ; preds = %53
  store i32 0, i32* %16, align 4
  br label %65

65:                                               ; preds = %106, %64
  %66 = load i32, i32* %16, align 4
  %67 = load i32*, i32** @bclk_divs, align 8
  %68 = call i32 @ARRAY_SIZE(i32* %67)
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %109

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32*, i32** @bclk_divs, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %72, %77
  %79 = sdiv i32 %78, 10
  %80 = sub nsw i32 %71, %79
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %70
  %84 = load i32, i32* %14, align 4
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32*, i32** %9, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32*, i32** %10, align 8
  store i32 %88, i32* %89, align 4
  br label %109

90:                                               ; preds = %70
  %91 = load i32, i32* %17, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load i32, i32* %14, align 4
  %99 = load i32*, i32** %8, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32*, i32** %10, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %17, align 4
  store i32 %104, i32* %18, align 4
  br label %105

105:                                              ; preds = %97, %93, %90
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %16, align 4
  br label %65

109:                                              ; preds = %83, %65
  %110 = load i32, i32* %16, align 4
  %111 = load i32*, i32** @bclk_divs, align 8
  %112 = call i32 @ARRAY_SIZE(i32* %111)
  %113 = icmp ne i32 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %119

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %63
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  br label %48

119:                                              ; preds = %114, %48
  %120 = load i32, i32* %15, align 4
  %121 = load i32*, i32** @dac_divs, align 8
  %122 = call i32 @ARRAY_SIZE(i32* %121)
  %123 = icmp ne i32 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %129

125:                                              ; preds = %119
  br label %126

126:                                              ; preds = %125, %39
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %27

129:                                              ; preds = %124, %27
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %130, align 4
  ret i32 %131
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
