; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.davinci_mcasp = type { i32, i32, i32, i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@DAVINCI_MCASP_TXFMCTL_REG = common dso_local global i32 0, align 4
@FSXDUR = common dso_local global i32 0, align 4
@DAVINCI_MCASP_RXFMCTL_REG = common dso_local global i32 0, align 4
@FSRDUR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DAVINCI_MCASP_TXFMT_REG = common dso_local global i32 0, align 4
@DAVINCI_MCASP_RXFMT_REG = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@DAVINCI_MCASP_ACLKXCTL_REG = common dso_local global i32 0, align 4
@ACLKXE = common dso_local global i32 0, align 4
@AFSXE = common dso_local global i32 0, align 4
@DAVINCI_MCASP_ACLKRCTL_REG = common dso_local global i32 0, align 4
@ACLKRE = common dso_local global i32 0, align 4
@AFSRE = common dso_local global i32 0, align 4
@PIN_BIT_ACLKX = common dso_local global i32 0, align 4
@PIN_BIT_ACLKR = common dso_local global i32 0, align 4
@PIN_BIT_AFSX = common dso_local global i32 0, align 4
@PIN_BIT_AFSR = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@ACLKXPOL = common dso_local global i32 0, align 4
@ACLKRPOL = common dso_local global i32 0, align 4
@FSXPOL = common dso_local global i32 0, align 4
@FSRPOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @davinci_mcasp_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_mcasp_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.davinci_mcasp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = call %struct.davinci_mcasp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.davinci_mcasp* %12, %struct.davinci_mcasp** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %304

16:                                               ; preds = %2
  %17 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %18 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pm_runtime_get_sync(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %60 [
    i32 136, label %24
    i32 135, label %33
    i32 141, label %33
    i32 134, label %42
    i32 128, label %51
    i32 131, label %51
  ]

24:                                               ; preds = %16
  %25 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %26 = load i32, i32* @DAVINCI_MCASP_TXFMCTL_REG, align 4
  %27 = load i32, i32* @FSXDUR, align 4
  %28 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %25, i32 %26, i32 %27)
  %29 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %30 = load i32, i32* @DAVINCI_MCASP_RXFMCTL_REG, align 4
  %31 = load i32, i32* @FSRDUR, align 4
  %32 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %29, i32 %30, i32 %31)
  store i32 1, i32* %8, align 4
  br label %63

33:                                               ; preds = %16, %16
  %34 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %35 = load i32, i32* @DAVINCI_MCASP_TXFMCTL_REG, align 4
  %36 = load i32, i32* @FSXDUR, align 4
  %37 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %34, i32 %35, i32 %36)
  %38 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %39 = load i32, i32* @DAVINCI_MCASP_RXFMCTL_REG, align 4
  %40 = load i32, i32* @FSRDUR, align 4
  %41 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %38, i32 %39, i32 %40)
  store i32 0, i32* %8, align 4
  br label %63

42:                                               ; preds = %16
  %43 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %44 = load i32, i32* @DAVINCI_MCASP_TXFMCTL_REG, align 4
  %45 = load i32, i32* @FSXDUR, align 4
  %46 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %43, i32 %44, i32 %45)
  %47 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %48 = load i32, i32* @DAVINCI_MCASP_RXFMCTL_REG, align 4
  %49 = load i32, i32* @FSRDUR, align 4
  %50 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %47, i32 %48, i32 %49)
  store i32 1, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %63

51:                                               ; preds = %16, %16
  %52 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %53 = load i32, i32* @DAVINCI_MCASP_TXFMCTL_REG, align 4
  %54 = load i32, i32* @FSXDUR, align 4
  %55 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %52, i32 %53, i32 %54)
  %56 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %57 = load i32, i32* @DAVINCI_MCASP_RXFMCTL_REG, align 4
  %58 = load i32, i32* @FSRDUR, align 4
  %59 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %56, i32 %57, i32 %58)
  store i32 0, i32* %8, align 4
  br label %63

60:                                               ; preds = %16
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %298

63:                                               ; preds = %51, %42, %33, %24
  %64 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %65 = load i32, i32* @DAVINCI_MCASP_TXFMT_REG, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @FSXDLY(i32 %66)
  %68 = call i32 @FSXDLY(i32 3)
  %69 = call i32 @mcasp_mod_bits(%struct.davinci_mcasp* %64, i32 %65, i32 %67, i32 %68)
  %70 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %71 = load i32, i32* @DAVINCI_MCASP_RXFMT_REG, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @FSRDLY(i32 %72)
  %74 = call i32 @FSRDLY(i32 3)
  %75 = call i32 @mcasp_mod_bits(%struct.davinci_mcasp* %70, i32 %71, i32 %73, i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %78 = and i32 %76, %77
  switch i32 %78, label %219 [
    i32 137, label %79
    i32 138, label %114
    i32 139, label %149
    i32 140, label %184
  ]

79:                                               ; preds = %63
  %80 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %81 = load i32, i32* @DAVINCI_MCASP_ACLKXCTL_REG, align 4
  %82 = load i32, i32* @ACLKXE, align 4
  %83 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %80, i32 %81, i32 %82)
  %84 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %85 = load i32, i32* @DAVINCI_MCASP_TXFMCTL_REG, align 4
  %86 = load i32, i32* @AFSXE, align 4
  %87 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %84, i32 %85, i32 %86)
  %88 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %89 = load i32, i32* @DAVINCI_MCASP_ACLKRCTL_REG, align 4
  %90 = load i32, i32* @ACLKRE, align 4
  %91 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %88, i32 %89, i32 %90)
  %92 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %93 = load i32, i32* @DAVINCI_MCASP_RXFMCTL_REG, align 4
  %94 = load i32, i32* @AFSRE, align 4
  %95 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %92, i32 %93, i32 %94)
  %96 = load i32, i32* @PIN_BIT_ACLKX, align 4
  %97 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %98 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %97, i32 0, i32 3
  %99 = call i32 @set_bit(i32 %96, i32* %98)
  %100 = load i32, i32* @PIN_BIT_ACLKR, align 4
  %101 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %102 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %101, i32 0, i32 3
  %103 = call i32 @set_bit(i32 %100, i32* %102)
  %104 = load i32, i32* @PIN_BIT_AFSX, align 4
  %105 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %106 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %105, i32 0, i32 3
  %107 = call i32 @set_bit(i32 %104, i32* %106)
  %108 = load i32, i32* @PIN_BIT_AFSR, align 4
  %109 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %110 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %109, i32 0, i32 3
  %111 = call i32 @set_bit(i32 %108, i32* %110)
  %112 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %113 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %112, i32 0, i32 0
  store i32 1, i32* %113, align 4
  br label %222

114:                                              ; preds = %63
  %115 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %116 = load i32, i32* @DAVINCI_MCASP_ACLKXCTL_REG, align 4
  %117 = load i32, i32* @ACLKXE, align 4
  %118 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %115, i32 %116, i32 %117)
  %119 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %120 = load i32, i32* @DAVINCI_MCASP_TXFMCTL_REG, align 4
  %121 = load i32, i32* @AFSXE, align 4
  %122 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %119, i32 %120, i32 %121)
  %123 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %124 = load i32, i32* @DAVINCI_MCASP_ACLKRCTL_REG, align 4
  %125 = load i32, i32* @ACLKRE, align 4
  %126 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %123, i32 %124, i32 %125)
  %127 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %128 = load i32, i32* @DAVINCI_MCASP_RXFMCTL_REG, align 4
  %129 = load i32, i32* @AFSRE, align 4
  %130 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %127, i32 %128, i32 %129)
  %131 = load i32, i32* @PIN_BIT_ACLKX, align 4
  %132 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %133 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %132, i32 0, i32 3
  %134 = call i32 @set_bit(i32 %131, i32* %133)
  %135 = load i32, i32* @PIN_BIT_ACLKR, align 4
  %136 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %137 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %136, i32 0, i32 3
  %138 = call i32 @set_bit(i32 %135, i32* %137)
  %139 = load i32, i32* @PIN_BIT_AFSX, align 4
  %140 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %141 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %140, i32 0, i32 3
  %142 = call i32 @clear_bit(i32 %139, i32* %141)
  %143 = load i32, i32* @PIN_BIT_AFSR, align 4
  %144 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %145 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %144, i32 0, i32 3
  %146 = call i32 @clear_bit(i32 %143, i32* %145)
  %147 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %148 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %147, i32 0, i32 0
  store i32 1, i32* %148, align 4
  br label %222

149:                                              ; preds = %63
  %150 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %151 = load i32, i32* @DAVINCI_MCASP_ACLKXCTL_REG, align 4
  %152 = load i32, i32* @ACLKXE, align 4
  %153 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %150, i32 %151, i32 %152)
  %154 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %155 = load i32, i32* @DAVINCI_MCASP_TXFMCTL_REG, align 4
  %156 = load i32, i32* @AFSXE, align 4
  %157 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %154, i32 %155, i32 %156)
  %158 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %159 = load i32, i32* @DAVINCI_MCASP_ACLKRCTL_REG, align 4
  %160 = load i32, i32* @ACLKRE, align 4
  %161 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %158, i32 %159, i32 %160)
  %162 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %163 = load i32, i32* @DAVINCI_MCASP_RXFMCTL_REG, align 4
  %164 = load i32, i32* @AFSRE, align 4
  %165 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %162, i32 %163, i32 %164)
  %166 = load i32, i32* @PIN_BIT_ACLKX, align 4
  %167 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %168 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %167, i32 0, i32 3
  %169 = call i32 @clear_bit(i32 %166, i32* %168)
  %170 = load i32, i32* @PIN_BIT_ACLKR, align 4
  %171 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %172 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %171, i32 0, i32 3
  %173 = call i32 @clear_bit(i32 %170, i32* %172)
  %174 = load i32, i32* @PIN_BIT_AFSX, align 4
  %175 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %176 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %175, i32 0, i32 3
  %177 = call i32 @set_bit(i32 %174, i32* %176)
  %178 = load i32, i32* @PIN_BIT_AFSR, align 4
  %179 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %180 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %179, i32 0, i32 3
  %181 = call i32 @set_bit(i32 %178, i32* %180)
  %182 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %183 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %182, i32 0, i32 0
  store i32 0, i32* %183, align 4
  br label %222

184:                                              ; preds = %63
  %185 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %186 = load i32, i32* @DAVINCI_MCASP_ACLKXCTL_REG, align 4
  %187 = load i32, i32* @ACLKXE, align 4
  %188 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %185, i32 %186, i32 %187)
  %189 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %190 = load i32, i32* @DAVINCI_MCASP_TXFMCTL_REG, align 4
  %191 = load i32, i32* @AFSXE, align 4
  %192 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %189, i32 %190, i32 %191)
  %193 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %194 = load i32, i32* @DAVINCI_MCASP_ACLKRCTL_REG, align 4
  %195 = load i32, i32* @ACLKRE, align 4
  %196 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %193, i32 %194, i32 %195)
  %197 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %198 = load i32, i32* @DAVINCI_MCASP_RXFMCTL_REG, align 4
  %199 = load i32, i32* @AFSRE, align 4
  %200 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %197, i32 %198, i32 %199)
  %201 = load i32, i32* @PIN_BIT_ACLKX, align 4
  %202 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %203 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %202, i32 0, i32 3
  %204 = call i32 @clear_bit(i32 %201, i32* %203)
  %205 = load i32, i32* @PIN_BIT_ACLKR, align 4
  %206 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %207 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %206, i32 0, i32 3
  %208 = call i32 @clear_bit(i32 %205, i32* %207)
  %209 = load i32, i32* @PIN_BIT_AFSX, align 4
  %210 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %211 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %210, i32 0, i32 3
  %212 = call i32 @clear_bit(i32 %209, i32* %211)
  %213 = load i32, i32* @PIN_BIT_AFSR, align 4
  %214 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %215 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %214, i32 0, i32 3
  %216 = call i32 @clear_bit(i32 %213, i32* %215)
  %217 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %218 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %217, i32 0, i32 0
  store i32 0, i32* %218, align 4
  br label %222

219:                                              ; preds = %63
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %7, align 4
  br label %298

222:                                              ; preds = %184, %149, %114, %79
  %223 = load i32, i32* %5, align 4
  %224 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %225 = and i32 %223, %224
  switch i32 %225, label %262 [
    i32 132, label %226
    i32 130, label %235
    i32 133, label %244
    i32 129, label %253
  ]

226:                                              ; preds = %222
  %227 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %228 = load i32, i32* @DAVINCI_MCASP_ACLKXCTL_REG, align 4
  %229 = load i32, i32* @ACLKXPOL, align 4
  %230 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %227, i32 %228, i32 %229)
  %231 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %232 = load i32, i32* @DAVINCI_MCASP_ACLKRCTL_REG, align 4
  %233 = load i32, i32* @ACLKRPOL, align 4
  %234 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %231, i32 %232, i32 %233)
  store i32 1, i32* %9, align 4
  br label %265

235:                                              ; preds = %222
  %236 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %237 = load i32, i32* @DAVINCI_MCASP_ACLKXCTL_REG, align 4
  %238 = load i32, i32* @ACLKXPOL, align 4
  %239 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %236, i32 %237, i32 %238)
  %240 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %241 = load i32, i32* @DAVINCI_MCASP_ACLKRCTL_REG, align 4
  %242 = load i32, i32* @ACLKRPOL, align 4
  %243 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %240, i32 %241, i32 %242)
  store i32 0, i32* %9, align 4
  br label %265

244:                                              ; preds = %222
  %245 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %246 = load i32, i32* @DAVINCI_MCASP_ACLKXCTL_REG, align 4
  %247 = load i32, i32* @ACLKXPOL, align 4
  %248 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %245, i32 %246, i32 %247)
  %249 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %250 = load i32, i32* @DAVINCI_MCASP_ACLKRCTL_REG, align 4
  %251 = load i32, i32* @ACLKRPOL, align 4
  %252 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %249, i32 %250, i32 %251)
  store i32 0, i32* %9, align 4
  br label %265

253:                                              ; preds = %222
  %254 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %255 = load i32, i32* @DAVINCI_MCASP_ACLKXCTL_REG, align 4
  %256 = load i32, i32* @ACLKXPOL, align 4
  %257 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %254, i32 %255, i32 %256)
  %258 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %259 = load i32, i32* @DAVINCI_MCASP_ACLKRCTL_REG, align 4
  %260 = load i32, i32* @ACLKRPOL, align 4
  %261 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %258, i32 %259, i32 %260)
  store i32 1, i32* %9, align 4
  br label %265

262:                                              ; preds = %222
  %263 = load i32, i32* @EINVAL, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %7, align 4
  br label %298

265:                                              ; preds = %253, %244, %235, %226
  %266 = load i32, i32* %10, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %265
  %269 = load i32, i32* %9, align 4
  %270 = icmp ne i32 %269, 0
  %271 = xor i1 %270, true
  %272 = zext i1 %271 to i32
  store i32 %272, i32* %9, align 4
  br label %273

273:                                              ; preds = %268, %265
  %274 = load i32, i32* %9, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %273
  %277 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %278 = load i32, i32* @DAVINCI_MCASP_TXFMCTL_REG, align 4
  %279 = load i32, i32* @FSXPOL, align 4
  %280 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %277, i32 %278, i32 %279)
  %281 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %282 = load i32, i32* @DAVINCI_MCASP_RXFMCTL_REG, align 4
  %283 = load i32, i32* @FSRPOL, align 4
  %284 = call i32 @mcasp_clr_bits(%struct.davinci_mcasp* %281, i32 %282, i32 %283)
  br label %294

285:                                              ; preds = %273
  %286 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %287 = load i32, i32* @DAVINCI_MCASP_TXFMCTL_REG, align 4
  %288 = load i32, i32* @FSXPOL, align 4
  %289 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %286, i32 %287, i32 %288)
  %290 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %291 = load i32, i32* @DAVINCI_MCASP_RXFMCTL_REG, align 4
  %292 = load i32, i32* @FSRPOL, align 4
  %293 = call i32 @mcasp_set_bits(%struct.davinci_mcasp* %290, i32 %291, i32 %292)
  br label %294

294:                                              ; preds = %285, %276
  %295 = load i32, i32* %5, align 4
  %296 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %297 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 4
  br label %298

298:                                              ; preds = %294, %262, %219, %60
  %299 = load %struct.davinci_mcasp*, %struct.davinci_mcasp** %6, align 8
  %300 = getelementptr inbounds %struct.davinci_mcasp, %struct.davinci_mcasp* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @pm_runtime_put(i32 %301)
  %303 = load i32, i32* %7, align 4
  store i32 %303, i32* %3, align 4
  br label %304

304:                                              ; preds = %298, %15
  %305 = load i32, i32* %3, align 4
  ret i32 %305
}

declare dso_local %struct.davinci_mcasp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mcasp_clr_bits(%struct.davinci_mcasp*, i32, i32) #1

declare dso_local i32 @mcasp_set_bits(%struct.davinci_mcasp*, i32, i32) #1

declare dso_local i32 @mcasp_mod_bits(%struct.davinci_mcasp*, i32, i32, i32) #1

declare dso_local i32 @FSXDLY(i32) #1

declare dso_local i32 @FSRDLY(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
