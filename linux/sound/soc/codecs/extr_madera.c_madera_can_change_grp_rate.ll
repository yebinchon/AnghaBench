; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_can_change_grp_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_can_change_grp_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_priv = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MADERA_DOM_GRP_FX = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_ASRC1 = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_ASRC2 = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_ISRC1 = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_ISRC2 = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_ISRC3 = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_ISRC4 = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_OUT = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_SPD = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_DSP1 = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_DSP2 = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_DSP3 = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_DSP4 = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_DSP5 = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_DSP6 = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_DSP7 = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_AIF1 = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_AIF2 = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_AIF3 = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_AIF4 = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_SLIMBUS = common dso_local global i64 0, align 8
@MADERA_DOM_GRP_PWM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Rate reg 0x%x group ref %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera_priv*, i32)* @madera_can_change_grp_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_can_change_grp_rate(%struct.madera_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.madera_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.madera_priv* %0, %struct.madera_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %162 [
    i32 147, label %8
    i32 165, label %15
    i32 164, label %15
    i32 163, label %22
    i32 162, label %22
    i32 146, label %29
    i32 145, label %29
    i32 144, label %36
    i32 143, label %36
    i32 142, label %43
    i32 141, label %43
    i32 140, label %50
    i32 139, label %50
    i32 138, label %57
    i32 128, label %64
    i32 161, label %71
    i32 160, label %71
    i32 159, label %78
    i32 158, label %78
    i32 157, label %85
    i32 156, label %85
    i32 155, label %92
    i32 154, label %92
    i32 153, label %99
    i32 152, label %99
    i32 151, label %106
    i32 150, label %106
    i32 149, label %113
    i32 148, label %113
    i32 169, label %120
    i32 168, label %127
    i32 167, label %134
    i32 166, label %141
    i32 136, label %148
    i32 135, label %148
    i32 134, label %148
    i32 133, label %148
    i32 132, label %148
    i32 131, label %148
    i32 130, label %148
    i32 129, label %148
    i32 137, label %155
  ]

8:                                                ; preds = %2
  %9 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %10 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @MADERA_DOM_GRP_FX, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  br label %163

15:                                               ; preds = %2, %2
  %16 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %17 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @MADERA_DOM_GRP_ASRC1, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  br label %163

22:                                               ; preds = %2, %2
  %23 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %24 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @MADERA_DOM_GRP_ASRC2, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  br label %163

29:                                               ; preds = %2, %2
  %30 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %31 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @MADERA_DOM_GRP_ISRC1, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  br label %163

36:                                               ; preds = %2, %2
  %37 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %38 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @MADERA_DOM_GRP_ISRC2, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  br label %163

43:                                               ; preds = %2, %2
  %44 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %45 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @MADERA_DOM_GRP_ISRC3, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  br label %163

50:                                               ; preds = %2, %2
  %51 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %52 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @MADERA_DOM_GRP_ISRC4, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %6, align 4
  br label %163

57:                                               ; preds = %2
  %58 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %59 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @MADERA_DOM_GRP_OUT, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  br label %163

64:                                               ; preds = %2
  %65 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %66 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @MADERA_DOM_GRP_SPD, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  br label %163

71:                                               ; preds = %2, %2
  %72 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %73 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @MADERA_DOM_GRP_DSP1, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %6, align 4
  br label %163

78:                                               ; preds = %2, %2
  %79 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %80 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @MADERA_DOM_GRP_DSP2, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %6, align 4
  br label %163

85:                                               ; preds = %2, %2
  %86 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %87 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @MADERA_DOM_GRP_DSP3, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %6, align 4
  br label %163

92:                                               ; preds = %2, %2
  %93 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %94 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @MADERA_DOM_GRP_DSP4, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %6, align 4
  br label %163

99:                                               ; preds = %2, %2
  %100 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %101 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @MADERA_DOM_GRP_DSP5, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %6, align 4
  br label %163

106:                                              ; preds = %2, %2
  %107 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %108 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @MADERA_DOM_GRP_DSP6, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %6, align 4
  br label %163

113:                                              ; preds = %2, %2
  %114 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %115 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @MADERA_DOM_GRP_DSP7, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %6, align 4
  br label %163

120:                                              ; preds = %2
  %121 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %122 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @MADERA_DOM_GRP_AIF1, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %6, align 4
  br label %163

127:                                              ; preds = %2
  %128 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %129 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @MADERA_DOM_GRP_AIF2, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %6, align 4
  br label %163

134:                                              ; preds = %2
  %135 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %136 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* @MADERA_DOM_GRP_AIF3, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %6, align 4
  br label %163

141:                                              ; preds = %2
  %142 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %143 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* @MADERA_DOM_GRP_AIF4, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %6, align 4
  br label %163

148:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %149 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %150 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* @MADERA_DOM_GRP_SLIMBUS, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %6, align 4
  br label %163

155:                                              ; preds = %2
  %156 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %157 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @MADERA_DOM_GRP_PWM, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %6, align 4
  br label %163

162:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %176

163:                                              ; preds = %155, %148, %141, %134, %127, %120, %113, %106, %99, %92, %85, %78, %71, %64, %57, %50, %43, %36, %29, %22, %15, %8
  %164 = load %struct.madera_priv*, %struct.madera_priv** %4, align 8
  %165 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %164, i32 0, i32 1
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @dev_dbg(i32 %168, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %169, i32 %170)
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %163
  store i32 0, i32* %3, align 4
  br label %176

175:                                              ; preds = %163
  store i32 1, i32* %3, align 4
  br label %176

176:                                              ; preds = %175, %174, %162
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
