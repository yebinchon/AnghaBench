; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_calc_fratio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_calc_fratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_fll = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.madera_fll_cfg = type { i32, i32 }

@MADERA_FLL_MAX_FREF = common dso_local global i32 0, align 4
@MADERA_FLL_MAX_REFDIV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to find FRATIO for fref=%uHz\0A\00", align 1
@MADERA_FLL_MAX_FRATIO = common dso_local global i32 0, align 4
@MADERA_FLL_VCO_CORNER = common dso_local global i32 0, align 4
@MADERA_FLL_VCO_MULT = common dso_local global i32 0, align 4
@pseudo_fref_max = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Falling back to integer mode operation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera_fll*, %struct.madera_fll_cfg*, i32, i32)* @madera_calc_fratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_calc_fratio(%struct.madera_fll* %0, %struct.madera_fll_cfg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.madera_fll*, align 8
  %7 = alloca %struct.madera_fll_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.madera_fll* %0, %struct.madera_fll** %6, align 8
  store %struct.madera_fll_cfg* %1, %struct.madera_fll_cfg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %13, align 4
  %14 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %15 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %35, %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @MADERA_FLL_MAX_FREF, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load i32, i32* %13, align 4
  %22 = mul nsw i32 %21, 2
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = udiv i32 %23, 2
  store i32 %24, i32* %8, align 4
  %25 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %26 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @MADERA_FLL_MAX_REFDIV, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %189

35:                                               ; preds = %20
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %41 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %40, i32 0, i32 1
  %42 = call i32 @madera_find_fratio(%struct.madera_fll* %37, i32 %38, i32 %39, i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @madera_fll_err(%struct.madera_fll* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %189

50:                                               ; preds = %36
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %57 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %50
  %59 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %60 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %85 [
    i32 130, label %64
    i32 129, label %79
    i32 128, label %79
  ]

64:                                               ; preds = %58
  %65 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %66 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %76 [
    i32 0, label %70
  ]

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  br label %189

75:                                               ; preds = %70
  br label %78

76:                                               ; preds = %64
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %189

78:                                               ; preds = %75
  br label %87

79:                                               ; preds = %58, %58
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %5, align 4
  br label %189

84:                                               ; preds = %79
  br label %87

85:                                               ; preds = %58
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %5, align 4
  br label %189

87:                                               ; preds = %84, %78
  %88 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %89 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %171, %87
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @MADERA_FLL_MAX_REFDIV, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %182

95:                                               ; preds = %91
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %119, %95
  %98 = load i32, i32* %11, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %122

100:                                              ; preds = %97
  %101 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %102 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %8, align 4
  %106 = mul i32 %104, %105
  %107 = urem i32 %103, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %100
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %112 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %11, align 4
  %114 = sub nsw i32 %113, 1
  %115 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %116 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %5, align 4
  br label %189

118:                                              ; preds = %100
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %11, align 4
  br label %97

122:                                              ; preds = %97
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %168, %122
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @MADERA_FLL_MAX_FRATIO, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %171

129:                                              ; preds = %125
  %130 = load i32, i32* @MADERA_FLL_VCO_CORNER, align 4
  %131 = sdiv i32 %130, 2
  %132 = load i32, i32* @MADERA_FLL_VCO_MULT, align 4
  %133 = load i32, i32* %11, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sdiv i32 %131, %134
  %136 = load i32, i32* %8, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %171

139:                                              ; preds = %129
  %140 = load i32, i32* %8, align 4
  %141 = load i32*, i32** @pseudo_fref_max, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp ugt i32 %140, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  br label %171

149:                                              ; preds = %139
  %150 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %151 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %8, align 4
  %155 = mul i32 %153, %154
  %156 = urem i32 %152, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %149
  %159 = load i32, i32* %12, align 4
  %160 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %161 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %11, align 4
  %163 = sub nsw i32 %162, 1
  %164 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %165 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %5, align 4
  br label %189

167:                                              ; preds = %149
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  br label %125

171:                                              ; preds = %148, %138, %125
  %172 = load i32, i32* %13, align 4
  %173 = mul nsw i32 %172, 2
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %8, align 4
  %175 = udiv i32 %174, 2
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %12, align 4
  %178 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @madera_find_fratio(%struct.madera_fll* %178, i32 %179, i32 %180, i32* null)
  store i32 %181, i32* %10, align 4
  br label %91

182:                                              ; preds = %91
  %183 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %184 = call i32 @madera_fll_warn(%struct.madera_fll* %183, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %185 = load %struct.madera_fll_cfg*, %struct.madera_fll_cfg** %7, align 8
  %186 = getelementptr inbounds %struct.madera_fll_cfg, %struct.madera_fll_cfg* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %182, %158, %109, %85, %82, %76, %73, %45, %32
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i32 @madera_find_fratio(%struct.madera_fll*, i32, i32, i32*) #1

declare dso_local i32 @madera_fll_err(%struct.madera_fll*, i8*, i32) #1

declare dso_local i32 @madera_fll_warn(%struct.madera_fll*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
