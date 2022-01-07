; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-cpu.c_lpass_cpu_regmap_readable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-cpu.c_lpass_cpu_regmap_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lpass_data = type { %struct.lpass_variant* }
%struct.lpass_variant = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @lpass_cpu_regmap_readable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpass_cpu_regmap_readable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpass_data*, align 8
  %7 = alloca %struct.lpass_variant*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.lpass_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.lpass_data* %10, %struct.lpass_data** %6, align 8
  %11 = load %struct.lpass_data*, %struct.lpass_data** %6, align 8
  %12 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %11, i32 0, i32 0
  %13 = load %struct.lpass_variant*, %struct.lpass_variant** %12, align 8
  store %struct.lpass_variant* %13, %struct.lpass_variant** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %28, %2
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %17 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @LPAIF_I2SCTL_REG(%struct.lpass_variant* %22, i32 %23)
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %174

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %14

31:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %53, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %35 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @LPAIF_IRQEN_REG(%struct.lpass_variant* %40, i32 %41)
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %174

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @LPAIF_IRQSTAT_REG(%struct.lpass_variant* %47, i32 %48)
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %174

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %32

56:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %99, %56
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %60 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %102

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @LPAIF_RDMACTL_REG(%struct.lpass_variant* %65, i32 %66)
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %174

70:                                               ; preds = %63
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @LPAIF_RDMABASE_REG(%struct.lpass_variant* %72, i32 %73)
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %174

77:                                               ; preds = %70
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @LPAIF_RDMABUFF_REG(%struct.lpass_variant* %79, i32 %80)
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 1, i32* %3, align 4
  br label %174

84:                                               ; preds = %77
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @LPAIF_RDMACURR_REG(%struct.lpass_variant* %86, i32 %87)
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 1, i32* %3, align 4
  br label %174

91:                                               ; preds = %84
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @LPAIF_RDMAPER_REG(%struct.lpass_variant* %93, i32 %94)
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 1, i32* %3, align 4
  br label %174

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %57

102:                                              ; preds = %57
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %170, %102
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %106 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %173

109:                                              ; preds = %103
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %115 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = call i32 @LPAIF_WRDMACTL_REG(%struct.lpass_variant* %111, i64 %117)
  %119 = icmp eq i32 %110, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  store i32 1, i32* %3, align 4
  br label %174

121:                                              ; preds = %109
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %127 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %125, %128
  %130 = call i32 @LPAIF_WRDMABASE_REG(%struct.lpass_variant* %123, i64 %129)
  %131 = icmp eq i32 %122, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %121
  store i32 1, i32* %3, align 4
  br label %174

133:                                              ; preds = %121
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %139 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %137, %140
  %142 = call i32 @LPAIF_WRDMABUFF_REG(%struct.lpass_variant* %135, i64 %141)
  %143 = icmp eq i32 %134, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  store i32 1, i32* %3, align 4
  br label %174

145:                                              ; preds = %133
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %151 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %149, %152
  %154 = call i32 @LPAIF_WRDMACURR_REG(%struct.lpass_variant* %147, i64 %153)
  %155 = icmp eq i32 %146, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %145
  store i32 1, i32* %3, align 4
  br label %174

157:                                              ; preds = %145
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %163 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %161, %164
  %166 = call i32 @LPAIF_WRDMAPER_REG(%struct.lpass_variant* %159, i64 %165)
  %167 = icmp eq i32 %158, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  store i32 1, i32* %3, align 4
  br label %174

169:                                              ; preds = %157
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %103

173:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %168, %156, %144, %132, %120, %97, %90, %83, %76, %69, %51, %44, %26
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local %struct.lpass_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @LPAIF_I2SCTL_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_IRQEN_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_IRQSTAT_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_RDMACTL_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_RDMABASE_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_RDMABUFF_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_RDMACURR_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_RDMAPER_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_WRDMACTL_REG(%struct.lpass_variant*, i64) #1

declare dso_local i32 @LPAIF_WRDMABASE_REG(%struct.lpass_variant*, i64) #1

declare dso_local i32 @LPAIF_WRDMABUFF_REG(%struct.lpass_variant*, i64) #1

declare dso_local i32 @LPAIF_WRDMACURR_REG(%struct.lpass_variant*, i64) #1

declare dso_local i32 @LPAIF_WRDMAPER_REG(%struct.lpass_variant*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
