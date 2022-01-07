; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_sai.c_fsl_sai_isr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_sai.c_fsl_sai_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sai = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { i32 }

@FSL_SAI_FLAGS = common dso_local global i32 0, align 4
@FSL_SAI_CSR_xIE_SHIFT = common dso_local global i32 0, align 4
@FSL_SAI_CSR_xF_SHIFT = common dso_local global i32 0, align 4
@FSL_SAI_CSR_WSF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"isr: Start of Tx word detected\0A\00", align 1
@FSL_SAI_CSR_SEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"isr: Tx Frame sync error detected\0A\00", align 1
@FSL_SAI_CSR_FEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"isr: Transmit underrun detected\0A\00", align 1
@FSL_SAI_CSR_FR = common dso_local global i32 0, align 4
@FSL_SAI_CSR_FWF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"isr: Enabled transmit FIFO is empty\0A\00", align 1
@FSL_SAI_CSR_FRF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"isr: Transmit FIFO watermark has been reached\0A\00", align 1
@FSL_SAI_CSR_xF_W_MASK = common dso_local global i32 0, align 4
@FSL_SAI_CSR_xF_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"isr: Start of Rx word detected\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"isr: Rx Frame sync error detected\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"isr: Receive overflow detected\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"isr: Enabled receive FIFO is full\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"isr: Receive FIFO watermark has been reached\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsl_sai_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sai_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fsl_sai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.fsl_sai*
  store %struct.fsl_sai* %14, %struct.fsl_sai** %6, align 8
  %15 = load %struct.fsl_sai*, %struct.fsl_sai** %6, align 8
  %16 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.fsl_sai*, %struct.fsl_sai** %6, align 8
  %21 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %8, align 8
  store i32 1, i32* %12, align 4
  %24 = load i32, i32* @FSL_SAI_FLAGS, align 4
  %25 = load i32, i32* @FSL_SAI_CSR_xIE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = load i32, i32* @FSL_SAI_CSR_xF_SHIFT, align 4
  %28 = shl i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load %struct.fsl_sai*, %struct.fsl_sai** %6, align 8
  %30 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @FSL_SAI_TCSR(i32 %32)
  %34 = call i32 @regmap_read(i32 %31, i32 %33, i32* %10)
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  br label %42

41:                                               ; preds = %2
  br label %106

42:                                               ; preds = %40
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @FSL_SAI_CSR_WSF, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.device*, %struct.device** %8, align 8
  %49 = call i32 @dev_dbg(%struct.device* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @FSL_SAI_CSR_SEF, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.device*, %struct.device** %8, align 8
  %57 = call i32 @dev_dbg(%struct.device* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @FSL_SAI_CSR_FEF, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.device*, %struct.device** %8, align 8
  %65 = call i32 @dev_dbg(%struct.device* %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @FSL_SAI_CSR_FR, align 4
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %63, %58
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @FSL_SAI_CSR_FWF, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.device*, %struct.device** %8, align 8
  %76 = call i32 @dev_dbg(%struct.device* %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @FSL_SAI_CSR_FRF, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.device*, %struct.device** %8, align 8
  %84 = call i32 @dev_dbg(%struct.device* %83, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i32, i32* @FSL_SAI_CSR_xF_W_MASK, align 4
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* @FSL_SAI_CSR_xF_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %10, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %85
  %96 = load %struct.fsl_sai*, %struct.fsl_sai** %6, align 8
  %97 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @FSL_SAI_TCSR(i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @regmap_write(i32 %98, i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %95, %85
  br label %106

106:                                              ; preds = %105, %41
  %107 = load %struct.fsl_sai*, %struct.fsl_sai** %6, align 8
  %108 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @FSL_SAI_RCSR(i32 %110)
  %112 = call i32 @regmap_read(i32 %109, i32 %111, i32* %10)
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %11, align 4
  %115 = and i32 %113, %114
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  store i32 0, i32* %12, align 4
  br label %120

119:                                              ; preds = %106
  br label %184

120:                                              ; preds = %118
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @FSL_SAI_CSR_WSF, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.device*, %struct.device** %8, align 8
  %127 = call i32 @dev_dbg(%struct.device* %126, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %120
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @FSL_SAI_CSR_SEF, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.device*, %struct.device** %8, align 8
  %135 = call i32 @dev_dbg(%struct.device* %134, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %128
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @FSL_SAI_CSR_FEF, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.device*, %struct.device** %8, align 8
  %143 = call i32 @dev_dbg(%struct.device* %142, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %144 = load i32, i32* @FSL_SAI_CSR_FR, align 4
  %145 = load i32, i32* %10, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %141, %136
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @FSL_SAI_CSR_FWF, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.device*, %struct.device** %8, align 8
  %154 = call i32 @dev_dbg(%struct.device* %153, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %147
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @FSL_SAI_CSR_FRF, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.device*, %struct.device** %8, align 8
  %162 = call i32 @dev_dbg(%struct.device* %161, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %155
  %164 = load i32, i32* @FSL_SAI_CSR_xF_W_MASK, align 4
  %165 = load i32, i32* %9, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* @FSL_SAI_CSR_xF_MASK, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %10, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %163
  %174 = load %struct.fsl_sai*, %struct.fsl_sai** %6, align 8
  %175 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @FSL_SAI_RCSR(i32 %177)
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %10, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @regmap_write(i32 %176, i32 %178, i32 %181)
  br label %183

183:                                              ; preds = %173, %163
  br label %184

184:                                              ; preds = %183, %119
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = load i32, i32* @IRQ_NONE, align 4
  store i32 %188, i32* %3, align 4
  br label %191

189:                                              ; preds = %184
  %190 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %189, %187
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @FSL_SAI_TCSR(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @FSL_SAI_RCSR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
