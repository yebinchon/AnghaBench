; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_configure_input_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_configure_input_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32**, i32* }

@.str = private unnamed_addr constant [23 x i8] c"IN%d mode %u:%u:%u:%u\0A\00", align 1
@MADERA_IN1_DMIC_SUP_SHIFT = common dso_local global i32 0, align 4
@MADERA_IN1L_SRC_SE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"IN%dAL Illegal inmode %u ignored\0A\00", align 1
@MADERA_IN1R_SRC_SE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"IN%dAR Illegal inmode %u ignored\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"IN%dA DMIC mode=0x%x Analogue mode=0x%x,0x%x\0A\00", align 1
@MADERA_IN1L_CONTROL = common dso_local global i64 0, align 8
@MADERA_IN1_DMIC_SUP_MASK = common dso_local global i32 0, align 4
@MADERA_ADC_DIGITAL_VOLUME_1L = common dso_local global i64 0, align 8
@MADERA_IN1L_SRC_SE_MASK = common dso_local global i32 0, align 4
@MADERA_ADC_DIGITAL_VOLUME_1R = common dso_local global i64 0, align 8
@MADERA_IN1R_SRC_SE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.madera*)* @madera_configure_input_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @madera_configure_input_mode(%struct.madera* %0) #0 {
  %2 = alloca %struct.madera*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.madera* %0, %struct.madera** %2, align 8
  %9 = load %struct.madera*, %struct.madera** %2, align 8
  %10 = getelementptr inbounds %struct.madera, %struct.madera* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %16 [
    i32 135, label %12
    i32 134, label %13
    i32 133, label %14
    i32 128, label %14
    i32 132, label %15
    i32 131, label %15
  ]

12:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  store i32 2, i32* %7, align 4
  br label %17

13:                                               ; preds = %1
  store i32 2, i32* %6, align 4
  store i32 2, i32* %7, align 4
  br label %17

14:                                               ; preds = %1, %1
  store i32 3, i32* %6, align 4
  store i32 3, i32* %7, align 4
  br label %17

15:                                               ; preds = %1, %1
  store i32 2, i32* %6, align 4
  store i32 2, i32* %7, align 4
  br label %17

16:                                               ; preds = %1
  store i32 2, i32* %6, align 4
  store i32 4, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %199, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %202

22:                                               ; preds = %18
  %23 = load %struct.madera*, %struct.madera** %2, align 8
  %24 = getelementptr inbounds %struct.madera, %struct.madera* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  %28 = load %struct.madera*, %struct.madera** %2, align 8
  %29 = getelementptr inbounds %struct.madera, %struct.madera* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.madera*, %struct.madera** %2, align 8
  %40 = getelementptr inbounds %struct.madera, %struct.madera* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.madera*, %struct.madera** %2, align 8
  %51 = getelementptr inbounds %struct.madera, %struct.madera* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.madera*, %struct.madera** %2, align 8
  %62 = getelementptr inbounds %struct.madera, %struct.madera* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @dev_dbg(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %38, i32 %49, i32 %60, i32 %71)
  %73 = load %struct.madera*, %struct.madera** %2, align 8
  %74 = getelementptr inbounds %struct.madera, %struct.madera* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MADERA_IN1_DMIC_SUP_SHIFT, align 4
  %83 = shl i32 %81, %82
  store i32 %83, i32* %3, align 4
  %84 = load %struct.madera*, %struct.madera** %2, align 8
  %85 = getelementptr inbounds %struct.madera, %struct.madera* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %99 [
    i32 130, label %95
    i32 129, label %96
  ]

95:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %117

96:                                               ; preds = %22
  %97 = load i32, i32* @MADERA_IN1L_SRC_SE_SHIFT, align 4
  %98 = shl i32 1, %97
  store i32 %98, i32* %4, align 4
  br label %117

99:                                               ; preds = %22
  %100 = load %struct.madera*, %struct.madera** %2, align 8
  %101 = getelementptr inbounds %struct.madera, %struct.madera* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  %105 = load %struct.madera*, %struct.madera** %2, align 8
  %106 = getelementptr inbounds %struct.madera, %struct.madera* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32**, i32*** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dev_warn(i32 %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %115)
  br label %199

117:                                              ; preds = %96, %95
  %118 = load %struct.madera*, %struct.madera** %2, align 8
  %119 = getelementptr inbounds %struct.madera, %struct.madera* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  switch i32 %128, label %133 [
    i32 130, label %129
    i32 129, label %130
  ]

129:                                              ; preds = %117
  store i32 0, i32* %5, align 4
  br label %151

130:                                              ; preds = %117
  %131 = load i32, i32* @MADERA_IN1R_SRC_SE_SHIFT, align 4
  %132 = shl i32 1, %131
  store i32 %132, i32* %5, align 4
  br label %151

133:                                              ; preds = %117
  %134 = load %struct.madera*, %struct.madera** %2, align 8
  %135 = getelementptr inbounds %struct.madera, %struct.madera* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  %139 = load %struct.madera*, %struct.madera** %2, align 8
  %140 = getelementptr inbounds %struct.madera, %struct.madera* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @dev_warn(i32 %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %138, i32 %149)
  br label %199

151:                                              ; preds = %130, %129
  %152 = load %struct.madera*, %struct.madera** %2, align 8
  %153 = getelementptr inbounds %struct.madera, %struct.madera* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @dev_dbg(i32 %154, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %156, i32 %157, i32 %158, i32 %159)
  %161 = load %struct.madera*, %struct.madera** %2, align 8
  %162 = getelementptr inbounds %struct.madera, %struct.madera* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i64, i64* @MADERA_IN1L_CONTROL, align 8
  %165 = load i32, i32* %8, align 4
  %166 = mul nsw i32 %165, 8
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %164, %167
  %169 = load i32, i32* @MADERA_IN1_DMIC_SUP_MASK, align 4
  %170 = load i32, i32* %3, align 4
  %171 = call i32 @regmap_update_bits(i32 %163, i64 %168, i32 %169, i32 %170)
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp sge i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %151
  br label %199

176:                                              ; preds = %151
  %177 = load %struct.madera*, %struct.madera** %2, align 8
  %178 = getelementptr inbounds %struct.madera, %struct.madera* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i64, i64* @MADERA_ADC_DIGITAL_VOLUME_1L, align 8
  %181 = load i32, i32* %8, align 4
  %182 = mul nsw i32 %181, 8
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %180, %183
  %185 = load i32, i32* @MADERA_IN1L_SRC_SE_MASK, align 4
  %186 = load i32, i32* %4, align 4
  %187 = call i32 @regmap_update_bits(i32 %179, i64 %184, i32 %185, i32 %186)
  %188 = load %struct.madera*, %struct.madera** %2, align 8
  %189 = getelementptr inbounds %struct.madera, %struct.madera* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i64, i64* @MADERA_ADC_DIGITAL_VOLUME_1R, align 8
  %192 = load i32, i32* %8, align 4
  %193 = mul nsw i32 %192, 8
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %191, %194
  %196 = load i32, i32* @MADERA_IN1R_SRC_SE_MASK, align 4
  %197 = load i32, i32* %5, align 4
  %198 = call i32 @regmap_update_bits(i32 %190, i64 %195, i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %176, %175, %133, %99
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %8, align 4
  br label %18

202:                                              ; preds = %18
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
