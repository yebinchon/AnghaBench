; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_configure_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_configure_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_priv = type { i32, i32, %struct.ssp_device* }
%struct.ssp_device = type { i32 }

@SSCR0 = common dso_local global i32 0, align 4
@SSCR0_PSP = common dso_local global i32 0, align 4
@SSCR0_MOD = common dso_local global i32 0, align 4
@SSCR1 = common dso_local global i32 0, align 4
@SSCR1_SCLKDIR = common dso_local global i32 0, align 4
@SSCR1_SFRMDIR = common dso_local global i32 0, align 4
@SSCR1_SCFR = common dso_local global i32 0, align 4
@SSCR1_RWOT = common dso_local global i32 0, align 4
@SSCR1_TRAIL = common dso_local global i32 0, align 4
@SSCR1_TFT = common dso_local global i32 0, align 4
@SSCR1_RFT = common dso_local global i32 0, align 4
@SSPSP = common dso_local global i32 0, align 4
@SSPSP_SFRMP = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SSPSP_FSRT = common dso_local global i32 0, align 4
@SSSR = common dso_local global i32 0, align 4
@SSSR_BSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssp_priv*)* @pxa_ssp_configure_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_ssp_configure_dai_fmt(%struct.ssp_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssp_priv*, align 8
  %4 = alloca %struct.ssp_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ssp_priv* %0, %struct.ssp_priv** %3, align 8
  %9 = load %struct.ssp_priv*, %struct.ssp_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %9, i32 0, i32 2
  %11 = load %struct.ssp_device*, %struct.ssp_device** %10, align 8
  store %struct.ssp_device* %11, %struct.ssp_device** %4, align 8
  %12 = load %struct.ssp_priv*, %struct.ssp_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ssp_priv*, %struct.ssp_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %186

20:                                               ; preds = %1
  %21 = load %struct.ssp_device*, %struct.ssp_device** %4, align 8
  %22 = load i32, i32* @SSCR0, align 4
  %23 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %21, i32 %22)
  %24 = load i32, i32* @SSCR0_PSP, align 4
  %25 = load i32, i32* @SSCR0_MOD, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %23, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ssp_device*, %struct.ssp_device** %4, align 8
  %30 = load i32, i32* @SSCR1, align 4
  %31 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %29, i32 %30)
  %32 = load i32, i32* @SSCR1_SCLKDIR, align 4
  %33 = load i32, i32* @SSCR1_SFRMDIR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SSCR1_SCFR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SSCR1_RWOT, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SSCR1_TRAIL, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SSCR1_TFT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @SSCR1_RFT, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = and i32 %31, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.ssp_device*, %struct.ssp_device** %4, align 8
  %48 = load i32, i32* @SSPSP, align 4
  %49 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %47, i32 %48)
  %50 = load i32, i32* @SSPSP_SFRMP, align 4
  %51 = call i32 @SSPSP_SCMODE(i32 3)
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %49, %53
  store i32 %54, i32* %7, align 4
  %55 = call i32 @SSCR1_RxTresh(i32 8)
  %56 = call i32 @SSCR1_TxTresh(i32 7)
  %57 = or i32 %55, %56
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load %struct.ssp_priv*, %struct.ssp_priv** %3, align 8
  %61 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %64 = and i32 %62, %63
  switch i32 %64, label %80 [
    i32 137, label %65
    i32 136, label %73
    i32 135, label %79
  ]

65:                                               ; preds = %20
  %66 = load i32, i32* @SSCR1_SCLKDIR, align 4
  %67 = load i32, i32* @SSCR1_SFRMDIR, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @SSCR1_SCFR, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %83

73:                                               ; preds = %20
  %74 = load i32, i32* @SSCR1_SCLKDIR, align 4
  %75 = load i32, i32* @SSCR1_SCFR, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %83

79:                                               ; preds = %20
  br label %83

80:                                               ; preds = %20
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %186

83:                                               ; preds = %79, %73, %65
  %84 = load %struct.ssp_priv*, %struct.ssp_priv** %3, align 8
  %85 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %88 = and i32 %86, %87
  switch i32 %88, label %104 [
    i32 128, label %89
    i32 129, label %93
    i32 131, label %94
    i32 130, label %98
  ]

89:                                               ; preds = %83
  %90 = load i32, i32* @SSPSP_SFRMP, align 4
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  br label %107

93:                                               ; preds = %83
  br label %107

94:                                               ; preds = %83
  %95 = call i32 @SSPSP_SCMODE(i32 2)
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %7, align 4
  br label %107

98:                                               ; preds = %83
  %99 = call i32 @SSPSP_SCMODE(i32 2)
  %100 = load i32, i32* @SSPSP_SFRMP, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %107

104:                                              ; preds = %83
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %186

107:                                              ; preds = %98, %94, %93, %89
  %108 = load %struct.ssp_priv*, %struct.ssp_priv** %3, align 8
  %109 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %112 = and i32 %110, %111
  switch i32 %112, label %137 [
    i32 132, label %113
    i32 134, label %122
    i32 133, label %126
  ]

113:                                              ; preds = %107
  %114 = load i32, i32* @SSCR0_PSP, align 4
  %115 = load i32, i32* %5, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* @SSCR1_RWOT, align 4
  %118 = load i32, i32* @SSCR1_TRAIL, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* %6, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %6, align 4
  br label %140

122:                                              ; preds = %107
  %123 = load i32, i32* @SSPSP_FSRT, align 4
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %107, %122
  %127 = load i32, i32* @SSCR0_MOD, align 4
  %128 = load i32, i32* @SSCR0_PSP, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %5, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* @SSCR1_TRAIL, align 4
  %133 = load i32, i32* @SSCR1_RWOT, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %6, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %6, align 4
  br label %140

137:                                              ; preds = %107
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %186

140:                                              ; preds = %126, %113
  %141 = load %struct.ssp_device*, %struct.ssp_device** %4, align 8
  %142 = load i32, i32* @SSCR0, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %141, i32 %142, i32 %143)
  %145 = load %struct.ssp_device*, %struct.ssp_device** %4, align 8
  %146 = load i32, i32* @SSCR1, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %145, i32 %146, i32 %147)
  %149 = load %struct.ssp_device*, %struct.ssp_device** %4, align 8
  %150 = load i32, i32* @SSPSP, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %149, i32 %150, i32 %151)
  %153 = load %struct.ssp_priv*, %struct.ssp_priv** %3, align 8
  %154 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %157 = and i32 %155, %156
  switch i32 %157, label %178 [
    i32 137, label %158
    i32 136, label %158
  ]

158:                                              ; preds = %140, %140
  %159 = load %struct.ssp_device*, %struct.ssp_device** %4, align 8
  %160 = load i32, i32* @SSCR1, align 4
  %161 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %159, i32 %160)
  %162 = load i32, i32* @SSCR1_SCFR, align 4
  %163 = or i32 %161, %162
  store i32 %163, i32* %8, align 4
  %164 = load %struct.ssp_device*, %struct.ssp_device** %4, align 8
  %165 = load i32, i32* @SSCR1, align 4
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %175, %158
  %169 = load %struct.ssp_device*, %struct.ssp_device** %4, align 8
  %170 = load i32, i32* @SSSR, align 4
  %171 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %169, i32 %170)
  %172 = load i32, i32* @SSSR_BSY, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = call i32 (...) @cpu_relax()
  br label %168

177:                                              ; preds = %168
  br label %178

178:                                              ; preds = %140, %177
  %179 = load %struct.ssp_device*, %struct.ssp_device** %4, align 8
  %180 = call i32 @dump_registers(%struct.ssp_device* %179)
  %181 = load %struct.ssp_priv*, %struct.ssp_priv** %3, align 8
  %182 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.ssp_priv*, %struct.ssp_priv** %3, align 8
  %185 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %178, %137, %104, %80, %19
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @pxa_ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @SSPSP_SCMODE(i32) #1

declare dso_local i32 @SSCR1_RxTresh(i32) #1

declare dso_local i32 @SSCR1_TxTresh(i32) #1

declare dso_local i32 @pxa_ssp_write_reg(%struct.ssp_device*, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dump_registers(%struct.ssp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
