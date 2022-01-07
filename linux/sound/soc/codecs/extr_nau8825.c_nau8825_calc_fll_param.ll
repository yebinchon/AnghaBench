; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_calc_fll_param.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_calc_fll_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.nau8825_fll = type { i32, i32, i32, i32, i32 }

@fll_pre_scalar = common dso_local global %struct.TYPE_5__* null, align 8
@NAU_FREF_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@fll_ratio = common dso_local global %struct.TYPE_5__* null, align 8
@mclk_src_scaling = common dso_local global %struct.TYPE_5__* null, align 8
@NAU_FVCO_MIN = common dso_local global i32 0, align 4
@NAU_FVCO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.nau8825_fll*)* @nau8825_calc_fll_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8825_calc_fll_param(i32 %0, i32 %1, %struct.nau8825_fll* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nau8825_fll*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.nau8825_fll* %2, %struct.nau8825_fll** %7, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %32, %3
  %14 = load i32, i32* %11, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fll_pre_scalar, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %15)
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fll_pre_scalar, align 8
  %21 = load i32, i32* %11, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = udiv i32 %19, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @NAU_FREF_MAX, align 4
  %29 = icmp ule i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %35

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %11, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %13

35:                                               ; preds = %30, %13
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fll_pre_scalar, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %37)
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %161

43:                                               ; preds = %35
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fll_pre_scalar, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nau8825_fll*, %struct.nau8825_fll** %7, align 8
  %51 = getelementptr inbounds %struct.nau8825_fll, %struct.nau8825_fll* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %68, %43
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fll_ratio, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %54)
  %56 = icmp ult i32 %53, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fll_ratio, align 8
  %60 = load i32, i32* %11, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp uge i32 %58, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %71

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %52

71:                                               ; preds = %66, %52
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fll_ratio, align 8
  %74 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %73)
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %161

79:                                               ; preds = %71
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fll_ratio, align 8
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nau8825_fll*, %struct.nau8825_fll** %7, align 8
  %87 = getelementptr inbounds %struct.nau8825_fll, %struct.nau8825_fll* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  store i32 0, i32* %9, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mclk_src_scaling, align 8
  %89 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %88)
  store i32 %89, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %124, %79
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mclk_src_scaling, align 8
  %93 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %92)
  %94 = icmp ult i32 %91, %93
  br i1 %94, label %95, label %127

95:                                               ; preds = %90
  %96 = load i32, i32* %6, align 4
  %97 = zext i32 %96 to i64
  %98 = mul i64 256, %97
  %99 = mul i64 %98, 2
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mclk_src_scaling, align 8
  %101 = load i32, i32* %11, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = zext i32 %105 to i64
  %107 = mul i64 %99, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @NAU_FVCO_MIN, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %95
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @NAU_FVCO_MAX, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %120, %116, %112, %95
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %11, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %90

127:                                              ; preds = %90
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mclk_src_scaling, align 8
  %129 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %128)
  %130 = load i32, i32* %12, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %161

135:                                              ; preds = %127
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mclk_src_scaling, align 8
  %137 = load i32, i32* %12, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.nau8825_fll*, %struct.nau8825_fll** %7, align 8
  %143 = getelementptr inbounds %struct.nau8825_fll, %struct.nau8825_fll* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %9, align 4
  %145 = shl i32 %144, 16
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.nau8825_fll*, %struct.nau8825_fll** %7, align 8
  %148 = getelementptr inbounds %struct.nau8825_fll, %struct.nau8825_fll* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = mul i32 %146, %149
  %151 = call i32 @div_u64(i32 %145, i32 %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = ashr i32 %152, 16
  %154 = and i32 %153, 1023
  %155 = load %struct.nau8825_fll*, %struct.nau8825_fll** %7, align 8
  %156 = getelementptr inbounds %struct.nau8825_fll, %struct.nau8825_fll* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %8, align 4
  %158 = and i32 %157, 65535
  %159 = load %struct.nau8825_fll*, %struct.nau8825_fll** %7, align 8
  %160 = getelementptr inbounds %struct.nau8825_fll, %struct.nau8825_fll* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 4
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %135, %132, %76, %40
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
