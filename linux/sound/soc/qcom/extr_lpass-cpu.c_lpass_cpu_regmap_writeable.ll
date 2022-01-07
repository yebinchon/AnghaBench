; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-cpu.c_lpass_cpu_regmap_writeable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-cpu.c_lpass_cpu_regmap_writeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lpass_data = type { %struct.lpass_variant* }
%struct.lpass_variant = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @lpass_cpu_regmap_writeable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpass_cpu_regmap_writeable(%struct.device* %0, i32 %1) #0 {
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
  br label %155

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
  br label %155

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @LPAIF_IRQCLEAR_REG(%struct.lpass_variant* %47, i32 %48)
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %155

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

57:                                               ; preds = %92, %56
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %60 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @LPAIF_RDMACTL_REG(%struct.lpass_variant* %65, i32 %66)
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %155

70:                                               ; preds = %63
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @LPAIF_RDMABASE_REG(%struct.lpass_variant* %72, i32 %73)
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %155

77:                                               ; preds = %70
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @LPAIF_RDMABUFF_REG(%struct.lpass_variant* %79, i32 %80)
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 1, i32* %3, align 4
  br label %155

84:                                               ; preds = %77
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @LPAIF_RDMAPER_REG(%struct.lpass_variant* %86, i32 %87)
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 1, i32* %3, align 4
  br label %155

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %57

95:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %151, %95
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %99 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %154

102:                                              ; preds = %96
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %108 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = call i32 @LPAIF_WRDMACTL_REG(%struct.lpass_variant* %104, i64 %110)
  %112 = icmp eq i32 %103, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  store i32 1, i32* %3, align 4
  br label %155

114:                                              ; preds = %102
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %120 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %118, %121
  %123 = call i32 @LPAIF_WRDMABASE_REG(%struct.lpass_variant* %116, i64 %122)
  %124 = icmp eq i32 %115, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  store i32 1, i32* %3, align 4
  br label %155

126:                                              ; preds = %114
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %132 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %130, %133
  %135 = call i32 @LPAIF_WRDMABUFF_REG(%struct.lpass_variant* %128, i64 %134)
  %136 = icmp eq i32 %127, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %126
  store i32 1, i32* %3, align 4
  br label %155

138:                                              ; preds = %126
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %144 = getelementptr inbounds %struct.lpass_variant, %struct.lpass_variant* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %142, %145
  %147 = call i32 @LPAIF_WRDMAPER_REG(%struct.lpass_variant* %140, i64 %146)
  %148 = icmp eq i32 %139, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %138
  store i32 1, i32* %3, align 4
  br label %155

150:                                              ; preds = %138
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %96

154:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %154, %149, %137, %125, %113, %90, %83, %76, %69, %51, %44, %26
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.lpass_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @LPAIF_I2SCTL_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_IRQEN_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_IRQCLEAR_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_RDMACTL_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_RDMABASE_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_RDMABUFF_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_RDMAPER_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_WRDMACTL_REG(%struct.lpass_variant*, i64) #1

declare dso_local i32 @LPAIF_WRDMABASE_REG(%struct.lpass_variant*, i64) #1

declare dso_local i32 @LPAIF_WRDMABUFF_REG(%struct.lpass_variant*, i64) #1

declare dso_local i32 @LPAIF_WRDMAPER_REG(%struct.lpass_variant*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
