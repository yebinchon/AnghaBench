; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c__fsl_ssi_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c__fsl_ssi_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_ssi = type { i32, i32, i32, i64, i32, i32 }

@SSI_SCR_SYNC_TX_FS = common dso_local global i32 0, align 4
@SSI_STCR_TXBIT0 = common dso_local global i32 0, align 4
@SSI_SCR_NET = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"missing baudclk for master mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SSI_SCR_I2S_MODE_MASTER = common dso_local global i32 0, align 4
@SSI_SCR_I2S_MODE_SLAVE = common dso_local global i32 0, align 4
@REG_SSI_STCCR = common dso_local global i32 0, align 4
@SSI_SxCCR_DC_MASK = common dso_local global i32 0, align 4
@REG_SSI_SRCCR = common dso_local global i32 0, align 4
@SSI_STCR_TFSI = common dso_local global i32 0, align 4
@SSI_STCR_TSCKP = common dso_local global i32 0, align 4
@SSI_STCR_TEFS = common dso_local global i32 0, align 4
@SSI_STCR_TFSL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SSI_STCR_TFDIR = common dso_local global i32 0, align 4
@SSI_STCR_TXDIR = common dso_local global i32 0, align 4
@SSI_SCR_SYS_CLK_EN = common dso_local global i32 0, align 4
@SSI_SRCR_RXDIR = common dso_local global i32 0, align 4
@SSI_SCR_SYN = common dso_local global i32 0, align 4
@REG_SSI_STCR = common dso_local global i32 0, align 4
@REG_SSI_SRCR = common dso_local global i32 0, align 4
@SSI_SCR_I2S_MODE_MASK = common dso_local global i32 0, align 4
@REG_SSI_SCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_ssi*, i32)* @_fsl_ssi_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fsl_ssi_set_dai_fmt(%struct.fsl_ssi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_ssi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fsl_ssi* %0, %struct.fsl_ssi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.fsl_ssi*, %struct.fsl_ssi** %4, align 8
  %13 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @SSI_SCR_SYNC_TX_FS, align 4
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @SSI_STCR_TXBIT0, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @SSI_SCR_NET, align 4
  %21 = load %struct.fsl_ssi*, %struct.fsl_ssi** %4, align 8
  %22 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %103 [
    i32 133, label %26
    i32 130, label %81
    i32 135, label %85
    i32 134, label %93
    i32 139, label %99
  ]

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %56 [
    i32 136, label %30
    i32 137, label %44
    i32 138, label %50
  ]

30:                                               ; preds = %26
  %31 = load %struct.fsl_ssi*, %struct.fsl_ssi** %4, align 8
  %32 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IS_ERR(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.fsl_ssi*, %struct.fsl_ssi** %4, align 8
  %38 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %216

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %26, %43
  %45 = load i32, i32* @SSI_SCR_I2S_MODE_MASTER, align 4
  %46 = load %struct.fsl_ssi*, %struct.fsl_ssi** %4, align 8
  %47 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %59

50:                                               ; preds = %26
  %51 = load i32, i32* @SSI_SCR_I2S_MODE_SLAVE, align 4
  %52 = load %struct.fsl_ssi*, %struct.fsl_ssi** %4, align 8
  %53 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %59

56:                                               ; preds = %26
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %216

59:                                               ; preds = %50, %44
  %60 = load %struct.fsl_ssi*, %struct.fsl_ssi** %4, align 8
  %61 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @REG_SSI_STCCR, align 4
  %64 = load i32, i32* @SSI_SxCCR_DC_MASK, align 4
  %65 = call i32 @SSI_SxCCR_DC(i32 2)
  %66 = call i32 @regmap_update_bits(i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.fsl_ssi*, %struct.fsl_ssi** %4, align 8
  %68 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @REG_SSI_SRCCR, align 4
  %71 = load i32, i32* @SSI_SxCCR_DC_MASK, align 4
  %72 = call i32 @SSI_SxCCR_DC(i32 2)
  %73 = call i32 @regmap_update_bits(i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* @SSI_STCR_TFSI, align 4
  %75 = load i32, i32* @SSI_STCR_TSCKP, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @SSI_STCR_TEFS, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %106

81:                                               ; preds = %2
  %82 = load i32, i32* @SSI_STCR_TSCKP, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %106

85:                                               ; preds = %2
  %86 = load i32, i32* @SSI_STCR_TFSL, align 4
  %87 = load i32, i32* @SSI_STCR_TSCKP, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @SSI_STCR_TEFS, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %106

93:                                               ; preds = %2
  %94 = load i32, i32* @SSI_STCR_TFSL, align 4
  %95 = load i32, i32* @SSI_STCR_TSCKP, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %106

99:                                               ; preds = %2
  %100 = load i32, i32* @SSI_STCR_TEFS, align 4
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  br label %106

103:                                              ; preds = %2
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %216

106:                                              ; preds = %99, %93, %85, %81, %59
  %107 = load %struct.fsl_ssi*, %struct.fsl_ssi** %4, align 8
  %108 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %114 = and i32 %112, %113
  switch i32 %114, label %131 [
    i32 128, label %115
    i32 131, label %116
    i32 129, label %120
    i32 132, label %124
  ]

115:                                              ; preds = %106
  br label %134

116:                                              ; preds = %106
  %117 = load i32, i32* @SSI_STCR_TSCKP, align 4
  %118 = load i32, i32* %6, align 4
  %119 = xor i32 %118, %117
  store i32 %119, i32* %6, align 4
  br label %134

120:                                              ; preds = %106
  %121 = load i32, i32* @SSI_STCR_TFSI, align 4
  %122 = load i32, i32* %6, align 4
  %123 = xor i32 %122, %121
  store i32 %123, i32* %6, align 4
  br label %134

124:                                              ; preds = %106
  %125 = load i32, i32* @SSI_STCR_TSCKP, align 4
  %126 = load i32, i32* %6, align 4
  %127 = xor i32 %126, %125
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* @SSI_STCR_TFSI, align 4
  %129 = load i32, i32* %6, align 4
  %130 = xor i32 %129, %128
  store i32 %130, i32* %6, align 4
  br label %134

131:                                              ; preds = %106
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %216

134:                                              ; preds = %124, %120, %116, %115
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %137 = and i32 %135, %136
  switch i32 %137, label %152 [
    i32 136, label %138
    i32 138, label %147
    i32 137, label %148
  ]

138:                                              ; preds = %134
  %139 = load i32, i32* @SSI_STCR_TFDIR, align 4
  %140 = load i32, i32* @SSI_STCR_TXDIR, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* %6, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* @SSI_SCR_SYS_CLK_EN, align 4
  %145 = load i32, i32* %7, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %7, align 4
  br label %155

147:                                              ; preds = %134
  br label %155

148:                                              ; preds = %134
  %149 = load i32, i32* @SSI_STCR_TFDIR, align 4
  %150 = load i32, i32* %6, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %6, align 4
  br label %155

152:                                              ; preds = %134
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %216

155:                                              ; preds = %148, %147, %138
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %9, align 4
  %158 = load %struct.fsl_ssi*, %struct.fsl_ssi** %4, align 8
  %159 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %155
  %163 = load %struct.fsl_ssi*, %struct.fsl_ssi** %4, align 8
  %164 = call i64 @fsl_ssi_is_ac97(%struct.fsl_ssi* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %162, %155
  %167 = load i32, i32* @SSI_SRCR_RXDIR, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %9, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* @SSI_SCR_SYN, align 4
  %172 = load i32, i32* %7, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %7, align 4
  br label %174

174:                                              ; preds = %166, %162
  %175 = load i32, i32* @SSI_STCR_TFDIR, align 4
  %176 = load i32, i32* @SSI_STCR_TXDIR, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @SSI_STCR_TSCKP, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @SSI_STCR_TFSL, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @SSI_STCR_TFSI, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @SSI_STCR_TEFS, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @SSI_STCR_TXBIT0, align 4
  %187 = or i32 %185, %186
  store i32 %187, i32* %10, align 4
  %188 = load %struct.fsl_ssi*, %struct.fsl_ssi** %4, align 8
  %189 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @REG_SSI_STCR, align 4
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @regmap_update_bits(i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load %struct.fsl_ssi*, %struct.fsl_ssi** %4, align 8
  %196 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @REG_SSI_SRCR, align 4
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @regmap_update_bits(i32 %197, i32 %198, i32 %199, i32 %200)
  %202 = load i32, i32* @SSI_SCR_SYNC_TX_FS, align 4
  %203 = load i32, i32* @SSI_SCR_I2S_MODE_MASK, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @SSI_SCR_SYS_CLK_EN, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @SSI_SCR_SYN, align 4
  %208 = or i32 %206, %207
  store i32 %208, i32* %10, align 4
  %209 = load %struct.fsl_ssi*, %struct.fsl_ssi** %4, align 8
  %210 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @REG_SSI_SCR, align 4
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @regmap_update_bits(i32 %211, i32 %212, i32 %213, i32 %214)
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %174, %152, %131, %103, %56, %36
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SSI_SxCCR_DC(i32) #1

declare dso_local i64 @fsl_ssi_is_ac97(%struct.fsl_ssi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
