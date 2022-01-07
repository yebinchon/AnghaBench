; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_validate_bq_drc_coeff.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_validate_bq_drc_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RT1011_DAC_SET_1 = common dso_local global i16 0, align 2
@RT1011_ADC_SET = common dso_local global i16 0, align 2
@RT1011_ADC_SET_1 = common dso_local global i16 0, align 2
@RT1011_ADC_SET_4 = common dso_local global i16 0, align 2
@RT1011_ADC_SET_5 = common dso_local global i16 0, align 2
@RT1011_MIXER_1 = common dso_local global i16 0, align 2
@RT1011_A_TIMING_1 = common dso_local global i16 0, align 2
@RT1011_POWER_7 = common dso_local global i16 0, align 2
@RT1011_POWER_8 = common dso_local global i16 0, align 2
@RT1011_CLASS_D_POS = common dso_local global i16 0, align 2
@RT1011_ANALOG_CTRL = common dso_local global i16 0, align 2
@RT1011_SPK_TEMP_PROTECT_0 = common dso_local global i16 0, align 2
@RT1011_SPK_TEMP_PROTECT_6 = common dso_local global i16 0, align 2
@RT1011_SPK_PRO_DC_DET_5 = common dso_local global i16 0, align 2
@RT1011_BAT_GAIN_1 = common dso_local global i16 0, align 2
@RT1011_RT_DRC_CROSS = common dso_local global i16 0, align 2
@RT1011_RT_DRC_POS_8 = common dso_local global i16 0, align 2
@RT1011_CROSS_BQ_SET_1 = common dso_local global i16 0, align 2
@RT1011_BQ_10_A2_15_0 = common dso_local global i16 0, align 2
@RT1011_SMART_BOOST_TIMING_1 = common dso_local global i16 0, align 2
@RT1011_SMART_BOOST_TIMING_36 = common dso_local global i16 0, align 2
@RT1011_SINE_GEN_REG_1 = common dso_local global i16 0, align 2
@RT1011_STP_ALPHA_RECIPROCAL_MSB = common dso_local global i16 0, align 2
@RT1011_BQ_6_PARAMS_CHECK_5 = common dso_local global i16 0, align 2
@RT1011_BQ_7_PARAMS_CHECK_1 = common dso_local global i16 0, align 2
@RT1011_BQ_10_PARAMS_CHECK_5 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16)* @rt1011_validate_bq_drc_coeff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1011_validate_bq_drc_coeff(i16 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  %4 = load i16, i16* %3, align 2
  %5 = zext i16 %4 to i32
  %6 = load i16, i16* @RT1011_DAC_SET_1, align 2
  %7 = zext i16 %6 to i32
  %8 = icmp eq i32 %5, %7
  %9 = zext i1 %8 to i32
  %10 = load i16, i16* %3, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* @RT1011_ADC_SET, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp sge i32 %11, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i16, i16* %3, align 2
  %17 = zext i16 %16 to i32
  %18 = load i16, i16* @RT1011_ADC_SET_1, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp sle i32 %17, %19
  br label %21

21:                                               ; preds = %15, %1
  %22 = phi i1 [ false, %1 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = or i32 %9, %23
  %25 = load i16, i16* %3, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* @RT1011_ADC_SET_4, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp eq i32 %26, %28
  %30 = zext i1 %29 to i32
  %31 = or i32 %24, %30
  %32 = load i16, i16* %3, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* @RT1011_ADC_SET_5, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp eq i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = or i32 %31, %37
  %39 = load i16, i16* %3, align 2
  %40 = zext i16 %39 to i32
  %41 = load i16, i16* @RT1011_MIXER_1, align 2
  %42 = zext i16 %41 to i32
  %43 = icmp eq i32 %40, %42
  %44 = zext i1 %43 to i32
  %45 = or i32 %38, %44
  %46 = load i16, i16* %3, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* @RT1011_A_TIMING_1, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp eq i32 %47, %49
  %51 = zext i1 %50 to i32
  %52 = or i32 %45, %51
  %53 = load i16, i16* %3, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* @RT1011_POWER_7, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp sge i32 %54, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %21
  %59 = load i16, i16* %3, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* @RT1011_POWER_8, align 2
  %62 = zext i16 %61 to i32
  %63 = icmp sle i32 %60, %62
  br label %64

64:                                               ; preds = %58, %21
  %65 = phi i1 [ false, %21 ], [ %63, %58 ]
  %66 = zext i1 %65 to i32
  %67 = or i32 %52, %66
  %68 = load i16, i16* %3, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16, i16* @RT1011_CLASS_D_POS, align 2
  %71 = zext i16 %70 to i32
  %72 = icmp eq i32 %69, %71
  %73 = zext i1 %72 to i32
  %74 = or i32 %67, %73
  %75 = load i16, i16* %3, align 2
  %76 = zext i16 %75 to i32
  %77 = load i16, i16* @RT1011_ANALOG_CTRL, align 2
  %78 = zext i16 %77 to i32
  %79 = icmp eq i32 %76, %78
  %80 = zext i1 %79 to i32
  %81 = or i32 %74, %80
  %82 = load i16, i16* %3, align 2
  %83 = zext i16 %82 to i32
  %84 = load i16, i16* @RT1011_SPK_TEMP_PROTECT_0, align 2
  %85 = zext i16 %84 to i32
  %86 = icmp sge i32 %83, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %64
  %88 = load i16, i16* %3, align 2
  %89 = zext i16 %88 to i32
  %90 = load i16, i16* @RT1011_SPK_TEMP_PROTECT_6, align 2
  %91 = zext i16 %90 to i32
  %92 = icmp sle i32 %89, %91
  br label %93

93:                                               ; preds = %87, %64
  %94 = phi i1 [ false, %64 ], [ %92, %87 ]
  %95 = zext i1 %94 to i32
  %96 = or i32 %81, %95
  %97 = load i16, i16* %3, align 2
  %98 = zext i16 %97 to i32
  %99 = load i16, i16* @RT1011_SPK_PRO_DC_DET_5, align 2
  %100 = zext i16 %99 to i32
  %101 = icmp sge i32 %98, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %93
  %103 = load i16, i16* %3, align 2
  %104 = zext i16 %103 to i32
  %105 = load i16, i16* @RT1011_BAT_GAIN_1, align 2
  %106 = zext i16 %105 to i32
  %107 = icmp sle i32 %104, %106
  br label %108

108:                                              ; preds = %102, %93
  %109 = phi i1 [ false, %93 ], [ %107, %102 ]
  %110 = zext i1 %109 to i32
  %111 = or i32 %96, %110
  %112 = load i16, i16* %3, align 2
  %113 = zext i16 %112 to i32
  %114 = load i16, i16* @RT1011_RT_DRC_CROSS, align 2
  %115 = zext i16 %114 to i32
  %116 = icmp sge i32 %113, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %108
  %118 = load i16, i16* %3, align 2
  %119 = zext i16 %118 to i32
  %120 = load i16, i16* @RT1011_RT_DRC_POS_8, align 2
  %121 = zext i16 %120 to i32
  %122 = icmp sle i32 %119, %121
  br label %123

123:                                              ; preds = %117, %108
  %124 = phi i1 [ false, %108 ], [ %122, %117 ]
  %125 = zext i1 %124 to i32
  %126 = or i32 %111, %125
  %127 = load i16, i16* %3, align 2
  %128 = zext i16 %127 to i32
  %129 = load i16, i16* @RT1011_CROSS_BQ_SET_1, align 2
  %130 = zext i16 %129 to i32
  %131 = icmp sge i32 %128, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %123
  %133 = load i16, i16* %3, align 2
  %134 = zext i16 %133 to i32
  %135 = load i16, i16* @RT1011_BQ_10_A2_15_0, align 2
  %136 = zext i16 %135 to i32
  %137 = icmp sle i32 %134, %136
  br label %138

138:                                              ; preds = %132, %123
  %139 = phi i1 [ false, %123 ], [ %137, %132 ]
  %140 = zext i1 %139 to i32
  %141 = or i32 %126, %140
  %142 = load i16, i16* %3, align 2
  %143 = zext i16 %142 to i32
  %144 = load i16, i16* @RT1011_SMART_BOOST_TIMING_1, align 2
  %145 = zext i16 %144 to i32
  %146 = icmp sge i32 %143, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %138
  %148 = load i16, i16* %3, align 2
  %149 = zext i16 %148 to i32
  %150 = load i16, i16* @RT1011_SMART_BOOST_TIMING_36, align 2
  %151 = zext i16 %150 to i32
  %152 = icmp sle i32 %149, %151
  br label %153

153:                                              ; preds = %147, %138
  %154 = phi i1 [ false, %138 ], [ %152, %147 ]
  %155 = zext i1 %154 to i32
  %156 = or i32 %141, %155
  %157 = load i16, i16* %3, align 2
  %158 = zext i16 %157 to i32
  %159 = load i16, i16* @RT1011_SINE_GEN_REG_1, align 2
  %160 = zext i16 %159 to i32
  %161 = icmp eq i32 %158, %160
  %162 = zext i1 %161 to i32
  %163 = or i32 %156, %162
  %164 = load i16, i16* %3, align 2
  %165 = zext i16 %164 to i32
  %166 = load i16, i16* @RT1011_STP_ALPHA_RECIPROCAL_MSB, align 2
  %167 = zext i16 %166 to i32
  %168 = icmp sge i32 %165, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %153
  %170 = load i16, i16* %3, align 2
  %171 = zext i16 %170 to i32
  %172 = load i16, i16* @RT1011_BQ_6_PARAMS_CHECK_5, align 2
  %173 = zext i16 %172 to i32
  %174 = icmp sle i32 %171, %173
  br label %175

175:                                              ; preds = %169, %153
  %176 = phi i1 [ false, %153 ], [ %174, %169 ]
  %177 = zext i1 %176 to i32
  %178 = or i32 %163, %177
  %179 = load i16, i16* %3, align 2
  %180 = zext i16 %179 to i32
  %181 = load i16, i16* @RT1011_BQ_7_PARAMS_CHECK_1, align 2
  %182 = zext i16 %181 to i32
  %183 = icmp sge i32 %180, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %175
  %185 = load i16, i16* %3, align 2
  %186 = zext i16 %185 to i32
  %187 = load i16, i16* @RT1011_BQ_10_PARAMS_CHECK_5, align 2
  %188 = zext i16 %187 to i32
  %189 = icmp sle i32 %186, %188
  br label %190

190:                                              ; preds = %184, %175
  %191 = phi i1 [ false, %175 ], [ %189, %184 ]
  %192 = zext i1 %191 to i32
  %193 = or i32 %178, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  store i32 1, i32* %2, align 4
  br label %197

196:                                              ; preds = %190
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %196, %195
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
