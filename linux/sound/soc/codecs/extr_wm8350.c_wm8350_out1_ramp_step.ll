; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_out1_ramp_step.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_out1_ramp_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350_data = type { %struct.wm8350*, %struct.wm8350_output }
%struct.wm8350 = type { i32 }
%struct.wm8350_output = type { i64, i32, i32 }

@WM8350_LOUT1_VOLUME = common dso_local global i32 0, align 4
@WM8350_OUT1L_VOL_MASK = common dso_local global i32 0, align 4
@WM8350_OUT1L_VOL_SHIFT = common dso_local global i32 0, align 4
@WM8350_RAMP_UP = common dso_local global i64 0, align 8
@WM8350_RAMP_DOWN = common dso_local global i64 0, align 8
@WM8350_ROUT1_VOLUME = common dso_local global i32 0, align 4
@WM8350_OUT1R_VOL_MASK = common dso_local global i32 0, align 4
@WM8350_OUT1R_VOL_SHIFT = common dso_local global i32 0, align 4
@WM8350_OUT1_VU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8350_data*)* @wm8350_out1_ramp_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_out1_ramp_step(%struct.wm8350_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm8350_data*, align 8
  %4 = alloca %struct.wm8350_output*, align 8
  %5 = alloca %struct.wm8350*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wm8350_data* %0, %struct.wm8350_data** %3, align 8
  %10 = load %struct.wm8350_data*, %struct.wm8350_data** %3, align 8
  %11 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %10, i32 0, i32 1
  store %struct.wm8350_output* %11, %struct.wm8350_output** %4, align 8
  %12 = load %struct.wm8350_data*, %struct.wm8350_data** %3, align 8
  %13 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %12, i32 0, i32 0
  %14 = load %struct.wm8350*, %struct.wm8350** %13, align 8
  store %struct.wm8350* %14, %struct.wm8350** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %16 = load i32, i32* @WM8350_LOUT1_VOLUME, align 4
  %17 = call i32 @wm8350_reg_read(%struct.wm8350* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @WM8350_OUT1L_VOL_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @WM8350_OUT1L_VOL_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.wm8350_output*, %struct.wm8350_output** %4, align 8
  %24 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WM8350_RAMP_UP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %1
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.wm8350_output*, %struct.wm8350_output** %4, align 8
  %31 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @WM8350_OUT1L_VOL_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %42 = load i32, i32* @WM8350_LOUT1_VOLUME, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @WM8350_OUT1L_VOL_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %43, %46
  %48 = call i32 @wm8350_reg_write(%struct.wm8350* %41, i32 %42, i32 %47)
  br label %50

49:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %34
  br label %79

51:                                               ; preds = %1
  %52 = load %struct.wm8350_output*, %struct.wm8350_output** %4, align 8
  %53 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @WM8350_RAMP_DOWN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @WM8350_OUT1L_VOL_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %68 = load i32, i32* @WM8350_LOUT1_VOLUME, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @WM8350_OUT1L_VOL_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %69, %72
  %74 = call i32 @wm8350_reg_write(%struct.wm8350* %67, i32 %68, i32 %73)
  br label %76

75:                                               ; preds = %57
  store i32 1, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %60
  br label %78

77:                                               ; preds = %51
  store i32 1, i32* %2, align 4
  br label %158

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78, %50
  %80 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %81 = load i32, i32* @WM8350_ROUT1_VOLUME, align 4
  %82 = call i32 @wm8350_reg_read(%struct.wm8350* %80, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @WM8350_OUT1R_VOL_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @WM8350_OUT1R_VOL_SHIFT, align 4
  %87 = ashr i32 %85, %86
  store i32 %87, i32* %9, align 4
  %88 = load %struct.wm8350_output*, %struct.wm8350_output** %4, align 8
  %89 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @WM8350_RAMP_UP, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %116

93:                                               ; preds = %79
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.wm8350_output*, %struct.wm8350_output** %4, align 8
  %96 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %93
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* @WM8350_OUT1R_VOL_MASK, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %107 = load i32, i32* @WM8350_ROUT1_VOLUME, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @WM8350_OUT1R_VOL_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = or i32 %108, %111
  %113 = call i32 @wm8350_reg_write(%struct.wm8350* %106, i32 %107, i32 %112)
  br label %115

114:                                              ; preds = %93
  store i32 1, i32* %7, align 4
  br label %115

115:                                              ; preds = %114, %99
  br label %143

116:                                              ; preds = %79
  %117 = load %struct.wm8350_output*, %struct.wm8350_output** %4, align 8
  %118 = getelementptr inbounds %struct.wm8350_output, %struct.wm8350_output* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @WM8350_RAMP_DOWN, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %116
  %123 = load i32, i32* %9, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* @WM8350_OUT1R_VOL_MASK, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %8, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %133 = load i32, i32* @WM8350_ROUT1_VOLUME, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @WM8350_OUT1R_VOL_SHIFT, align 4
  %137 = shl i32 %135, %136
  %138 = or i32 %134, %137
  %139 = call i32 @wm8350_reg_write(%struct.wm8350* %132, i32 %133, i32 %138)
  br label %141

140:                                              ; preds = %122
  store i32 1, i32* %7, align 4
  br label %141

141:                                              ; preds = %140, %125
  br label %142

142:                                              ; preds = %141, %116
  br label %143

143:                                              ; preds = %142, %115
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %146, %143
  %150 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %151 = load i32, i32* @WM8350_LOUT1_VOLUME, align 4
  %152 = load i32, i32* @WM8350_OUT1_VU, align 4
  %153 = call i32 @wm8350_set_bits(%struct.wm8350* %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %149, %146
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* %7, align 4
  %157 = and i32 %155, %156
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %154, %77
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
