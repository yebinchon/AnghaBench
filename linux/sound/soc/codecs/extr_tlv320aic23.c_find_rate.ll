; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic23.c_find_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic23.c_find_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT_MAX = common dso_local global i32 0, align 4
@SR_MULT = common dso_local global i32 0, align 4
@bosr_usb_divisor_table = common dso_local global i32* null, align 8
@sr_valid_mask = common dso_local global i32* null, align 8
@sr_adc_mult_table = common dso_local global i32* null, align 8
@sr_dac_mult_table = common dso_local global i32* null, align 8
@TLV320AIC23_CLKIN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @find_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_rate(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* @UINT_MAX, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @SR_MULT, align 4
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @SR_MULT, align 4
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 5
  %32 = sub nsw i32 %29, %31
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 5
  %36 = add nsw i32 %33, %35
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 5
  %40 = sub nsw i32 %37, %39
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %42, 5
  %44 = add nsw i32 %41, %43
  store i32 %44, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %134, %3
  %46 = load i32, i32* %7, align 4
  %47 = load i32*, i32** @bosr_usb_divisor_table, align 8
  %48 = call i32 @ARRAY_SIZE(i32* %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %137

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = load i32*, i32** @bosr_usb_divisor_table, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %51, %56
  store i32 %57, i32* %17, align 4
  %58 = load i32*, i32** @sr_valid_mask, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %18, align 4
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %128, %50
  %64 = load i32, i32* %8, align 4
  %65 = load i32*, i32** @sr_adc_mult_table, align 8
  %66 = call i32 @ARRAY_SIZE(i32* %65)
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %133

68:                                               ; preds = %63
  %69 = load i32, i32* %18, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %128

73:                                               ; preds = %68
  %74 = load i32, i32* %17, align 4
  %75 = load i32*, i32** @sr_adc_mult_table, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %74, %79
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32*, i32** @sr_dac_mult_table, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %81, %86
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @get_score(i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %21, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %21, align 4
  %99 = icmp ugt i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %73
  %101 = load i32, i32* %21, align 4
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %100, %73
  %105 = load i32, i32* %19, align 4
  %106 = ashr i32 %105, 1
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %20, align 4
  %111 = ashr i32 %110, 1
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @get_score(i32 %106, i32 %107, i32 %108, i32 %109, i32 %111, i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %21, align 4
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* @UINT_MAX, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %104
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %21, align 4
  %122 = icmp uge i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* %21, align 4
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %127

127:                                              ; preds = %123, %119, %104
  br label %128

128:                                              ; preds = %127, %72
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %18, align 4
  %132 = ashr i32 %131, 1
  store i32 %132, i32* %18, align 4
  br label %63

133:                                              ; preds = %63
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %45

137:                                              ; preds = %45
  %138 = load i32, i32* %10, align 4
  %139 = shl i32 %138, 2
  %140 = load i32, i32* %9, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @TLV320AIC23_CLKIN_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = or i32 %141, %144
  ret i32 %145
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @get_score(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
