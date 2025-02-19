; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cpcap.c_cpcap_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_audio = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CPCAP_REG_SDAC = common dso_local global i32 0, align 4
@CPCAP_BIT_ST_DAC_CLK0 = common dso_local global i32 0, align 4
@CPCAP_REG_SDACDI = common dso_local global i32 0, align 4
@CPCAP_BIT_ST_DAC_CLK_IN_SEL = common dso_local global i32 0, align 4
@CPCAP_REG_CC = common dso_local global i32 0, align 4
@CPCAP_BIT_CDC_CLK0 = common dso_local global i32 0, align 4
@CPCAP_REG_CDI = common dso_local global i32 0, align 4
@CPCAP_BIT_CLK_IN_SEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"invalid DAI: %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid clk id %d\00", align 1
@CPCAP_BIT_CDC_PLL_SEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"unsupported freq %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_audio*, i32, i32, i32)* @cpcap_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_set_sysclk(%struct.cpcap_audio* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpcap_audio*, align 8
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
  store %struct.cpcap_audio* %0, %struct.cpcap_audio** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %30 [
    i32 129, label %20
    i32 128, label %25
  ]

20:                                               ; preds = %4
  %21 = load i32, i32* @CPCAP_REG_SDAC, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @CPCAP_BIT_ST_DAC_CLK0, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @CPCAP_REG_SDACDI, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* @CPCAP_BIT_ST_DAC_CLK_IN_SEL, align 4
  store i32 %24, i32* %15, align 4
  br label %40

25:                                               ; preds = %4
  %26 = load i32, i32* @CPCAP_REG_CC, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @CPCAP_BIT_CDC_CLK0, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @CPCAP_REG_CDI, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* @CPCAP_BIT_CLK_IN_SEL, align 4
  store i32 %29, i32* %15, align 4
  br label %40

30:                                               ; preds = %4
  %31 = load %struct.cpcap_audio*, %struct.cpcap_audio** %6, align 8
  %32 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %151

40:                                               ; preds = %25, %20
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %56

46:                                               ; preds = %43, %40
  %47 = load %struct.cpcap_audio*, %struct.cpcap_audio** %6, align 8
  %48 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %151

56:                                               ; preds = %43
  %57 = load %struct.cpcap_audio*, %struct.cpcap_audio** %6, align 8
  %58 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @BIT(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @BIT(i32 %66)
  br label %69

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %65
  %70 = phi i32 [ %67, %65 ], [ 0, %68 ]
  %71 = call i32 @regmap_update_bits(i32 %59, i32 %60, i32 %62, i32 %70)
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %18, align 4
  store i32 %75, i32* %5, align 4
  br label %151

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %77, 128
  br i1 %78, label %79, label %96

79:                                               ; preds = %76
  %80 = load i32, i32* @CPCAP_BIT_CDC_PLL_SEL, align 4
  %81 = call i32 @BIT(i32 %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* @CPCAP_BIT_CDC_PLL_SEL, align 4
  %83 = call i32 @BIT(i32 %82)
  store i32 %83, i32* %17, align 4
  %84 = load %struct.cpcap_audio*, %struct.cpcap_audio** %6, align 8
  %85 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @CPCAP_REG_CDI, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @regmap_update_bits(i32 %86, i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %79
  %94 = load i32, i32* %18, align 4
  store i32 %94, i32* %5, align 4
  br label %151

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %76
  %97 = load i32, i32* %11, align 4
  %98 = shl i32 7, %97
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %9, align 4
  switch i32 %99, label %118 [
    i32 15360000, label %100
    i32 16800000, label %103
    i32 19200000, label %106
    i32 26000000, label %109
    i32 33600000, label %112
    i32 38400000, label %115
  ]

100:                                              ; preds = %96
  %101 = load i32, i32* %11, align 4
  %102 = shl i32 1, %101
  store i32 %102, i32* %13, align 4
  br label %128

103:                                              ; preds = %96
  %104 = load i32, i32* %11, align 4
  %105 = shl i32 2, %104
  store i32 %105, i32* %13, align 4
  br label %128

106:                                              ; preds = %96
  %107 = load i32, i32* %11, align 4
  %108 = shl i32 3, %107
  store i32 %108, i32* %13, align 4
  br label %128

109:                                              ; preds = %96
  %110 = load i32, i32* %11, align 4
  %111 = shl i32 4, %110
  store i32 %111, i32* %13, align 4
  br label %128

112:                                              ; preds = %96
  %113 = load i32, i32* %11, align 4
  %114 = shl i32 5, %113
  store i32 %114, i32* %13, align 4
  br label %128

115:                                              ; preds = %96
  %116 = load i32, i32* %11, align 4
  %117 = shl i32 6, %116
  store i32 %117, i32* %13, align 4
  br label %128

118:                                              ; preds = %96
  %119 = load %struct.cpcap_audio*, %struct.cpcap_audio** %6, align 8
  %120 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %119, i32 0, i32 3
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @dev_err(i32 %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %5, align 4
  br label %151

128:                                              ; preds = %115, %112, %109, %106, %103, %100
  %129 = load %struct.cpcap_audio*, %struct.cpcap_audio** %6, align 8
  %130 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @regmap_update_bits(i32 %131, i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %128
  %139 = load i32, i32* %18, align 4
  store i32 %139, i32* %5, align 4
  br label %151

140:                                              ; preds = %128
  %141 = load i32, i32* %7, align 4
  %142 = icmp eq i32 %141, 128
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.cpcap_audio*, %struct.cpcap_audio** %6, align 8
  %146 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.cpcap_audio*, %struct.cpcap_audio** %6, align 8
  %149 = getelementptr inbounds %struct.cpcap_audio, %struct.cpcap_audio* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %143, %140
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %150, %138, %118, %93, %74, %46, %30
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
