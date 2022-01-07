; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c___rsnd_adg_get_timesel_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c___rsnd_adg_get_timesel_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_priv = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_adg = type { i32*, i32, i32 }
%struct.device = type { i32 }

@CLKA = common dso_local global i64 0, align 8
@CLKB = common dso_local global i64 0, align 8
@CLKC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"no Input clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_priv*, %struct.rsnd_dai_stream*, i32, i32*, i32*)* @__rsnd_adg_get_timesel_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rsnd_adg_get_timesel_ratio(%struct.rsnd_priv* %0, %struct.rsnd_dai_stream* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.rsnd_priv*, align 8
  %7 = alloca %struct.rsnd_dai_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rsnd_adg*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [5 x i32], align 16
  store %struct.rsnd_priv* %0, %struct.rsnd_priv** %6, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %22 = load %struct.rsnd_priv*, %struct.rsnd_priv** %6, align 8
  %23 = call %struct.rsnd_adg* @rsnd_priv_to_adg(%struct.rsnd_priv* %22)
  store %struct.rsnd_adg* %23, %struct.rsnd_adg** %11, align 8
  %24 = load %struct.rsnd_priv*, %struct.rsnd_priv** %6, align 8
  %25 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %24)
  store %struct.device* %25, %struct.device** %12, align 8
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 0
  %27 = load %struct.rsnd_adg*, %struct.rsnd_adg** %11, align 8
  %28 = getelementptr inbounds %struct.rsnd_adg, %struct.rsnd_adg* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @CLKA, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %26, align 4
  %33 = getelementptr inbounds i32, i32* %26, i64 1
  %34 = load %struct.rsnd_adg*, %struct.rsnd_adg** %11, align 8
  %35 = getelementptr inbounds %struct.rsnd_adg, %struct.rsnd_adg* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @CLKB, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %33, align 4
  %40 = getelementptr inbounds i32, i32* %33, i64 1
  %41 = load %struct.rsnd_adg*, %struct.rsnd_adg** %11, align 8
  %42 = getelementptr inbounds %struct.rsnd_adg, %struct.rsnd_adg* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @CLKC, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %40, align 4
  %47 = getelementptr inbounds i32, i32* %40, i64 1
  %48 = load %struct.rsnd_adg*, %struct.rsnd_adg** %11, align 8
  %49 = getelementptr inbounds %struct.rsnd_adg, %struct.rsnd_adg* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %47, align 4
  %51 = getelementptr inbounds i32, i32* %47, i64 1
  %52 = load %struct.rsnd_adg*, %struct.rsnd_adg** %11, align 8
  %53 = getelementptr inbounds %struct.rsnd_adg, %struct.rsnd_adg* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %51, align 4
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %120, %5
  %56 = load i32, i32* %14, align 4
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 0
  %58 = call i32 @ARRAY_SIZE(i32* %57)
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %123

60:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  store i32 2, i32* %16, align 4
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  br label %120

67:                                               ; preds = %60
  store i32 2, i32* %15, align 4
  br label %68

68:                                               ; preds = %115, %67
  %69 = load i32, i32* %15, align 4
  %70 = icmp sle i32 %69, 98304
  br i1 %70, label %71, label %119

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %15, align 4
  %78 = udiv i32 %76, %77
  %79 = sub i32 %72, %78
  %80 = call i32 @abs(i32 %79)
  store i32 %80, i32* %20, align 4
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %20, align 4
  %83 = icmp ugt i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %71
  %85 = load i32, i32* %14, align 4
  %86 = shl i32 %85, 8
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %20, align 4
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  %92 = shl i32 1, %91
  store i32 %92, i32* %18, align 4
  br label %93

93:                                               ; preds = %84, %71
  %94 = load i32, i32* %13, align 4
  %95 = icmp sgt i32 %94, 2
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* %13, align 4
  %98 = srem i32 %97, 2
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* %16, align 4
  %102 = mul nsw i32 %101, 2
  store i32 %102, i32* %16, align 4
  br label %103

103:                                              ; preds = %100, %96, %93
  %104 = load i32, i32* %13, align 4
  %105 = icmp eq i32 %104, 28
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %16, align 4
  %111 = mul nsw i32 %110, 2
  store i32 %111, i32* %16, align 4
  br label %112

112:                                              ; preds = %106, %103
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %15, align 4
  br label %68

119:                                              ; preds = %68
  br label %120

120:                                              ; preds = %119, %66
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %55

123:                                              ; preds = %55
  %124 = load i32, i32* %19, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.device*, %struct.device** %12, align 8
  %128 = call i32 @dev_err(%struct.device* %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %137

129:                                              ; preds = %123
  %130 = load i32, i32* %17, align 4
  %131 = load i32*, i32** %9, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32*, i32** %10, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* %18, align 4
  %136 = load i32*, i32** %10, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %126, %134, %129
  ret void
}

declare dso_local %struct.rsnd_adg* @rsnd_priv_to_adg(%struct.rsnd_priv*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @abs(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
