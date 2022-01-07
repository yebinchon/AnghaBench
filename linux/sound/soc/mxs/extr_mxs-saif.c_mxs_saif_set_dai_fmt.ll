; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.mxs_saif = type { i64, i64, i64 }

@SAIF_STAT = common dso_local global i64 0, align 8
@BM_SAIF_STAT_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"error: busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BM_SAIF_CTRL_SFTRST = common dso_local global i32 0, align 4
@SAIF_CTRL = common dso_local global i64 0, align 8
@MXS_CLR_ADDR = common dso_local global i64 0, align 8
@BM_SAIF_CTRL_CLKGATE = common dso_local global i32 0, align 4
@BM_SAIF_CTRL_BITCLK_EDGE = common dso_local global i32 0, align 4
@BM_SAIF_CTRL_LRCLK_POLARITY = common dso_local global i32 0, align 4
@BM_SAIF_CTRL_JUSTIFY = common dso_local global i32 0, align 4
@BM_SAIF_CTRL_DELAY = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@BM_SAIF_CTRL_SLAVE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @mxs_saif_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_saif_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mxs_saif*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = call %struct.mxs_saif* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.mxs_saif* %11, %struct.mxs_saif** %9, align 8
  %12 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %13 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SAIF_STAT, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @__raw_readl(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @BM_SAIF_STAT_BUSY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %174

29:                                               ; preds = %2
  %30 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %31 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %34 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %29
  %38 = load i32, i32* @BM_SAIF_CTRL_SFTRST, align 4
  %39 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %40 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SAIF_CTRL, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i64, i64* @MXS_CLR_ADDR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @__raw_writel(i32 %38, i64 %45)
  %47 = load i32, i32* @BM_SAIF_CTRL_CLKGATE, align 4
  %48 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %49 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SAIF_CTRL, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i64, i64* @MXS_CLR_ADDR, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @__raw_writel(i32 %47, i64 %54)
  br label %56

56:                                               ; preds = %37, %29
  %57 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %58 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SAIF_CTRL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @__raw_readl(i64 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @BM_SAIF_CTRL_BITCLK_EDGE, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = load i32, i32* @BM_SAIF_CTRL_LRCLK_POLARITY, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = load i32, i32* @BM_SAIF_CTRL_JUSTIFY, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = load i32, i32* @BM_SAIF_CTRL_DELAY, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  store i32 %75, i32* %8, align 4
  store i32 0, i32* %6, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %78 = and i32 %76, %77
  switch i32 %78, label %100 [
    i32 133, label %79
    i32 130, label %87
  ]

79:                                               ; preds = %56
  %80 = load i32, i32* @BM_SAIF_CTRL_DELAY, align 4
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* @BM_SAIF_CTRL_LRCLK_POLARITY, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %103

87:                                               ; preds = %56
  %88 = load i32, i32* @BM_SAIF_CTRL_DELAY, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* @BM_SAIF_CTRL_LRCLK_POLARITY, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* @BM_SAIF_CTRL_JUSTIFY, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %6, align 4
  br label %103

100:                                              ; preds = %56
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %174

103:                                              ; preds = %87, %79
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %106 = and i32 %104, %105
  switch i32 %106, label %139 [
    i32 132, label %107
    i32 131, label %114
    i32 129, label %122
    i32 128, label %130
  ]

107:                                              ; preds = %103
  %108 = load i32, i32* @BM_SAIF_CTRL_BITCLK_EDGE, align 4
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* @BM_SAIF_CTRL_LRCLK_POLARITY, align 4
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %6, align 4
  br label %139

114:                                              ; preds = %103
  %115 = load i32, i32* @BM_SAIF_CTRL_BITCLK_EDGE, align 4
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* @BM_SAIF_CTRL_LRCLK_POLARITY, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %6, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %6, align 4
  br label %139

122:                                              ; preds = %103
  %123 = load i32, i32* @BM_SAIF_CTRL_BITCLK_EDGE, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %6, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* @BM_SAIF_CTRL_LRCLK_POLARITY, align 4
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  br label %139

130:                                              ; preds = %103
  %131 = load i32, i32* @BM_SAIF_CTRL_BITCLK_EDGE, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %6, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* @BM_SAIF_CTRL_LRCLK_POLARITY, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %103, %130, %122, %114, %107
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %142 = and i32 %140, %141
  switch i32 %142, label %170 [
    i32 134, label %143
  ]

143:                                              ; preds = %139
  %144 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %145 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %148 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %146, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %143
  %152 = load i32, i32* @BM_SAIF_CTRL_SLAVE_MODE, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %6, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %6, align 4
  br label %160

156:                                              ; preds = %143
  %157 = load i32, i32* @BM_SAIF_CTRL_SLAVE_MODE, align 4
  %158 = load i32, i32* %6, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %156, %151
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %8, align 4
  %163 = or i32 %161, %162
  %164 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %165 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @SAIF_CTRL, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @__raw_writel(i32 %163, i64 %168)
  br label %173

170:                                              ; preds = %139
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %174

173:                                              ; preds = %160
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %170, %100, %22
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local %struct.mxs_saif* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
