; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_configure_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_configure_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { i32, i32, i32, %struct.regmap* }
%struct.regmap = type { i32 }

@HZ = common dso_local global i32 0, align 4
@NAU8825_REG_CLK_DIVIDER = common dso_local global i32 0, align 4
@NAU8825_CLK_MCLK_SRC_MASK = common dso_local global i32 0, align 4
@NAU8825_REG_FLL6 = common dso_local global i32 0, align 4
@NAU8825_DCO_EN = common dso_local global i32 0, align 4
@NAU8825_CLK_SRC_MASK = common dso_local global i32 0, align 4
@NAU8825_CLK_SRC_VCO = common dso_local global i32 0, align 4
@NAU8825_REG_FLL1 = common dso_local global i32 0, align 4
@NAU8825_ICTRL_LATCH_MASK = common dso_local global i32 0, align 4
@NAU8825_FLL_RATIO_MASK = common dso_local global i32 0, align 4
@NAU8825_SDM_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Disable clock for power saving when no headset connected\0A\00", align 1
@NAU8825_REG_FLL3 = common dso_local global i32 0, align 4
@NAU8825_FLL_CLK_SRC_MASK = common dso_local global i32 0, align 4
@NAU8825_GAIN_ERR_MASK = common dso_local global i32 0, align 4
@NAU8825_FLL_CLK_SRC_MCLK = common dso_local global i32 0, align 4
@NAU8825_FLL_CLK_SRC_BLK = common dso_local global i32 0, align 4
@NAU8825_GAIN_ERR_SFT = common dso_local global i32 0, align 4
@NAU8825_FLL_CLK_SRC_FS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid clock id (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nau8825*, i32, i32)* @nau8825_configure_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8825_configure_sysclk(%struct.nau8825* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nau8825*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  store %struct.nau8825* %0, %struct.nau8825** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %11 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %10, i32 0, i32 3
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %182 [
    i32 133, label %14
    i32 128, label %29
    i32 129, label %50
    i32 130, label %102
    i32 132, label %124
    i32 131, label %153
  ]

14:                                               ; preds = %3
  %15 = load %struct.regmap*, %struct.regmap** %8, align 8
  %16 = call i32 @nau8825_configure_mclk_as_sysclk(%struct.regmap* %15)
  %17 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %18 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %23 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_disable_unprepare(i32 %24)
  %26 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %27 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %21, %14
  br label %190

29:                                               ; preds = %3
  %30 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %31 = load i32, i32* @HZ, align 4
  %32 = mul nsw i32 3, %31
  %33 = call i32 @nau8825_sema_acquire(%struct.nau8825* %30, i32 %32)
  %34 = load %struct.regmap*, %struct.regmap** %8, align 8
  %35 = call i32 @nau8825_configure_mclk_as_sysclk(%struct.regmap* %34)
  %36 = load %struct.regmap*, %struct.regmap** %8, align 8
  %37 = load i32, i32* @NAU8825_REG_CLK_DIVIDER, align 4
  %38 = load i32, i32* @NAU8825_CLK_MCLK_SRC_MASK, align 4
  %39 = call i32 @regmap_update_bits(%struct.regmap* %36, i32 %37, i32 %38, i32 0)
  %40 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %41 = call i32 @nau8825_sema_release(%struct.nau8825* %40)
  %42 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @nau8825_mclk_prepare(%struct.nau8825* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %29
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %197

49:                                               ; preds = %29
  br label %190

50:                                               ; preds = %3
  %51 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %52 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %51, i32 0, i32 3
  %53 = load %struct.regmap*, %struct.regmap** %52, align 8
  %54 = call i32 @nau8825_is_jack_inserted(%struct.regmap* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %50
  %57 = load %struct.regmap*, %struct.regmap** %8, align 8
  %58 = load i32, i32* @NAU8825_REG_FLL6, align 4
  %59 = load i32, i32* @NAU8825_DCO_EN, align 4
  %60 = load i32, i32* @NAU8825_DCO_EN, align 4
  %61 = call i32 @regmap_update_bits(%struct.regmap* %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.regmap*, %struct.regmap** %8, align 8
  %63 = load i32, i32* @NAU8825_REG_CLK_DIVIDER, align 4
  %64 = load i32, i32* @NAU8825_CLK_SRC_MASK, align 4
  %65 = load i32, i32* @NAU8825_CLK_SRC_VCO, align 4
  %66 = call i32 @regmap_update_bits(%struct.regmap* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.regmap*, %struct.regmap** %8, align 8
  %68 = load i32, i32* @NAU8825_REG_CLK_DIVIDER, align 4
  %69 = load i32, i32* @NAU8825_CLK_MCLK_SRC_MASK, align 4
  %70 = call i32 @regmap_update_bits(%struct.regmap* %67, i32 %68, i32 %69, i32 15)
  %71 = load %struct.regmap*, %struct.regmap** %8, align 8
  %72 = load i32, i32* @NAU8825_REG_FLL1, align 4
  %73 = load i32, i32* @NAU8825_ICTRL_LATCH_MASK, align 4
  %74 = load i32, i32* @NAU8825_FLL_RATIO_MASK, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @regmap_update_bits(%struct.regmap* %71, i32 %72, i32 %75, i32 16)
  %77 = load %struct.regmap*, %struct.regmap** %8, align 8
  %78 = load i32, i32* @NAU8825_REG_FLL6, align 4
  %79 = load i32, i32* @NAU8825_SDM_EN, align 4
  %80 = load i32, i32* @NAU8825_SDM_EN, align 4
  %81 = call i32 @regmap_update_bits(%struct.regmap* %77, i32 %78, i32 %79, i32 %80)
  br label %89

82:                                               ; preds = %50
  %83 = load %struct.regmap*, %struct.regmap** %8, align 8
  %84 = call i32 @nau8825_configure_mclk_as_sysclk(%struct.regmap* %83)
  %85 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %86 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dev_warn(i32 %87, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %82, %56
  %90 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %91 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %96 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @clk_disable_unprepare(i32 %97)
  %99 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %100 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %94, %89
  br label %190

102:                                              ; preds = %3
  %103 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %104 = load i32, i32* @HZ, align 4
  %105 = mul nsw i32 3, %104
  %106 = call i32 @nau8825_sema_acquire(%struct.nau8825* %103, i32 %105)
  %107 = load %struct.regmap*, %struct.regmap** %8, align 8
  %108 = load i32, i32* @NAU8825_REG_FLL3, align 4
  %109 = load i32, i32* @NAU8825_FLL_CLK_SRC_MASK, align 4
  %110 = load i32, i32* @NAU8825_GAIN_ERR_MASK, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @NAU8825_FLL_CLK_SRC_MCLK, align 4
  %113 = call i32 @regmap_update_bits(%struct.regmap* %107, i32 %108, i32 %111, i32 %112)
  %114 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %115 = call i32 @nau8825_sema_release(%struct.nau8825* %114)
  %116 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @nau8825_mclk_prepare(%struct.nau8825* %116, i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %102
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %4, align 4
  br label %197

123:                                              ; preds = %102
  br label %190

124:                                              ; preds = %3
  %125 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %126 = load i32, i32* @HZ, align 4
  %127 = mul nsw i32 3, %126
  %128 = call i32 @nau8825_sema_acquire(%struct.nau8825* %125, i32 %127)
  %129 = load %struct.regmap*, %struct.regmap** %8, align 8
  %130 = load i32, i32* @NAU8825_REG_FLL3, align 4
  %131 = load i32, i32* @NAU8825_FLL_CLK_SRC_MASK, align 4
  %132 = load i32, i32* @NAU8825_GAIN_ERR_MASK, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @NAU8825_FLL_CLK_SRC_BLK, align 4
  %135 = load i32, i32* @NAU8825_GAIN_ERR_SFT, align 4
  %136 = shl i32 15, %135
  %137 = or i32 %134, %136
  %138 = call i32 @regmap_update_bits(%struct.regmap* %129, i32 %130, i32 %133, i32 %137)
  %139 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %140 = call i32 @nau8825_sema_release(%struct.nau8825* %139)
  %141 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %142 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %124
  %146 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %147 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @clk_disable_unprepare(i32 %148)
  %150 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %151 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %150, i32 0, i32 1
  store i32 0, i32* %151, align 4
  br label %152

152:                                              ; preds = %145, %124
  br label %190

153:                                              ; preds = %3
  %154 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %155 = load i32, i32* @HZ, align 4
  %156 = mul nsw i32 3, %155
  %157 = call i32 @nau8825_sema_acquire(%struct.nau8825* %154, i32 %156)
  %158 = load %struct.regmap*, %struct.regmap** %8, align 8
  %159 = load i32, i32* @NAU8825_REG_FLL3, align 4
  %160 = load i32, i32* @NAU8825_FLL_CLK_SRC_MASK, align 4
  %161 = load i32, i32* @NAU8825_GAIN_ERR_MASK, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @NAU8825_FLL_CLK_SRC_FS, align 4
  %164 = load i32, i32* @NAU8825_GAIN_ERR_SFT, align 4
  %165 = shl i32 15, %164
  %166 = or i32 %163, %165
  %167 = call i32 @regmap_update_bits(%struct.regmap* %158, i32 %159, i32 %162, i32 %166)
  %168 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %169 = call i32 @nau8825_sema_release(%struct.nau8825* %168)
  %170 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %171 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %153
  %175 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %176 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @clk_disable_unprepare(i32 %177)
  %179 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %180 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %179, i32 0, i32 1
  store i32 0, i32* %180, align 4
  br label %181

181:                                              ; preds = %174, %153
  br label %190

182:                                              ; preds = %3
  %183 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %184 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @dev_err(i32 %185, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %4, align 4
  br label %197

190:                                              ; preds = %181, %152, %123, %101, %49, %28
  %191 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %192 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* %6, align 4
  %196 = call i32 @dev_dbg(i32 %193, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %194, i32 %195)
  store i32 0, i32* %4, align 4
  br label %197

197:                                              ; preds = %190, %182, %121, %47
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @nau8825_configure_mclk_as_sysclk(%struct.regmap*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @nau8825_sema_acquire(%struct.nau8825*, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @nau8825_sema_release(%struct.nau8825*) #1

declare dso_local i32 @nau8825_mclk_prepare(%struct.nau8825*, i32) #1

declare dso_local i32 @nau8825_is_jack_inserted(%struct.regmap*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
